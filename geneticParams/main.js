const maxApi = require("max-api");

//----ALGORITHM INPUTS
const inputs = {
  target: [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8],
  populationSize: 4,
  mutationChance: 0.2,
  breedingPopulationSize: 2,
  iterationsPerCycle: 1,
  numParams: 8
};

//-----GENETIC ALGORITHM FUNCTIONS
const toScore = (steps, target) =>
  target.reduce((acc, v, i) => acc + Math.abs(v - steps[i]), 0);

const toss = _ => Math.round(Math.random());

const range = to => [...Array(to).keys()];

const cross = ([g1, g2]) => g1.map((v, i) => (toss() ? v : g2[i]));

const negate = v => Math.max(Math.min((1 - v + Math.random()*0.1-0.05), 1), 0);

const mutateEvery = (g, mutationChance) =>
  g.map(v => (Math.random() <= mutationChance ? negate(v) : v));

const mutateOne = (g, mutationChance) => {
  if (Math.random() <= mutationChance) {
    const index = randInt(g.length);
    g[index] = negate(g[index]);
  }
  return g;
};

const mutate = mutateEvery;

const randInt = max => Math.floor(Math.random() * max);

const removeIndex = (arr, index) => [
  ...arr.slice(0, index),
  ...arr.slice(index + 1)
];

const randomPairFrom = arrs => {
  const i1 = randInt(arrs.length);
  const i2 = randInt(arrs.length - 1);
  return [arrs[i1], removeIndex(arrs, i1)[i2]];
};

const selectClosest = ({ population, target, breedingPopulationSize }) => {
  population.sort((a, b) => toScore(a, target) - toScore(b, target));
  return population.slice(0, breedingPopulationSize);
};

const iterate = ({
  population,
  populationSize,
  mutationChance,
  breedingPopulationSize,
  target
}) => {
  const parents = selectClosest({
    population,
    target,
    breedingPopulationSize
  });
  return range(populationSize).map(_ =>
    mutate(cross(randomPairFrom(parents)), mutationChance)
  );
};

const initPopulation = ({ target, populationSize }) =>
  range(populationSize).map(_ => range(target.length).map(Math.random));

let population = initPopulation(inputs);

//---MAX INPUT HANDLERS
[
  { name: "mutationChance" },
  { name: "populationSize", type: "int" },
  { name: "breedingPopulationSize", type: "int" },
  { name: "iterationsPerCycle", type: "int" }
].forEach(({ name, scale, min, type }) =>
  maxApi.addHandler(name, val => {
    inputs[name] = type == "int" ? Math.floor(val) : val;
  })
);

// maxApi.addHandler(
//   "targetChange",
//   (index, val) => (inputs.target[index - 1] = val)
// );

maxApi.addHandler("targetInit", (...steps) => {
  maxApi.post("init " + steps);
    inputs.target = steps;
});

maxApi.addHandler("numParams", numParams => {
  const increased = numParams > inputs.numParams;
  population.forEach(p => {
    p.length = numParams;
    if (increased) {
      for (let i = inputs.numParams; i < numParams; i++) {
        p[i] = Math.random();
      }
    }
  });
  inputs.numParams = numParams;
});

maxApi.addHandler("randomizePopulation", _ => {
  population = initPopulation(inputs);
  const { target, breedingPopulationSize } = inputs;
  const closest = selectClosest({
    population,
    target,
    breedingPopulationSize
  });
  maxApi.outlet(closest[0]);
});

maxApi.addHandler("generate", () => {
  const {
    mutationChance,
    populationSize,
    breedingPopulationSize,
    target,
    iterationsPerCycle
  } = inputs;
  population = range(iterationsPerCycle).reduce(
    population =>
      iterate({
        population,
        populationSize,
        mutationChance,
        breedingPopulationSize,
        target
      }),
    population
  );

  const closest = selectClosest({
    population,
    target,
    breedingPopulationSize
  });
  maxApi.outlet(closest[0]);
});
