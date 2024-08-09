{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 794.0, 354.0, 769.0, 563.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 253.0, 241.333340525627136, 47.0, 22.0 ],
					"text" : "unpack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 253.0, 202.999998390674591, 92.5, 22.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "" ],
					"patching_rect" : [ 167.0, 164.0, 148.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "amxd~",
							"parameter_shortname" : "amxd~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"patchername" : "GeneticSequencer.amxd",
						"patchername_fallback" : "~/Downloads/genetic-sequencer-master/GeneticSequencer.amxd"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "max~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"name" : "GeneticSequencer.amxd",
							"origname" : "~/Downloads/genetic-sequencer-master/GeneticSequencer.amxd",
							"valuedictionary" : 							{
								"parameter_values" : 								{
									"breeding population size" : 3.0,
									"dur div" : 2.0,
									"iterations per cycle" : 1.0,
									"live.button" : 0.0,
									"mutation chance" : 0.251968503937008,
									"note" : 14.0,
									"population size" : 265.000000000000057,
									"sequence length" : 8.0,
									"blob" : 									{
										"live.step" : [ 1, 8, 0, 1, 12, 0, 16, 59.0, 80.0, 0, 0, 60, 101, 4, 1, 1, 63, 83, 4, 1, 1, 67, 57, 4, 1, 1, 74, 78, 4, 1, 1, 70, 35, 4, 1, 1, 67, 75, 4, 1, 1, 60, 114, 4, 1, 1, 70, 75, 4, 1, 1 ],
										"live.step[1]" : [ 1, 8, 0, 1, 12, 0, 16, 59.0, 80.0, 0, 0, 60, 101, 4, 1, 1, 63, 83, 4, 1, 1, 67, 57, 4, 1, 1, 74, 78, 4, 1, 1, 70, 35, 4, 1, 1, 67, 75, 4, 1, 1, 60, 114, 4, 1, 1, 70, 75, 4, 1, 1 ]
									}

								}

							}

						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "GeneticSequencer.amxd",
									"origin" : "GeneticSequencer.amxd",
									"type" : "amxd",
									"subtype" : "Undefined",
									"embed" : 0,
									"snapshot" : 									{
										"name" : "GeneticSequencer.amxd",
										"origname" : "~/Downloads/genetic-sequencer-master/GeneticSequencer.amxd",
										"valuedictionary" : 										{
											"parameter_values" : 											{
												"breeding population size" : 3.0,
												"dur div" : 2.0,
												"iterations per cycle" : 1.0,
												"live.button" : 0.0,
												"mutation chance" : 0.251968503937008,
												"note" : 14.0,
												"population size" : 265.000000000000057,
												"sequence length" : 8.0,
												"blob" : 												{
													"live.step" : [ 1, 8, 0, 1, 12, 0, 16, 59.0, 80.0, 0, 0, 60, 101, 4, 1, 1, 63, 83, 4, 1, 1, 67, 57, 4, 1, 1, 74, 78, 4, 1, 1, 70, 35, 4, 1, 1, 67, 75, 4, 1, 1, 60, 114, 4, 1, 1, 70, 75, 4, 1, 1 ],
													"live.step[1]" : [ 1, 8, 0, 1, 12, 0, 16, 59.0, 80.0, 0, 0, 60, 101, 4, 1, 1, 63, 83, 4, 1, 1, 67, 57, 4, 1, 1, 74, 78, 4, 1, 1, 70, 35, 4, 1, 1, 67, 75, 4, 1, 1, 60, 114, 4, 1, 1, 70, 75, 4, 1, 1 ]
												}

											}

										}

									}
,
									"fileref" : 									{
										"name" : "GeneticSequencer.amxd",
										"filename" : "GeneticSequencer.amxd.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "46878adf172f584358dddaffb884d8f6"
									}

								}
 ]
						}

					}
,
					"text" : "amxd~ GeneticSequencer",
					"varname" : "amxd~",
					"viewvisibility" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1" : [ "amxd~", "amxd~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "GeneticSequencer.amxd",
				"bootpath" : "~/Downloads/genetic-sequencer-master",
				"patcherrelativepath" : ".",
				"type" : "amxd",
				"implicit" : 1
			}
, 			{
				"name" : "GeneticSequencer.amxd.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "main.js",
				"bootpath" : "~/Downloads/genetic-sequencer-master",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
