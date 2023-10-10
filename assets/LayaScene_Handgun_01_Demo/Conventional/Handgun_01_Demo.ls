{
  "_$ver": 1,
  "_$id": "wkzx47a7",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$child": [
    {
      "_$id": "z4xlxw9t",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome"
      },
      "ambientMode": 0,
      "ambientColor": {
        "_$type": "Color",
        "r": 0.7205882,
        "g": 0.7205882,
        "b": 0.7205882,
        "a": null
      },
      "fogStart": 0,
      "fogEnd": 300,
      "fogDensity": 0.01,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5,
        "a": null
      },
      "lightmaps": [],
      "_$child": [
        {
          "_$id": "gbxz82v4",
          "_$type": "Sprite3D",
          "name": "Assault_Rifle_01_FPSController",
          "layer": 3,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 1
            }
          },
          "_$comp": [
            {
              "_$type": "CharacterController",
              "colliderShape": {
                "_$type": "CapsuleColliderShape",
                "localOffset": {
                  "_$type": "Vector3",
                  "y": -0.55,
                  "z": -0.12
                },
                "radius": 0.25,
                "length": 1.3
              },
              "gravity": {
                "_$type": "Vector3",
                "y": -20
              }
            },
            {
              "_$type": "14128449-0ed8-49ec-a10b-49162007e0da",
              "scriptPath": "../src/Scripts/Player/FpsController.ts",
              "rootNode": {
                "_$ref": "ndmpnbsu"
              },
              "camera": {
                "_$ref": "igkmbqwz"
              },
              "scene": {
                "_$ref": "z4xlxw9t"
              },
              "walkSpeed": 7,
              "runSpeed": 12,
              "jumpHeight": 8,
              "weaponAnimator": {
                "_$ref": "s6am86mn",
                "_$type": "Animator"
              },
              "audioManager": {
                "_$ref": "b8pgmgox",
                "_$type": "149d2624-ef35-4137-a4e0-59bd868b4d00"
              },
              "mainCamera": {
                "_$ref": "igkmbqwz"
              }
            }
          ],
          "_$child": [
            {
              "_$id": "ndmpnbsu",
              "_$type": "Sprite3D",
              "name": "Assault_Rifle_01_Arms",
              "_$child": [
                {
                  "_$id": "s6am86mn",
                  "_$type": "Sprite3D",
                  "name": "arms_assault_rifle_01",
                  "layer": 8,
                  "transform": {
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "Animator",
                      "controller": {
                        "_$uuid": "c76d577b-62da-4708-834a-b20390da5c9c",
                        "_$type": "AnimationController"
                      },
                      "cullingMode": 0,
                      "controllerLayers": [
                        {
                          "_$type": "AnimatorControllerLayer",
                          "name": "Base Layer",
                          "states": [
                            {
                              "_$type": "AnimatorState",
                              "name": "run01",
                              "_isLooping": 1,
                              "clipStart": 0,
                              "clip": {
                                "_$uuid": "a8b109e1-da05-4445-a74b-838c8b3a1ab6",
                                "_$type": "AnimationClip"
                              },
                              "soloTransitions": []
                            },
                            {
                              "_$type": "AnimatorState",
                              "name": "walk01",
                              "_isLooping": 1,
                              "clipStart": 0,
                              "clip": {
                                "_$uuid": "d43596a1-310c-4ac6-acce-c37c39714f70",
                                "_$type": "AnimationClip"
                              },
                              "soloTransitions": []
                            },
                            {
                              "_$type": "AnimatorState",
                              "name": "idle01 0",
                              "_isLooping": 1,
                              "clipStart": 0,
                              "clip": {
                                "_$uuid": "1f46c8e7-62ce-4084-bf51-780b2e0fcdbe",
                                "_$type": "AnimationClip"
                              },
                              "soloTransitions": []
                            },
                            {
                              "_$type": "AnimatorState",
                              "name": "fire01",
                              "_isLooping": 1,
                              "speed": 15,
                              "clipStart": 0,
                              "clip": {
                                "_$uuid": "e6e111f9-79f3-4290-9933-31c312c09136",
                                "_$type": "AnimationClip"
                              },
                              "soloTransitions": []
                            },
                            {
                              "_$type": "AnimatorState",
                              "name": "TakeOut",
                              "_isLooping": 2,
                              "clipStart": 0,
                              "clip": {
                                "_$uuid": "8b1d6fbe-6710-4e8f-88c6-7903573254f7",
                                "_$type": "AnimationClip"
                              },
                              "soloTransitions": []
                            }
                          ],
                          "defaultStateName": "TakeOut"
                        },
                        {
                          "_$type": "AnimatorControllerLayer",
                          "name": "Aim Layer",
                          "playOnWake": false,
                          "defaultWeight": 0,
                          "states": [
                            {
                              "_$type": "AnimatorState",
                              "name": "aim_fire_pose01",
                              "clipStart": 0,
                              "clip": {
                                "_$uuid": "9d5730ef-8662-4ebc-b4fb-03f85ceec8c9",
                                "_$type": "AnimationClip"
                              },
                              "soloTransitions": []
                            },
                            {
                              "_$type": "AnimatorState",
                              "name": "aim_fire01",
                              "_isLooping": 1,
                              "speed": 25,
                              "clipStart": 0,
                              "clip": {
                                "_$uuid": "00abf294-7918-4575-9202-65b9b4376a82",
                                "_$type": "AnimationClip"
                              },
                              "soloTransitions": []
                            },
                            {
                              "_$type": "AnimatorState",
                              "name": "aim_in01",
                              "_isLooping": 2,
                              "clipStart": 0,
                              "clip": {
                                "_$uuid": "d96a2e7e-d505-4658-80aa-74fcea0e5c0c",
                                "_$type": "AnimationClip"
                              },
                              "soloTransitions": []
                            },
                            {
                              "_$type": "AnimatorState",
                              "name": "aim_out01",
                              "_isLooping": 2,
                              "clipStart": 0,
                              "clip": {
                                "_$uuid": "c1828ab0-af6b-45ac-af1b-82d612a26306",
                                "_$type": "AnimationClip"
                              },
                              "soloTransitions": []
                            }
                          ],
                          "defaultStateName": "aim_in01"
                        },
                        {
                          "_$type": "AnimatorControllerLayer",
                          "name": "Reload Layer",
                          "playOnWake": false,
                          "defaultWeight": 0,
                          "states": [
                            {
                              "_$type": "AnimatorState",
                              "name": "New State",
                              "clipStart": 0,
                              "clip": {
                                "_$uuid": "1f46c8e7-62ce-4084-bf51-780b2e0fcdbe",
                                "_$type": "AnimationClip"
                              },
                              "soloTransitions": []
                            },
                            {
                              "_$type": "AnimatorState",
                              "name": "reload_left01",
                              "_isLooping": 2,
                              "clipStart": 0,
                              "clip": {
                                "_$uuid": "ff243c54-fd0f-498e-9a23-703d16186694",
                                "_$type": "AnimationClip"
                              },
                              "soloTransitions": []
                            },
                            {
                              "_$type": "AnimatorState",
                              "name": "reload_out_of01",
                              "_isLooping": 2,
                              "clipStart": 0,
                              "clip": {
                                "_$uuid": "13183817-3129-478f-b045-2196888260f3",
                                "_$type": "AnimationClip"
                              },
                              "soloTransitions": []
                            }
                          ],
                          "defaultStateName": "reload_left01"
                        }
                      ]
                    },
                    {
                      "_$type": "38dbe5a9-836f-45b8-bbe6-41609701c3c9",
                      "scriptPath": "../src/Scripts/Weapon/AssaultRifle.ts",
                      "muzzlePoint": {
                        "_$ref": "3ffyty4u"
                      },
                      "muzzlePoint2": {
                        "_$ref": "g1ds5g5b"
                      },
                      "bulletPrefPath": "resources/Prefabs/Bullet.lh",
                      "ammoInMag": 30,
                      "ammoMaxCarried": 60,
                      "fireRate": 20,
                      "shootPath": "resources/Audio/Weapon/shoot.wav",
                      "reloadLeftPath": "resources/Audio/Weapon/assault_rifle_01_reload_ammo_left.mp3",
                      "reloadOutOfPath": "resources/Audio/Weapon/assault_rifle_01_reload_out_of_ammo.mp3",
                      "BulletNode": {
                        "_$ref": "bt18zmnx"
                      }
                    }
                  ],
                  "_$child": [
                    {
                      "_$id": "jme97cys",
                      "_$type": "Sprite3D",
                      "name": "Armature",
                      "layer": 8,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "y": -1
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.707106832477501,
                          "w": -0.7071067298955905
                        }
                      },
                      "_$child": [
                        {
                          "_$id": "0la3syc2",
                          "_$type": "Sprite3D",
                          "name": "arm_L",
                          "layer": 8,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.14953544735908508,
                              "y": -0.030273888260126114,
                              "z": 0.8738168478012085
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -0.26957401708647516,
                              "y": -0.21174344145558383,
                              "z": 0.9210770744323588,
                              "w": 0.1846932247472376
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 1.000000238418579,
                              "y": 1.0000003576278687,
                              "z": 1
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "gtasbtc5",
                              "_$type": "Sprite3D",
                              "name": "lower_arm_L",
                              "layer": 8,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 3.725290298461914e-8,
                                  "y": 0.23005476593971252,
                                  "z": -4.470348358154297e-8
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": -0.4433407408127827,
                                  "y": 0.5431405661647105,
                                  "z": 0.45631071118372224,
                                  "w": -0.5479305136427942
                                },
                                "localScale": {
                                  "_$type": "Vector3",
                                  "x": 0.9999998211860657,
                                  "y": 0.9999999403953552,
                                  "z": 0.9999998807907104
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "wv5y0gm3",
                                  "_$type": "Sprite3D",
                                  "name": "hand_L",
                                  "layer": 8,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 2.468004822731018e-8,
                                      "y": 0.23842914402484894,
                                      "z": -5.587935447692871e-8
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 0.07551261612934283,
                                      "y": 0.18868434028249637,
                                      "z": -0.048982478721473856,
                                      "w": -0.9779042802420705
                                    },
                                    "localScale": {
                                      "_$type": "Vector3",
                                      "x": 1.0000004768371582,
                                      "y": 1,
                                      "z": 1
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "jz0q6t7g",
                                      "_$type": "Sprite3D",
                                      "name": "finger_01_L",
                                      "layer": 8,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": -0.006891567260026932,
                                          "y": 0.10633347928524017,
                                          "z": 0.03342483937740326
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 0.030463151885280464,
                                          "y": 0.10546680701138321,
                                          "z": 0.14812633903216085,
                                          "w": -0.9828567223562993
                                        },
                                        "localScale": {
                                          "_$type": "Vector3",
                                          "x": 1,
                                          "y": 1,
                                          "z": 0.9999998211860657
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "r9tzyarh",
                                          "_$type": "Sprite3D",
                                          "name": "finger_02_L",
                                          "layer": 8,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": 9.685754776000977e-8,
                                              "y": 0.02661675214767456
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": 0.6172198690072309,
                                              "y": 0.7865241377402384,
                                              "z": 0.018443582574730458,
                                              "w": 0.008902152350995625
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": 1,
                                              "y": 1.0000001192092896,
                                              "z": 0.9999998807907104
                                            }
                                          },
                                          "_$child": [
                                            {
                                              "_$id": "va6lzzz6",
                                              "_$type": "Sprite3D",
                                              "name": "finger_03_L",
                                              "layer": 8,
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 2.9802322387695312e-8,
                                                  "y": 0.026611603796482086,
                                                  "z": -7.078051567077637e-8
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": 0.021875141998612152,
                                                  "y": 0.005707426150753444,
                                                  "z": 0.11890660222611954,
                                                  "w": -0.9926480360109085
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 0.9999999403953552,
                                                  "y": 1.0000001192092896,
                                                  "z": 0.9999999403953552
                                                }
                                              }
                                            }
                                          ]
                                        }
                                      ]
                                    },
                                    {
                                      "_$id": "lg4modtq",
                                      "_$type": "Sprite3D",
                                      "name": "middle_finger_01_L",
                                      "layer": 8,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": -0.006873797625303268,
                                          "y": 0.1063455194234848,
                                          "z": -0.012148216366767883
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 0.0858028218780688,
                                          "y": 0.07659393529664515,
                                          "z": 0.46581444199936944,
                                          "w": -0.8773757179557399
                                        },
                                        "localScale": {
                                          "_$type": "Vector3",
                                          "x": 0.9999998807907104,
                                          "y": 1,
                                          "z": 0.9999998211860657
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "zjg5gwrv",
                                          "_$type": "Sprite3D",
                                          "name": "middle_finger_02_L",
                                          "layer": 8,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": -2.9802322387695312e-8,
                                              "y": 0.02778874710202217
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": 0.5071145910366966,
                                              "y": 0.8574117428761845,
                                              "z": 0.05043345966137483,
                                              "w": 0.07166840923511646
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": 1.0000001192092896,
                                              "y": 1,
                                              "z": 1.0000001192092896
                                            }
                                          },
                                          "_$child": [
                                            {
                                              "_$id": "xw3ony28",
                                              "_$type": "Sprite3D",
                                              "name": "middle_finger_03_L",
                                              "layer": 8,
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": -5.774199962615967e-8,
                                                  "y": 0.02844642847776413,
                                                  "z": -4.470348358154297e-8
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": 0.09568820618424606,
                                                  "y": 0.041979669470452195,
                                                  "z": 0.24427318125512687,
                                                  "w": -0.9640602094619883
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 1,
                                                  "y": 0.9999999403953552,
                                                  "z": 0.9999998807907104
                                                }
                                              }
                                            }
                                          ]
                                        }
                                      ]
                                    },
                                    {
                                      "_$id": "a5zxyxda",
                                      "_$type": "Sprite3D",
                                      "name": "thumb_01_L",
                                      "layer": 8,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": -0.004092641174793243,
                                          "y": 0.040544167160987854,
                                          "z": 0.03155443072319031
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 0.3367240004269466,
                                          "y": 0.8835611349625195,
                                          "z": 0.28237925054712126,
                                          "w": 0.16185989985374455
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "jvf8bnfq",
                                          "_$type": "Sprite3D",
                                          "name": "thumb_02_L",
                                          "layer": 8,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": 1.4901161193847656e-8,
                                              "y": 0.029144179075956345,
                                              "z": -2.2351741790771484e-8
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": -0.2072746391142393,
                                              "y": -0.5882181970492547,
                                              "z": 0.039077704587078904,
                                              "w": -0.7807109001700894
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": 0.9999999403953552,
                                              "y": 1,
                                              "z": 0.9999998211860657
                                            }
                                          },
                                          "_$child": [
                                            {
                                              "_$id": "fxm1z1gy",
                                              "_$type": "Sprite3D",
                                              "name": "thumb_03_L",
                                              "layer": 8,
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 3.3527612686157227e-8,
                                                  "y": 0.028887782245874405,
                                                  "z": 7.450580596923828e-9
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": 0.1364360988908264,
                                                  "y": -0.002811509391748991,
                                                  "z": 0.06095007974979152,
                                                  "w": -0.988768109372914
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 0.9999999403953552,
                                                  "y": 1,
                                                  "z": 0.9999998807907104
                                                }
                                              }
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        },
                        {
                          "_$id": "80hu4anc",
                          "_$type": "Sprite3D",
                          "name": "arm_R",
                          "layer": 8,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -0.2075539082288742,
                              "y": 0.19551175832748413,
                              "z": 0.9668940901756287
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.2440002125856104,
                              "y": -0.5080790334168782,
                              "z": 0.8176797878194428,
                              "w": -0.11712965743951811
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 1.0000003576278687,
                              "y": 1.000000238418579,
                              "z": 1
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "e1ocuatx",
                              "_$type": "Sprite3D",
                              "name": "lower_arm_R",
                              "layer": 8,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": 7.450580596923828e-9,
                                  "y": 0.2300548255443573,
                                  "z": -2.2351741790771484e-8
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": -0.600617029861708,
                                  "y": -0.3849619306424626,
                                  "z": -0.5893514401087137,
                                  "w": -0.37911525350203634
                                },
                                "localScale": {
                                  "_$type": "Vector3",
                                  "x": 0.9999998807907104,
                                  "y": 1,
                                  "z": 0.9999998807907104
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "acp4jtt1",
                                  "_$type": "Sprite3D",
                                  "name": "hand_R",
                                  "layer": 8,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 1.5133991837501526e-8,
                                      "y": 0.23842908442020416,
                                      "z": 4.7730281949043274e-8
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -0.4026523108856076,
                                      "y": -0.6273540687767564,
                                      "z": 0.09346527065753618,
                                      "w": -0.6599713873408773
                                    },
                                    "localScale": {
                                      "_$type": "Vector3",
                                      "x": 0.9999998807907104,
                                      "y": 0.9999998211860657,
                                      "z": 0.9999997615814209
                                    }
                                  },
                                  "_$child": [
                                    {
                                      "_$id": "enqn9kvk",
                                      "_$type": "Sprite3D",
                                      "name": "finger_01_R",
                                      "layer": 8,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": -0.006891678087413311,
                                          "y": 0.10633325576782227,
                                          "z": -0.0334249846637249
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 0.05655226116207629,
                                          "y": -0.014709475060460296,
                                          "z": -0.10082540376611009,
                                          "w": -0.9931866446224007
                                        },
                                        "localScale": {
                                          "_$type": "Vector3",
                                          "x": 0.9999999403953552,
                                          "y": 1,
                                          "z": 1
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "9cybp4r9",
                                          "_$type": "Sprite3D",
                                          "name": "finger_02_R",
                                          "layer": 8,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": -1.0244548320770264e-8,
                                              "y": 0.026616908609867096,
                                              "z": 5.681067705154419e-8
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": 0.4484048483072493,
                                              "y": 0.893778874816828,
                                              "z": -0.009527967089237322,
                                              "w": -0.0012778062701131589
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": 0.9999997615814209,
                                              "y": 0.9999997615814209,
                                              "z": 0.9999998211860657
                                            }
                                          },
                                          "_$child": [
                                            {
                                              "_$id": "msxbpibf",
                                              "_$type": "Sprite3D",
                                              "name": "finger_03_R",
                                              "layer": 8,
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 1.4901161193847656e-8,
                                                  "y": 0.026611603796482086,
                                                  "z": -5.005858838558197e-8
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": -0.004210436249059689,
                                                  "y": -0.011199450801480682,
                                                  "z": -0.6181428339318233,
                                                  "w": -0.7859747333006781
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 1.000000238418579,
                                                  "y": 1.0000001192092896,
                                                  "z": 0.9999998807907104
                                                }
                                              }
                                            }
                                          ]
                                        }
                                      ]
                                    },
                                    {
                                      "_$id": "22y9mn0q",
                                      "_$type": "Sprite3D",
                                      "name": "middle_finger_01_R",
                                      "layer": 8,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": -0.00687381811439991,
                                          "y": 0.10634546726942062,
                                          "z": 0.01214812882244587
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": -0.0010875245788732077,
                                          "y": -0.01049080137938667,
                                          "z": 0.7487200673810682,
                                          "w": -0.6628023997222681
                                        },
                                        "localScale": {
                                          "_$type": "Vector3",
                                          "x": 1.0000001192092896,
                                          "y": 0.9999999403953552,
                                          "z": 1
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "kpd29177",
                                          "_$type": "Sprite3D",
                                          "name": "middle_finger_02_R",
                                          "layer": 8,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": -3.725290298461914e-9,
                                              "y": 0.027788765728473663,
                                              "z": -4.627509042620659e-8
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": 0.37433740902773693,
                                              "y": 0.9268924506108484,
                                              "z": -0.02457155897084154,
                                              "w": 0.01175277383257316
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": 1,
                                              "y": 0.9999999403953552,
                                              "z": 1.0000001192092896
                                            }
                                          },
                                          "_$child": [
                                            {
                                              "_$id": "qg2hdrjc",
                                              "_$type": "Sprite3D",
                                              "name": "middle_finger_03_R",
                                              "layer": 8,
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "x": 1.0244548320770264e-8,
                                                  "y": 0.028446398675441742,
                                                  "z": -3.6263372749090195e-8
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": -0.027795936990012003,
                                                  "y": -0.011809268150654154,
                                                  "z": -0.3892492516315253,
                                                  "w": -0.9206372505916166
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 0.9999998807907104,
                                                  "y": 1,
                                                  "z": 0.9999998807907104
                                                }
                                              }
                                            }
                                          ]
                                        }
                                      ]
                                    },
                                    {
                                      "_$id": "ettjeenv",
                                      "_$type": "Sprite3D",
                                      "name": "thumb_01_R",
                                      "layer": 8,
                                      "transform": {
                                        "localPosition": {
                                          "_$type": "Vector3",
                                          "x": -0.004092822317034006,
                                          "y": 0.040543943643569946,
                                          "z": -0.03155437111854553
                                        },
                                        "localRotation": {
                                          "_$type": "Quaternion",
                                          "x": 0.6771515104008335,
                                          "y": 0.7130879062402757,
                                          "z": 0.06259536243893618,
                                          "w": -0.17045025824817037
                                        },
                                        "localScale": {
                                          "_$type": "Vector3",
                                          "x": 0.9999998807907104,
                                          "y": 0.9999998807907104,
                                          "z": 1
                                        }
                                      },
                                      "_$child": [
                                        {
                                          "_$id": "d04ho0cn",
                                          "_$type": "Sprite3D",
                                          "name": "thumb_02_R",
                                          "layer": 8,
                                          "transform": {
                                            "localPosition": {
                                              "_$type": "Vector3",
                                              "x": -2.9336661100387573e-8,
                                              "y": 0.0291441660374403,
                                              "z": 1.695007085800171e-7
                                            },
                                            "localRotation": {
                                              "_$type": "Quaternion",
                                              "x": 0.4531319036410008,
                                              "y": 0.8902002191344878,
                                              "z": 0.005975979471599901,
                                              "w": 0.046683352760356914
                                            },
                                            "localScale": {
                                              "_$type": "Vector3",
                                              "x": 1,
                                              "y": 1.0000001192092896,
                                              "z": 1.0000001192092896
                                            }
                                          },
                                          "_$child": [
                                            {
                                              "_$id": "8n3fdc08",
                                              "_$type": "Sprite3D",
                                              "name": "thumb_03_R",
                                              "layer": 8,
                                              "transform": {
                                                "localPosition": {
                                                  "_$type": "Vector3",
                                                  "y": 0.028887677937746048,
                                                  "z": 1.234002411365509e-8
                                                },
                                                "localRotation": {
                                                  "_$type": "Quaternion",
                                                  "x": 0.01895653079073961,
                                                  "y": -0.023350990900801102,
                                                  "z": -0.3584541712936292,
                                                  "w": -0.9330626925595771
                                                },
                                                "localScale": {
                                                  "_$type": "Vector3",
                                                  "x": 0.9999999403953552,
                                                  "y": 0.9999998211860657,
                                                  "z": 1
                                                }
                                              }
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        },
                        {
                          "_$id": "6ywz4miu",
                          "_$type": "Sprite3D",
                          "name": "arm_target_L",
                          "layer": 8,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.4175645411014557,
                              "y": 0.1960938274860382,
                              "z": 0.6438250541687012
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "w": -1
                            }
                          }
                        },
                        {
                          "_$id": "9zx52i6v",
                          "_$type": "Sprite3D",
                          "name": "arm_target_R",
                          "layer": 8,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -0.3180803954601288,
                              "y": 0.1960938423871994,
                              "z": 0.5774469971656799
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "w": -1
                            }
                          }
                        },
                        {
                          "_$id": "6rnzss11",
                          "_$type": "Sprite3D",
                          "name": "camera",
                          "layer": 8,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 3.4671276698649135e-16,
                              "y": 0.17866262793540955,
                              "z": 1.085575819015503
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -0.0034024371795658578,
                              "y": 0.002125353838996306,
                              "z": -1.01450684574556e-12,
                              "w": -0.9999919531137729
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 0.9999999403953552,
                              "y": 0.9999999403953552,
                              "z": 1
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "igkmbqwz",
                              "_$type": "Camera",
                              "name": "Main Camera",
                              "layer": 8,
                              "transform": {
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "y": 0.7071067311865435,
                                  "z": 0.7071068311865479,
                                  "w": 0
                                }
                              },
                              "orthographicVerticalSize": 10,
                              "fieldOfView": 55,
                              "nearPlane": 0.01,
                              "farPlane": 1000,
                              "clearFlag": 0,
                              "clearColor": {
                                "_$type": "Color",
                                "r": 0.277952,
                                "g": 0.3214118,
                                "b": 0.3897059,
                                "a": 0.01960784
                              },
                              "enableHDR": true,
                              "msaa": true,
                              "fxaa": true,
                              "cullingMask": 2147483647,
                              "normalizedViewport": {
                                "_$type": "Viewport",
                                "width": 1,
                                "height": 1
                              },
                              "depthTextureFormat": 35
                            }
                          ]
                        },
                        {
                          "_$id": "43zerf11",
                          "_$type": "Sprite3D",
                          "name": "IK_arm_L",
                          "layer": 8,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -0.061162009835243225,
                              "y": -0.32903414964675903,
                              "z": 0.907013475894928
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -0.6031541680910548,
                              "y": 0.09724695440823318,
                              "z": -0.5844028960015664,
                              "w": -0.5340611711383753
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 1.0000001192092896,
                              "y": 1.000000238418579,
                              "z": 1.0000008344650269
                            }
                          }
                        },
                        {
                          "_$id": "c1rfue50",
                          "_$type": "Sprite3D",
                          "name": "IK_arm_R",
                          "layer": 8,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -0.13003528118133545,
                              "y": -0.004800587892532349,
                              "z": 0.8846516609191895
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -0.9981441683346994,
                              "y": -0.049308415089154435,
                              "z": 0.03560067763259692,
                              "w": -0.0030807747283742677
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 0.9999998807907104,
                              "y": 0.9999996423721313,
                              "z": 0.9999995827674866
                            }
                          }
                        },
                        {
                          "_$id": "g9qztxto",
                          "_$type": "Sprite3D",
                          "name": "knife",
                          "layer": 8,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": 0.24400000274181366,
                              "y": 0.2809999883174896,
                              "z": 0.7239999771118164
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "w": -1
                            }
                          }
                        },
                        {
                          "_$id": "ntzplo4d",
                          "_$type": "Sprite3D",
                          "name": "mag",
                          "layer": 8,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -0.10443374514579773,
                              "y": -0.27768686413764954,
                              "z": 0.8514940738677979
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -0.4839091375396824,
                              "y": 0.004569582443593691,
                              "z": -0.0013640325679858715,
                              "w": -0.8751052536335532
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 0.9999999403953552,
                              "y": 1,
                              "z": 1
                            }
                          }
                        },
                        {
                          "_$id": "lzmrj3l1",
                          "_$type": "Sprite3D",
                          "name": "weapon",
                          "layer": 8,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "x": -0.10444458574056625,
                              "y": -0.0935610830783844,
                              "z": 0.908681333065033
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": -0.8739462899617453,
                              "y": 0.0028749418957416555,
                              "z": -0.002711667281593623,
                              "w": -0.4860064442286245
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 0.9999999403953552,
                              "y": 1,
                              "z": 0.9999998211860657
                            }
                          },
                          "_$child": [
                            {
                              "_$id": "fmqqpk2x",
                              "_$type": "Sprite3D",
                              "name": "slider",
                              "layer": 8,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -0.027154328301548958,
                                  "y": 0.1583993285894394,
                                  "z": 0.07854686677455902
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": -0.4750665427614183,
                                  "y": 0.000001950789056185383,
                                  "z": 0.0000018246165614748794,
                                  "w": -0.8799498735391573
                                }
                              }
                            },
                            {
                              "_$id": "l45irb6s",
                              "_$type": "Sprite3D",
                              "name": "Components",
                              "layer": 8,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "x": -0.001214525,
                                  "y": 0.8404894,
                                  "z": -0.5689449
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 0.2862957030626735,
                                  "y": -7.69078508227285e-7,
                                  "z": -2.2980340245834214e-7,
                                  "w": -0.958141310249801
                                }
                              },
                              "_$child": [
                                {
                                  "_$id": "8f8kj0q2",
                                  "_$type": "Sprite3D",
                                  "name": "Casing Spawn Point",
                                  "layer": 8,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": -0.017000004034939148,
                                      "y": -0.92479999551465,
                                      "z": 0.17130000131795742
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -2.9802316775850614e-8,
                                      "y": -1.7177678315087753e-8,
                                      "z": 0.320245170305804,
                                      "w": -0.9473346984544615
                                    }
                                  }
                                },
                                {
                                  "_$id": "8rq3a04i",
                                  "_$type": "PointLight",
                                  "name": "Muzzleflash Light",
                                  "active": false,
                                  "layer": 8,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 0.168,
                                      "y": -0.925,
                                      "z": 0.925
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": -1.1920929999999915e-7,
                                      "y": 7.536442999999947e-14,
                                      "z": -4.521866999999968e-14,
                                      "w": -0.9999999999999929
                                    }
                                  },
                                  "_$comp": [
                                    {
                                      "_$type": "PointLightCom",
                                      "color": {
                                        "_$type": "Color",
                                        "g": 0.7515213,
                                        "b": 0.4852941
                                      },
                                      "intensity": 3,
                                      "lightmapBakedType": 1,
                                      "shadowMode": 0,
                                      "shadowStrength": 1,
                                      "shadowDistance": 50,
                                      "shadowDepthBias": 1,
                                      "shadowNormalBias": 1,
                                      "shadowNearPlane": 0.1,
                                      "range": 5
                                    }
                                  ]
                                },
                                {
                                  "_$id": "3ffyty4u",
                                  "_$type": "Sprite3D",
                                  "name": "Bullet Spawn Point",
                                  "layer": 8,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 0.003116089617833495,
                                      "y": -0.9431268572807312,
                                      "z": 0.6493276953697205
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "x": 2.2823901102420057e-10,
                                      "y": -1,
                                      "z": -4.760570826434218e-10,
                                      "w": 2.374185904045158e-10
                                    }
                                  }
                                },
                                {
                                  "_$id": "g1ds5g5b",
                                  "_$type": "Sprite3D",
                                  "name": "Bullet Spawn Point 2",
                                  "layer": 8,
                                  "transform": {
                                    "localPosition": {
                                      "_$type": "Vector3",
                                      "x": 0.0025141610570720424,
                                      "y": -0.90195,
                                      "z": 0.6503960540418773
                                    },
                                    "localRotation": {
                                      "_$type": "Quaternion",
                                      "y": 1,
                                      "w": 6.123233995736766e-17
                                    }
                                  }
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    },
                    {
                      "_$id": "i1vv47dy",
                      "_$type": "Sprite3D",
                      "name": "arms",
                      "layer": 8,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "y": -0.9999999
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.7071068311865479,
                          "w": -0.7071067311865435
                        }
                      },
                      "_$comp": [
                        {
                          "_$type": "MeshFilter",
                          "sharedMesh": {
                            "_$uuid": "9ea770c3-c0c8-435e-9652-fb3591c89e8d",
                            "_$type": "Mesh"
                          }
                        },
                        {
                          "_$type": "SkinnedMeshRenderer",
                          "receiveShadow": true,
                          "castShadow": true,
                          "sharedMaterials": [
                            {
                              "_$uuid": "a1b38348-f02c-4da2-a12c-1ccfc4317ac1",
                              "_$type": "Material"
                            }
                          ],
                          "_bones": [
                            {
                              "_$ref": "0la3syc2"
                            },
                            {
                              "_$ref": "gtasbtc5"
                            },
                            {
                              "_$ref": "wv5y0gm3"
                            },
                            {
                              "_$ref": "jz0q6t7g"
                            },
                            {
                              "_$ref": "r9tzyarh"
                            },
                            {
                              "_$ref": "va6lzzz6"
                            },
                            {
                              "_$ref": "lg4modtq"
                            },
                            {
                              "_$ref": "zjg5gwrv"
                            },
                            {
                              "_$ref": "xw3ony28"
                            },
                            {
                              "_$ref": "a5zxyxda"
                            },
                            {
                              "_$ref": "jvf8bnfq"
                            },
                            {
                              "_$ref": "fxm1z1gy"
                            },
                            {
                              "_$ref": "80hu4anc"
                            },
                            {
                              "_$ref": "e1ocuatx"
                            },
                            {
                              "_$ref": "acp4jtt1"
                            },
                            {
                              "_$ref": "enqn9kvk"
                            },
                            {
                              "_$ref": "9cybp4r9"
                            },
                            {
                              "_$ref": "msxbpibf"
                            },
                            {
                              "_$ref": "22y9mn0q"
                            },
                            {
                              "_$ref": "kpd29177"
                            },
                            {
                              "_$ref": "qg2hdrjc"
                            },
                            {
                              "_$ref": "ettjeenv"
                            },
                            {
                              "_$ref": "d04ho0cn"
                            },
                            {
                              "_$ref": "8n3fdc08"
                            },
                            {
                              "_$ref": "9zx52i6v"
                            },
                            {
                              "_$ref": "6ywz4miu"
                            },
                            {
                              "_$ref": "lzmrj3l1"
                            },
                            {
                              "_$ref": "fmqqpk2x"
                            },
                            {
                              "_$ref": "ntzplo4d"
                            },
                            {
                              "_$ref": "43zerf11"
                            },
                            {
                              "_$ref": "c1rfue50"
                            },
                            {
                              "_$ref": "6rnzss11"
                            },
                            {
                              "_$ref": "g9qztxto"
                            }
                          ],
                          "rootBone": {
                            "_$ref": "80hu4anc"
                          },
                          "localBounds": {
                            "_$type": "Bounds",
                            "min": {
                              "_$type": "Vector3",
                              "x": -0.4718108,
                              "y": -0.1675505,
                              "z": -0.2718143
                            },
                            "max": {
                              "_$type": "Vector3",
                              "x": 0.5114027,
                              "y": 0.6846058,
                              "z": 0.7274985
                            }
                          }
                        }
                      ],
                      "_$child": [
                        {
                          "_$id": "mti1ers7",
                          "_$type": "Sprite3D",
                          "name": "assault_rifle_01",
                          "layer": 8,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "y": -0.9999999
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.7071068311865479,
                              "w": -0.7071067311865435
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 0.9999999,
                              "y": 0.9999999,
                              "z": 0.9999999
                            }
                          },
                          "_$comp": [
                            {
                              "_$type": "MeshFilter",
                              "sharedMesh": {
                                "_$uuid": "a3ddf55c-c808-4a6d-9933-bae1e18f5f64",
                                "_$type": "Mesh"
                              }
                            },
                            {
                              "_$type": "SkinnedMeshRenderer",
                              "receiveShadow": true,
                              "castShadow": true,
                              "sharedMaterials": [
                                {
                                  "_$uuid": "4d4def0a-1a7f-42fd-bb70-8257c374ad8c",
                                  "_$type": "Material"
                                }
                              ],
                              "_bones": [
                                {
                                  "_$ref": "0la3syc2"
                                },
                                {
                                  "_$ref": "gtasbtc5"
                                },
                                {
                                  "_$ref": "wv5y0gm3"
                                },
                                {
                                  "_$ref": "jz0q6t7g"
                                },
                                {
                                  "_$ref": "r9tzyarh"
                                },
                                {
                                  "_$ref": "va6lzzz6"
                                },
                                {
                                  "_$ref": "lg4modtq"
                                },
                                {
                                  "_$ref": "zjg5gwrv"
                                },
                                {
                                  "_$ref": "xw3ony28"
                                },
                                {
                                  "_$ref": "a5zxyxda"
                                },
                                {
                                  "_$ref": "jvf8bnfq"
                                },
                                {
                                  "_$ref": "fxm1z1gy"
                                },
                                {
                                  "_$ref": "80hu4anc"
                                },
                                {
                                  "_$ref": "e1ocuatx"
                                },
                                {
                                  "_$ref": "acp4jtt1"
                                },
                                {
                                  "_$ref": "enqn9kvk"
                                },
                                {
                                  "_$ref": "9cybp4r9"
                                },
                                {
                                  "_$ref": "msxbpibf"
                                },
                                {
                                  "_$ref": "22y9mn0q"
                                },
                                {
                                  "_$ref": "kpd29177"
                                },
                                {
                                  "_$ref": "qg2hdrjc"
                                },
                                {
                                  "_$ref": "ettjeenv"
                                },
                                {
                                  "_$ref": "d04ho0cn"
                                },
                                {
                                  "_$ref": "8n3fdc08"
                                },
                                {
                                  "_$ref": "9zx52i6v"
                                },
                                {
                                  "_$ref": "6ywz4miu"
                                },
                                {
                                  "_$ref": "lzmrj3l1"
                                },
                                {
                                  "_$ref": "fmqqpk2x"
                                },
                                {
                                  "_$ref": "ntzplo4d"
                                },
                                {
                                  "_$ref": "43zerf11"
                                },
                                {
                                  "_$ref": "c1rfue50"
                                },
                                {
                                  "_$ref": "6rnzss11"
                                },
                                {
                                  "_$ref": "g9qztxto"
                                }
                              ],
                              "rootBone": {
                                "_$ref": "80hu4anc"
                              },
                              "localBounds": {
                                "_$type": "Bounds",
                                "min": {
                                  "_$type": "Vector3",
                                  "x": -0.2730559,
                                  "y": -0.3771133,
                                  "z": -0.1316746
                                },
                                "max": {
                                  "_$type": "Vector3",
                                  "x": 0.5759246,
                                  "y": 0.8941756,
                                  "z": 0.9291984
                                }
                              }
                            }
                          ],
                          "_$child": [
                            {
                              "_$id": "ztmbunmc",
                              "_$type": "Sprite3D",
                              "name": "assault_rifle_01_iron_sights",
                              "layer": 8,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "y": -0.9999999
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 0.7071068311865479,
                                  "w": -0.7071067311865435
                                },
                                "localScale": {
                                  "_$type": "Vector3",
                                  "x": 0.9999999,
                                  "y": 0.9999999,
                                  "z": 0.9999999
                                }
                              },
                              "_$comp": [
                                {
                                  "_$type": "MeshFilter",
                                  "sharedMesh": {
                                    "_$uuid": "fc6869a7-82fe-46a8-a94b-0366473fced8",
                                    "_$type": "Mesh"
                                  }
                                },
                                {
                                  "_$type": "SkinnedMeshRenderer",
                                  "receiveShadow": true,
                                  "castShadow": true,
                                  "sharedMaterials": [
                                    {
                                      "_$uuid": "4d4def0a-1a7f-42fd-bb70-8257c374ad8c",
                                      "_$type": "Material"
                                    }
                                  ],
                                  "_bones": [
                                    {
                                      "_$ref": "0la3syc2"
                                    },
                                    {
                                      "_$ref": "gtasbtc5"
                                    },
                                    {
                                      "_$ref": "wv5y0gm3"
                                    },
                                    {
                                      "_$ref": "jz0q6t7g"
                                    },
                                    {
                                      "_$ref": "r9tzyarh"
                                    },
                                    {
                                      "_$ref": "va6lzzz6"
                                    },
                                    {
                                      "_$ref": "lg4modtq"
                                    },
                                    {
                                      "_$ref": "zjg5gwrv"
                                    },
                                    {
                                      "_$ref": "xw3ony28"
                                    },
                                    {
                                      "_$ref": "a5zxyxda"
                                    },
                                    {
                                      "_$ref": "jvf8bnfq"
                                    },
                                    {
                                      "_$ref": "fxm1z1gy"
                                    },
                                    {
                                      "_$ref": "80hu4anc"
                                    },
                                    {
                                      "_$ref": "e1ocuatx"
                                    },
                                    {
                                      "_$ref": "acp4jtt1"
                                    },
                                    {
                                      "_$ref": "enqn9kvk"
                                    },
                                    {
                                      "_$ref": "9cybp4r9"
                                    },
                                    {
                                      "_$ref": "msxbpibf"
                                    },
                                    {
                                      "_$ref": "22y9mn0q"
                                    },
                                    {
                                      "_$ref": "kpd29177"
                                    },
                                    {
                                      "_$ref": "qg2hdrjc"
                                    },
                                    {
                                      "_$ref": "ettjeenv"
                                    },
                                    {
                                      "_$ref": "d04ho0cn"
                                    },
                                    {
                                      "_$ref": "8n3fdc08"
                                    },
                                    {
                                      "_$ref": "9zx52i6v"
                                    },
                                    {
                                      "_$ref": "6ywz4miu"
                                    },
                                    {
                                      "_$ref": "lzmrj3l1"
                                    },
                                    {
                                      "_$ref": "fmqqpk2x"
                                    },
                                    {
                                      "_$ref": "ntzplo4d"
                                    },
                                    {
                                      "_$ref": "43zerf11"
                                    },
                                    {
                                      "_$ref": "c1rfue50"
                                    },
                                    {
                                      "_$ref": "6rnzss11"
                                    },
                                    {
                                      "_$ref": "g9qztxto"
                                    }
                                  ],
                                  "rootBone": {
                                    "_$ref": "80hu4anc"
                                  },
                                  "localBounds": {
                                    "_$type": "Bounds",
                                    "min": {
                                      "_$type": "Vector3",
                                      "x": 0.1473067,
                                      "y": 0.05738863,
                                      "z": 0.3687177
                                    },
                                    "max": {
                                      "_$type": "Vector3",
                                      "x": 0.5172961,
                                      "y": 0.6080444,
                                      "z": 0.8283333
                                    }
                                  }
                                }
                              ]
                            },
                            {
                              "_$id": "5cm7qekc",
                              "_$type": "Sprite3D",
                              "name": "big_bullet",
                              "layer": 8,
                              "transform": {
                                "localPosition": {
                                  "_$type": "Vector3",
                                  "y": -0.9999999
                                },
                                "localRotation": {
                                  "_$type": "Quaternion",
                                  "x": 0.7071068311865479,
                                  "w": -0.7071067311865435
                                },
                                "localScale": {
                                  "_$type": "Vector3",
                                  "x": 0.9999999,
                                  "y": 0.9999999,
                                  "z": 0.9999999
                                }
                              },
                              "_$comp": [
                                {
                                  "_$type": "MeshFilter",
                                  "sharedMesh": {
                                    "_$uuid": "66130a7f-d2ed-4b75-8ed5-466e5e098fd7",
                                    "_$type": "Mesh"
                                  }
                                },
                                {
                                  "_$type": "SkinnedMeshRenderer",
                                  "receiveShadow": true,
                                  "castShadow": true,
                                  "sharedMaterials": [
                                    {
                                      "_$uuid": "4d4def0a-1a7f-42fd-bb70-8257c374ad8c",
                                      "_$type": "Material"
                                    }
                                  ],
                                  "_bones": [
                                    {
                                      "_$ref": "0la3syc2"
                                    },
                                    {
                                      "_$ref": "gtasbtc5"
                                    },
                                    {
                                      "_$ref": "wv5y0gm3"
                                    },
                                    {
                                      "_$ref": "jz0q6t7g"
                                    },
                                    {
                                      "_$ref": "r9tzyarh"
                                    },
                                    {
                                      "_$ref": "va6lzzz6"
                                    },
                                    {
                                      "_$ref": "lg4modtq"
                                    },
                                    {
                                      "_$ref": "zjg5gwrv"
                                    },
                                    {
                                      "_$ref": "xw3ony28"
                                    },
                                    {
                                      "_$ref": "a5zxyxda"
                                    },
                                    {
                                      "_$ref": "jvf8bnfq"
                                    },
                                    {
                                      "_$ref": "fxm1z1gy"
                                    },
                                    {
                                      "_$ref": "80hu4anc"
                                    },
                                    {
                                      "_$ref": "e1ocuatx"
                                    },
                                    {
                                      "_$ref": "acp4jtt1"
                                    },
                                    {
                                      "_$ref": "enqn9kvk"
                                    },
                                    {
                                      "_$ref": "9cybp4r9"
                                    },
                                    {
                                      "_$ref": "msxbpibf"
                                    },
                                    {
                                      "_$ref": "22y9mn0q"
                                    },
                                    {
                                      "_$ref": "kpd29177"
                                    },
                                    {
                                      "_$ref": "qg2hdrjc"
                                    },
                                    {
                                      "_$ref": "ettjeenv"
                                    },
                                    {
                                      "_$ref": "d04ho0cn"
                                    },
                                    {
                                      "_$ref": "8n3fdc08"
                                    },
                                    {
                                      "_$ref": "9zx52i6v"
                                    },
                                    {
                                      "_$ref": "6ywz4miu"
                                    },
                                    {
                                      "_$ref": "lzmrj3l1"
                                    },
                                    {
                                      "_$ref": "fmqqpk2x"
                                    },
                                    {
                                      "_$ref": "ntzplo4d"
                                    },
                                    {
                                      "_$ref": "43zerf11"
                                    },
                                    {
                                      "_$ref": "c1rfue50"
                                    },
                                    {
                                      "_$ref": "6rnzss11"
                                    },
                                    {
                                      "_$ref": "g9qztxto"
                                    }
                                  ],
                                  "rootBone": {
                                    "_$ref": "80hu4anc"
                                  },
                                  "localBounds": {
                                    "_$type": "Bounds",
                                    "min": {
                                      "_$type": "Vector3",
                                      "x": 0.1060929,
                                      "y": 0.1921221,
                                      "z": 0.3680669
                                    },
                                    "max": {
                                      "_$type": "Vector3",
                                      "x": 0.1736973,
                                      "y": 0.2868654,
                                      "z": 0.4500573
                                    }
                                  }
                                }
                              ]
                            }
                          ]
                        },
                        {
                          "_$id": "1pt2cv81",
                          "_$type": "Sprite3D",
                          "name": "knife 1",
                          "layer": 8,
                          "transform": {
                            "localPosition": {
                              "_$type": "Vector3",
                              "y": -0.9999999
                            },
                            "localRotation": {
                              "_$type": "Quaternion",
                              "x": 0.7071068311865479,
                              "w": -0.7071067311865435
                            },
                            "localScale": {
                              "_$type": "Vector3",
                              "x": 0.9999999,
                              "y": 0.9999999,
                              "z": 0.9999999
                            }
                          },
                          "_$comp": [
                            {
                              "_$type": "MeshFilter",
                              "sharedMesh": {
                                "_$uuid": "de89c8bb-1740-46e9-8dab-3ee4e5c93514",
                                "_$type": "Mesh"
                              }
                            },
                            {
                              "_$type": "SkinnedMeshRenderer",
                              "receiveShadow": true,
                              "castShadow": true,
                              "sharedMaterials": [
                                {
                                  "_$uuid": "4d4def0a-1a7f-42fd-bb70-8257c374ad8c",
                                  "_$type": "Material"
                                }
                              ],
                              "_bones": [
                                {
                                  "_$ref": "0la3syc2"
                                },
                                {
                                  "_$ref": "gtasbtc5"
                                },
                                {
                                  "_$ref": "wv5y0gm3"
                                },
                                {
                                  "_$ref": "jz0q6t7g"
                                },
                                {
                                  "_$ref": "r9tzyarh"
                                },
                                {
                                  "_$ref": "va6lzzz6"
                                },
                                {
                                  "_$ref": "lg4modtq"
                                },
                                {
                                  "_$ref": "zjg5gwrv"
                                },
                                {
                                  "_$ref": "xw3ony28"
                                },
                                {
                                  "_$ref": "a5zxyxda"
                                },
                                {
                                  "_$ref": "jvf8bnfq"
                                },
                                {
                                  "_$ref": "fxm1z1gy"
                                },
                                {
                                  "_$ref": "80hu4anc"
                                },
                                {
                                  "_$ref": "e1ocuatx"
                                },
                                {
                                  "_$ref": "acp4jtt1"
                                },
                                {
                                  "_$ref": "enqn9kvk"
                                },
                                {
                                  "_$ref": "9cybp4r9"
                                },
                                {
                                  "_$ref": "msxbpibf"
                                },
                                {
                                  "_$ref": "22y9mn0q"
                                },
                                {
                                  "_$ref": "kpd29177"
                                },
                                {
                                  "_$ref": "qg2hdrjc"
                                },
                                {
                                  "_$ref": "ettjeenv"
                                },
                                {
                                  "_$ref": "d04ho0cn"
                                },
                                {
                                  "_$ref": "8n3fdc08"
                                },
                                {
                                  "_$ref": "9zx52i6v"
                                },
                                {
                                  "_$ref": "6ywz4miu"
                                },
                                {
                                  "_$ref": "lzmrj3l1"
                                },
                                {
                                  "_$ref": "fmqqpk2x"
                                },
                                {
                                  "_$ref": "ntzplo4d"
                                },
                                {
                                  "_$ref": "43zerf11"
                                },
                                {
                                  "_$ref": "c1rfue50"
                                },
                                {
                                  "_$ref": "6rnzss11"
                                },
                                {
                                  "_$ref": "g9qztxto"
                                }
                              ],
                              "rootBone": {
                                "_$ref": "80hu4anc"
                              },
                              "localBounds": {
                                "_$type": "Bounds",
                                "min": {
                                  "_$type": "Vector3",
                                  "x": -0.5171021,
                                  "y": 0.1633309,
                                  "z": 0.03444854
                                },
                                "max": {
                                  "_$type": "Vector3",
                                  "x": -0.3115139,
                                  "y": 0.3703254,
                                  "z": 0.2387547
                                }
                              }
                            }
                          ]
                        }
                      ]
                    },
                    {
                      "_$id": "5ugg4ud6",
                      "_$type": "Sprite3D",
                      "name": "Grenade_Spawn_Point",
                      "layer": 8,
                      "transform": {
                        "localPosition": {
                          "_$type": "Vector3",
                          "x": 0.174,
                          "y": 0.24,
                          "z": 0.1519998
                        },
                        "localRotation": {
                          "_$type": "Quaternion",
                          "x": 0.02868566074917278,
                          "y": 0.019282560503595492,
                          "z": 0.0005534543144543614,
                          "w": -0.9994023261010204
                        }
                      }
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "_$id": "zpqdb95i",
          "_$type": "Sprite3D",
          "name": "Lights",
          "transform": {
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$child": [
            {
              "_$id": "d3d6vjbb",
              "_$type": "DirectionLight",
              "name": "Directional light",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1,
                  "y": 6.472959407711134,
                  "z": -1.4107413282114156
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0.7899450202541024,
                  "y": -0.3470635432587665,
                  "z": -0.33888260453580943,
                  "w": -0.3750897789322474
                }
              },
              "_$comp": [
                {
                  "_$type": "DirectionLightCom",
                  "intensity": 0.5,
                  "lightmapBakedType": 1,
                  "shadowMode": 0,
                  "shadowStrength": 1,
                  "shadowDistance": 50,
                  "shadowDepthBias": 1,
                  "shadowNormalBias": 1,
                  "shadowNearPlane": 0.1,
                  "shadowCascadesMode": 0,
                  "strength": null,
                  "angle": null,
                  "maxBounces": null
                }
              ]
            }
          ]
        },
        {
          "_$id": "27w32loa",
          "_$type": "Sprite3D",
          "name": "Targets",
          "transform": {
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$child": [
            {
              "_$id": "pes9y9k8",
              "_$prefab": "5e3e10d6-65ac-4fc8-b80c-79021b69ab93",
              "name": "Target 1",
              "active": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -6.374611591814842,
                  "y": 1.053905492807811,
                  "z": 7.4076106118442056
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0,
                  "y": -0.33291089624790454,
                  "z": 0,
                  "w": 0.9429582891938629
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2.0000000539393588,
                  "y": 2,
                  "z": 2.0000000539393588
                }
              }
            },
            {
              "_$id": "657vui95",
              "_$prefab": "5e3e10d6-65ac-4fc8-b80c-79021b69ab93",
              "name": "Target 2",
              "active": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 4.0960001945495605,
                  "y": -0.9779999852180481,
                  "z": 8.585000038146973
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0,
                  "y": -0.18871748473289768,
                  "z": 0,
                  "w": -0.9820314205543978
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2,
                  "y": 2,
                  "z": 2
                }
              }
            },
            {
              "_$id": "s9bmlhnr",
              "_$prefab": "5e3e10d6-65ac-4fc8-b80c-79021b69ab93",
              "name": "Target 3",
              "active": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 6.293000221252441,
                  "y": 5.514999866485596,
                  "z": 11.118000030517578
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0,
                  "y": -0.267538982551187,
                  "z": 0,
                  "w": -0.9635470371577486
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2,
                  "y": 2,
                  "z": 2
                }
              }
            },
            {
              "_$id": "mthg4o1e",
              "_$prefab": "5e3e10d6-65ac-4fc8-b80c-79021b69ab93",
              "name": "Target 4",
              "active": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -6.730000019073486,
                  "y": 4.0289998054504395,
                  "z": 16.8700008392334
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0,
                  "y": 0.09578705504842942,
                  "z": 0,
                  "w": -0.9954018485441692
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2,
                  "y": 2,
                  "z": 2
                }
              }
            },
            {
              "_$id": "rs25i77s",
              "_$prefab": "5e3e10d6-65ac-4fc8-b80c-79021b69ab93",
              "name": "Target 5",
              "active": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -6.5289998054504395,
                  "y": 0.10000000149011612,
                  "z": 10.930999755859375
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": -0.12449519286824466,
                  "y": 0.1260569959035268,
                  "z": 0.4267503699177232,
                  "w": -0.8868453656143012
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2,
                  "y": 2,
                  "z": 2
                }
              }
            },
            {
              "_$id": "ui832ekx",
              "_$prefab": "5e3e10d6-65ac-4fc8-b80c-79021b69ab93",
              "name": "Target 6",
              "active": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -1.4850000143051147,
                  "y": 10.154000282287598,
                  "z": 13.503000259399414
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 9.348200313938965e-18,
                  "y": -0.15266769684855333,
                  "z": -0.9882775795994556,
                  "w": -6.051454872627834e-17
                },
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2,
                  "y": 2,
                  "z": 2
                }
              }
            },
            {
              "_$id": "fr4ucehv",
              "_$prefab": "5e3e10d6-65ac-4fc8-b80c-79021b69ab93",
              "name": "Target 7",
              "active": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0,
                  "y": -1.0146723985671997,
                  "z": 10.09994125366211
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0,
                  "y": 0,
                  "z": 0,
                  "w": 1
                }
              },
              "_$child": [
                {
                  "_$override": "6nvf8r59",
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3"
                    }
                  },
                  "_$comp": [
                    {
                      "_$override": "64ed3861-0848-415d-8b47-83e775f04508",
                      "isMovable": true,
                      "isMoveLeft": true,
                      "leftPos": 1.35,
                      "rightPos": -1.35
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "gr12x7cc",
              "_$prefab": "5e3e10d6-65ac-4fc8-b80c-79021b69ab93",
              "name": "Target 8",
              "active": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0,
                  "y": -1.0146723985671997,
                  "z": 11.903563133328054
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0,
                  "y": 0,
                  "z": 0,
                  "w": 1
                }
              },
              "_$child": [
                {
                  "_$override": "6nvf8r59",
                  "_$comp": [
                    {
                      "_$override": "64ed3861-0848-415d-8b47-83e775f04508",
                      "isMovable": true,
                      "isMoveLeft": false,
                      "leftPos": 1.35,
                      "rightPos": -1.35
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "jxy0uj7o",
              "_$prefab": "5e3e10d6-65ac-4fc8-b80c-79021b69ab93",
              "name": "Target 9",
              "active": true,
              "layer": 0,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 0,
                  "y": -1.0146723985671997,
                  "z": 13.64785000247812
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "x": 0,
                  "y": 0,
                  "z": 0,
                  "w": 1
                }
              },
              "_$child": [
                {
                  "_$override": "6nvf8r59",
                  "_$comp": [
                    {
                      "_$override": "64ed3861-0848-415d-8b47-83e775f04508",
                      "isMovable": true,
                      "isMoveLeft": true,
                      "leftPos": 1.35,
                      "rightPos": -1.35
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "_$id": "e739hune",
          "_$type": "Sprite3D",
          "name": "Walls",
          "isStatic": true,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 0.04843652,
              "z": 8
            },
            "localRotation": {
              "_$type": "Quaternion",
              "w": -1
            }
          },
          "_$child": [
            {
              "_$id": "qsdnf3f3",
              "_$type": "Sprite3D",
              "name": "Floor",
              "isStatic": true,
              "layer": 1,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": -0.04843652
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "l3lwkq5t",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -1.5,
                      "z": -11
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "vv4zlthp",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (1)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": -1.5,
                      "z": -11
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "nm1ukzuz",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (2)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6,
                      "y": -1.5,
                      "z": -11
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "0kgi96eo",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (3)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -12,
                      "y": -1.5,
                      "z": -11
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "s2rlm4a3",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (4)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": -1.5,
                      "z": -11
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "ly8w15aj",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (5)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -1.5,
                      "z": -5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "kxtfeleb",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (6)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": -1.5,
                      "z": -5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "wcyfmhg2",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (7)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6,
                      "y": -1.5,
                      "z": -5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "7624o5uy",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (8)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -12,
                      "y": -1.5,
                      "z": -5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "ozy5oi3a",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (9)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": -1.5,
                      "z": -5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "4zuetdf7",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (10)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -1.5,
                      "z": 1
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "qggsdvft",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (11)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": -1.5,
                      "z": 1
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "51wm98b1",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (12)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6,
                      "y": -1.5,
                      "z": 1
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "t45wc54d",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (13)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -12,
                      "y": -1.5,
                      "z": 1
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "tcjc7q1v",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (14)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": -1.5,
                      "z": 1
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "v9nu5sau",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (15)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -1.5,
                      "z": 7
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "48t2o3ga",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (16)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": -1.51,
                      "z": 7
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "is1c5ztf",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (17)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6,
                      "y": -1.5,
                      "z": 7
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "hd1pooju",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (18)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -12,
                      "y": -1.5,
                      "z": 7
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "hfyhaka0",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (19)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": -1.5,
                      "z": 7
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "jor6vumy",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (20)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -1.5,
                      "z": 13
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "94828uaw",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (21)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": -1.5,
                      "z": 13
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "qdfo7wkw",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (22)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6,
                      "y": -1.5,
                      "z": 13
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "rxs2nxsw",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (23)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -12,
                      "y": -1.5,
                      "z": 13
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "3t87jmkp",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (24)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": -1.5,
                      "z": 13
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "6m58r7wj",
              "_$type": "Sprite3D",
              "name": "Left Wall",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": -7,
                  "y": -0.04843652,
                  "z": -5
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "76nf79a4",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (25)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.5,
                      "y": 2,
                      "z": -6
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "tzqljdni",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (26)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.5,
                      "y": 2
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "cz5lb004",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (27)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.5,
                      "y": 2,
                      "z": 6
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "1q8b5qdi",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (28)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.5,
                      "y": 2,
                      "z": 12
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "3ce031la",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (29)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.5,
                      "y": 2,
                      "z": 18
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "ohd1xxuj",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (30)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.5,
                      "y": 8,
                      "z": -6
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "ugn0xuhf",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (31)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.5,
                      "y": 8
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "mbi4burg",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (32)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.5,
                      "y": 8,
                      "z": 6
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "s75roced",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (33)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.5,
                      "y": 8,
                      "z": 12
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "srajkl5d",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (34)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 15.5,
                      "y": 8,
                      "z": 18
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "6qzr0z4s",
              "_$type": "Sprite3D",
              "name": "Right Wall",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "x": 7,
                  "y": -0.04843652,
                  "z": -5
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "9cg9rk6d",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (25)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.5,
                      "y": 2,
                      "z": -6
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "joh2qi03",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (26)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.5,
                      "y": 2
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "l14fkewq",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (27)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.5,
                      "y": 2,
                      "z": 6
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "3ah5dpm3",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (28)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.5,
                      "y": 2,
                      "z": 12
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "hf8pp897",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (29)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.5,
                      "y": 2,
                      "z": 18
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "0fv52yx3",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (30)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.5,
                      "y": 8,
                      "z": -6
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "cls1cb21",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (31)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.5,
                      "y": 8
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "7recfwjz",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (32)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.5,
                      "y": 8,
                      "z": 6
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "n49w9unc",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (33)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.5,
                      "y": 8,
                      "z": 12
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "eewz6h0f",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (34)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -15.5,
                      "y": 8,
                      "z": 18
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "z": -0.7071067811865476,
                      "w": -0.7071067811865476
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "4o5c3iea",
              "_$type": "Sprite3D",
              "name": "Back Wall",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": -0.04843652,
                  "z": -5
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "yu82n1hm",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (25)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 2,
                      "z": -9.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "5wi0fswb",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (26)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 2,
                      "z": -9.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000004,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "l2q12awe",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (27)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 2,
                      "z": -9.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000014,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "685w79yg",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (28)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6,
                      "y": 2,
                      "z": -9.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000004,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "6ibm0vek",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (29)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6.4125377626030945e-25,
                      "y": 8,
                      "z": -3
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "y": 1,
                      "w": 6.123233995736766e-17
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "ada99m98",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (30)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 8,
                      "z": -9.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000004,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "go2xoyhv",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (31)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 8,
                      "z": -9.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000014,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "g1rjv8f1",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (32)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 8,
                      "z": -9.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000024,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "51w1uqvv",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (33)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6,
                      "y": 8,
                      "z": -9.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000014,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "ec221t00",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (34)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -12,
                      "y": 8,
                      "z": -9.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000024,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "w9hdvzcm",
              "_$type": "Sprite3D",
              "name": "Roof",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": -0.04843652
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "bmjzte71",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 11.5,
                      "z": -11
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "wse0dr26",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (1)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 11.5,
                      "z": -11
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "25ulth8v",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (2)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6,
                      "y": 11.5,
                      "z": -11
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "larm5w1d",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (3)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -12,
                      "y": 11.5,
                      "z": -11
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "h1wqea97",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (4)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 11.5,
                      "z": -11
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "b3k45h9t",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (5)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 11.5,
                      "z": -5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "nlb1ap1o",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (6)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 11.5,
                      "z": -5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "jjc2a11y",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (7)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6,
                      "y": 11.5,
                      "z": -5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "84v1269j",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (8)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -12,
                      "y": 11.5,
                      "z": -5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "nicjg1sh",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (9)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 11.5,
                      "z": -5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "0t56hkte",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (10)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 11.5,
                      "z": 1
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "sp4lblna",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (11)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 11.5,
                      "z": 1
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "9fgcxvf9",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (12)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6,
                      "y": 11.5,
                      "z": 1
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "05r8iquq",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (13)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -12,
                      "y": 11.5,
                      "z": 1
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "51vsh2zy",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (14)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 11.5,
                      "z": 1
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "wzc8vxh7",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (15)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 11.5,
                      "z": 7
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "labomplu",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (16)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 11.5,
                      "z": 7
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "nwgudlrq",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (17)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6,
                      "y": 11.5,
                      "z": 7
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "72nu5sl8",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (18)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -12,
                      "y": 11.5,
                      "z": 7
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "k814y0e7",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (19)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 11.5,
                      "z": 7
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "ftee08oj",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (20)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 11.5,
                      "z": 13
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "qfxpzx4e",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (21)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 11.5,
                      "z": 13
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "za75lf4e",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (22)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6,
                      "y": 11.5,
                      "z": 13
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "ntcyigbk",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (23)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -12,
                      "y": 11.5,
                      "z": 13
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "7ip6mccn",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (24)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 11.5,
                      "z": 13
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "an0l6rcs",
              "_$type": "Sprite3D",
              "name": "Front Wall",
              "isStatic": true,
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": -0.04843652,
                  "z": -11
                },
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "sn4hh4dw",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (25)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 2,
                      "z": 21.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "q1h2lica",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (26)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 2,
                      "z": 21.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000004,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "ja4hyqhr",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (27)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 2,
                      "z": 21.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000014,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "ky53156a",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (28)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6,
                      "y": 2,
                      "z": 21.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000004,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "342jhe1o",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (29)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -12,
                      "y": 2,
                      "z": 21.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000014,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "h6mvdje2",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (30)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": 8,
                      "z": 21.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000004,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "w8498vzj",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (31)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 8,
                      "z": 21.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000014,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "9ypmf54v",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (32)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 12,
                      "y": 8,
                      "z": 21.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000024,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "rpqp3f4f",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (33)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6,
                      "y": 8,
                      "z": 21.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000014,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "3xm83hnj",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (34)",
                  "isStatic": true,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -12,
                      "y": 8,
                      "z": 21.5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "x": 0.4999992749995094,
                      "y": 0.4999992749995094,
                      "z": -0.5000006749994393,
                      "w": -0.5000007749994344
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6.000024,
                      "y": 1,
                      "z": 6
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "bc83c709-3858-4e4b-991e-ba99716b104d",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "jmw6auke",
              "_$type": "Sprite3D",
              "name": "Cubes",
              "isStatic": true,
              "transform": {
                "localRotation": {
                  "_$type": "Quaternion",
                  "w": -1
                }
              },
              "_$child": [
                {
                  "_$id": "04q6bxwv",
                  "_$type": "Sprite3D",
                  "name": "Cube",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -7,
                      "y": -2.048437
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "m6ktmcep",
                  "_$type": "Sprite3D",
                  "name": "Cube (1)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8,
                      "y": -1.048437,
                      "z": 1
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "tklq5cb6",
                  "_$type": "Sprite3D",
                  "name": "Cube (2)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -6,
                      "y": -0.04843652,
                      "z": 8
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "ptywn4fc",
                  "_$type": "Sprite3D",
                  "name": "Cube (3)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -7,
                      "y": 1.951563,
                      "z": 9
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "l2mk2yic",
                  "_$type": "Sprite3D",
                  "name": "Cube (4)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -4,
                      "y": -2.048437,
                      "z": 10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "7kayv1vn",
                  "_$type": "Sprite3D",
                  "name": "Cube (5)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 5,
                      "y": -2.048437,
                      "z": 10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "gztoz1s5",
                  "_$type": "Sprite3D",
                  "name": "Cube (6)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": -1.048437,
                      "z": 9
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "eop73mya",
                  "_$type": "Sprite3D",
                  "name": "Cube (7)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8,
                      "y": -2.048437,
                      "z": 2
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "tvoas8xe",
                  "_$type": "Sprite3D",
                  "name": "Cube (8)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8,
                      "y": 10.95156,
                      "z": 11
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "ufgi5hm5",
                  "_$type": "Sprite3D",
                  "name": "Cube (9)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 9,
                      "y": 11.95156,
                      "z": 10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "batvsppy",
                  "_$type": "Sprite3D",
                  "name": "Cube (10)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -9,
                      "y": 10.95156,
                      "z": 10
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "kpa46yny",
                  "_$type": "Sprite3D",
                  "name": "Cube (11)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8,
                      "y": -0.04843652,
                      "z": -15
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "tss8jczg",
                  "_$type": "Sprite3D",
                  "name": "Cube (12)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -9,
                      "y": -1.048437,
                      "z": -13
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "pwq947bs",
                  "_$type": "Sprite3D",
                  "name": "Cube (13)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -7,
                      "y": -2.048437,
                      "z": -14
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "j6qf977k",
                  "_$type": "Sprite3D",
                  "name": "Cube (14)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8,
                      "y": -2.048437,
                      "z": -13
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "k58fp4lp",
                  "_$type": "Sprite3D",
                  "name": "Cube (15)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 9,
                      "y": -0.04843652,
                      "z": -14
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "au9qz40f",
                  "_$type": "Sprite3D",
                  "name": "Cube (16)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 9,
                      "y": 10.95156,
                      "z": -14
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "e7cbfy32",
                  "_$type": "Sprite3D",
                  "name": "Cube (17)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8,
                      "y": 11.95156,
                      "z": -15
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "a0whs8f7",
                  "_$type": "Sprite3D",
                  "name": "Cube (18)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -8,
                      "y": 11.95156,
                      "z": -13
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "yr4x1kqw",
                  "_$type": "Sprite3D",
                  "name": "Cube (19)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -9,
                      "y": 10.95156,
                      "z": -14
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 4,
                      "y": 4,
                      "z": 4
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "lpmw0xfq",
                  "_$type": "Sprite3D",
                  "name": "Cube (21)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8,
                      "y": 4.951563,
                      "z": 3
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "c908f0eb-ea88-483c-9eb0-2548370a0ce6",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "ygwnnds6",
                  "_$type": "Sprite3D",
                  "name": "Cube (22)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 4.951563,
                      "z": 3
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "c908f0eb-ea88-483c-9eb0-2548370a0ce6",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "b35lhqnd",
                  "_$type": "Sprite3D",
                  "name": "Cube (23)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 4.951563,
                      "z": 3
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "c908f0eb-ea88-483c-9eb0-2548370a0ce6",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "x3haot84",
                  "_$type": "Sprite3D",
                  "name": "Cube (25)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 8,
                      "y": 4.951563,
                      "z": 4
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "c908f0eb-ea88-483c-9eb0-2548370a0ce6",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "kcn4bpa0",
                  "_$type": "Sprite3D",
                  "name": "Cube (26)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 7,
                      "y": 4.951563,
                      "z": 4
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "c908f0eb-ea88-483c-9eb0-2548370a0ce6",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "8qhmud0m",
                  "_$type": "Sprite3D",
                  "name": "Cube (27)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 4.951563,
                      "z": 4
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "c908f0eb-ea88-483c-9eb0-2548370a0ce6",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "vid8cxcb",
                  "_$type": "Sprite3D",
                  "name": "Cube (24)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1,
                      "y": 9.951564,
                      "z": 5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "c908f0eb-ea88-483c-9eb0-2548370a0ce6",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "y79dyvx9",
                  "_$type": "Sprite3D",
                  "name": "Cube (28)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2,
                      "y": 9.951564,
                      "z": 5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "c908f0eb-ea88-483c-9eb0-2548370a0ce6",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "n4zv73kr",
                  "_$type": "Sprite3D",
                  "name": "Cube (29)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3,
                      "y": 9.951564,
                      "z": 5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "c908f0eb-ea88-483c-9eb0-2548370a0ce6",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "ymrjajso",
                  "_$type": "Sprite3D",
                  "name": "Cube (30)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -1,
                      "y": 10.95156,
                      "z": 5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "c908f0eb-ea88-483c-9eb0-2548370a0ce6",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "evhj7blh",
                  "_$type": "Sprite3D",
                  "name": "Cube (31)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -2,
                      "y": 10.95156,
                      "z": 5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "c908f0eb-ea88-483c-9eb0-2548370a0ce6",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "frfi6uf5",
                  "_$type": "Sprite3D",
                  "name": "Cube (32)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "x": -3,
                      "y": 10.95156,
                      "z": 5
                    },
                    "localRotation": {
                      "_$type": "Quaternion",
                      "w": -1
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "c908f0eb-ea88-483c-9eb0-2548370a0ce6",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "as8eiqro",
              "_$type": "Sprite3D",
              "name": "Track",
              "_$child": [
                {
                  "_$id": "eluf7k1t",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (10)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -1.3251707833689024,
                      "z": 1.9316581066063634
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 0.2
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "5dsn6mwm",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (11)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -1.3251800499856472,
                      "z": 3.747222917771971
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 0.2
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                },
                {
                  "_$id": "7mjx0712",
                  "_$type": "Sprite3D",
                  "name": "Floor5x5 (12)",
                  "isStatic": true,
                  "layer": 1,
                  "transform": {
                    "localPosition": {
                      "_$type": "Vector3",
                      "y": -1.32518,
                      "z": 5.513199327178821
                    },
                    "localScale": {
                      "_$type": "Vector3",
                      "x": 6,
                      "y": 1,
                      "z": 0.2
                    }
                  },
                  "_$comp": [
                    {
                      "_$type": "MeshFilter",
                      "sharedMesh": {
                        "_$uuid": "6f4a89a1-8116-44d1-b767-2f82cd669586",
                        "_$type": "Mesh"
                      }
                    },
                    {
                      "_$type": "MeshRenderer",
                      "receiveShadow": true,
                      "castShadow": true,
                      "sharedMaterials": [
                        {
                          "_$uuid": "f15210e6-8ea6-4341-9126-36f06a4797c9",
                          "_$type": "Material"
                        }
                      ]
                    },
                    {
                      "_$type": "PhysicsCollider",
                      "colliderShape": {
                        "_$type": "BoxColliderShape"
                      }
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "_$id": "b8pgmgox",
          "_$type": "Sprite3D",
          "name": "AudioManager",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": -1.5049999952316284,
              "z": 9
            }
          },
          "_$comp": [
            {
              "_$type": "149d2624-ef35-4137-a4e0-59bd868b4d00",
              "scriptPath": "../src/Scripts/Component/AudioManager.ts",
              "groundSounds": [
                "resources/Audio/FootStep/Ground/footsteps concrete  1.wav",
                "resources/Audio/FootStep/Ground/footsteps concrete  2.wav",
                "resources/Audio/FootStep/Ground/footsteps concrete  3.wav",
                "resources/Audio/FootStep/Ground/footsteps concrete  4.wav",
                "resources/Audio/FootStep/Ground/footsteps concrete  5.wav",
                "resources/Audio/FootStep/Ground/footsteps concrete  6.wav",
                "resources/Audio/FootStep/Ground/footsteps concrete  7.wav",
                "resources/Audio/FootStep/Ground/footsteps concrete  8.wav",
                "resources/Audio/FootStep/Ground/footsteps concrete  9.wav",
                "resources/Audio/FootStep/Ground/footsteps concrete 10.wav",
                "resources/Audio/FootStep/Ground/footsteps concrete 11.wav"
              ],
              "walkDelay": 0.7,
              "runDelay": 0.35
            }
          ]
        },
        {
          "_$id": "bt18zmnx",
          "_$type": "Sprite3D",
          "name": "BulletNode"
        }
      ]
    },
    {
      "_$id": "o21cctuc",
      "_$type": "Box",
      "name": "MainView",
      "x": 640,
      "y": 360,
      "width": 1280,
      "height": 720,
      "anchorX": 0.5,
      "anchorY": 0.5,
      "visible": false,
      "mouseEnabled": true,
      "left": 0,
      "right": 0,
      "top": 0,
      "bottom": 0,
      "_$comp": [
        {
          "_$type": "2053fa20-894d-402b-93ee-d69e5e979a26",
          "scriptPath": "../src/Scripts/MainView/MainView.ts",
          "fpCtrlNode": {
            "_$ref": "gbxz82v4"
          },
          "timerProgressSkin1": "atlas/MainViewIcon/TimeSlider.png",
          "timerProgressSkin2": "atlas/MainViewIcon/TimeSlider2.png"
        }
      ],
      "_$child": [
        {
          "_$id": "huov3ay5",
          "_$type": "Box",
          "name": "AmmoNode",
          "x": 748,
          "y": 684,
          "width": 200,
          "height": 200,
          "anchorX": 1,
          "anchorY": 1,
          "drawCallOptimize": true,
          "bottom": 36,
          "centerX": 8,
          "_$child": [
            {
              "_$id": "t3bupdbs",
              "_$type": "Label",
              "name": "CurAmmo",
              "x": -40.99999999999977,
              "y": 79.00000000000023,
              "width": 120,
              "height": 28,
              "text": "30",
              "fontSize": 35,
              "color": "rgba(253, 175, 45, 1)",
              "bold": true,
              "align": "right",
              "valign": "top",
              "leading": 2,
              "padding": "0,0,0,0"
            },
            {
              "_$id": "1qg19kdl",
              "_$type": "Label",
              "name": "AmmoInMag",
              "active": false,
              "x": 88.00000000000023,
              "y": 79.00000000000023,
              "width": 120,
              "height": 28,
              "visible": false,
              "text": "/ 30",
              "fontSize": 30,
              "color": "rgba(255, 255, 255, 1)",
              "valign": "top",
              "leading": 2,
              "padding": "0,0,0,0"
            },
            {
              "_$id": "e2wllp9l",
              "_$type": "Label",
              "name": "CurCarried",
              "x": 88,
              "y": 80,
              "width": 120,
              "height": 28,
              "text": "/ 60",
              "fontSize": 35,
              "color": "rgba(253, 175, 45, 1)",
              "bold": true,
              "valign": "top",
              "leading": 2,
              "padding": "0,0,0,0"
            },
            {
              "_$id": "n9tm33t4",
              "_$type": "Label",
              "name": "AmmoMaxCarried",
              "active": false,
              "x": 88.00000000000023,
              "y": 118.00000000000011,
              "width": 120,
              "height": 28,
              "visible": false,
              "text": "/ 60",
              "fontSize": 30,
              "color": "rgba(255, 255, 255, 1)",
              "valign": "top",
              "leading": 2,
              "padding": "0,0,0,0"
            }
          ]
        },
        {
          "_$id": "uaixb5k6",
          "_$type": "Box",
          "name": "ScoreNode",
          "y": 256,
          "width": 343,
          "height": 188,
          "anchorY": 1,
          "drawCallOptimize": true,
          "left": 0,
          "top": 68,
          "_$child": [
            {
              "_$id": "goz7jniz",
              "_$type": "Label",
              "name": "Score",
              "x": 144,
              "y": 119,
              "width": 120,
              "height": 28,
              "anchorY": 1,
              "left": 144,
              "bottom": 69,
              "text": "0\n",
              "fontSize": 30,
              "color": "rgba(253, 175, 45, 1)",
              "valign": "bottom",
              "leading": 2,
              "padding": "0,0,0,0"
            },
            {
              "_$id": "4oi2g8vf",
              "_$type": "Label",
              "name": "ScoreDesc",
              "x": 45,
              "y": 116,
              "width": 120,
              "height": 28,
              "anchorY": 1,
              "left": 45,
              "bottom": 72,
              "text": "分数：",
              "fontSize": 32,
              "color": "rgba(255, 255, 255, 1)",
              "valign": "bottom",
              "leading": 2,
              "padding": "0,0,0,0"
            }
          ]
        },
        {
          "_$id": "ske6pqai",
          "_$type": "Box",
          "name": "CrossHair",
          "x": 640,
          "y": 360,
          "width": 500,
          "height": 500,
          "anchorX": 0.5,
          "anchorY": 0.5,
          "scaleX": 0.15,
          "scaleY": 0.15,
          "centerX": 0,
          "centerY": 0,
          "_$child": [
            {
              "_$id": "y7q1gq1k",
              "_$type": "Image",
              "name": "Image",
              "x": 250,
              "y": 250,
              "width": 50,
              "height": 50,
              "anchorX": 0.5,
              "anchorY": 0.5,
              "centerX": 0,
              "centerY": 0,
              "skin": "res://e4b580b2-574b-4be2-a8c9-c516a9f6c55e",
              "useSourceSize": true,
              "color": "#ffffff"
            },
            {
              "_$id": "jdgvf4fv",
              "_$type": "Image",
              "name": "Line1",
              "x": 250,
              "width": 38,
              "height": 175,
              "anchorX": 0.5,
              "top": 0,
              "centerX": 0,
              "skin": "res://ca395856-2e13-441f-afc3-c2cf08cd95f0",
              "useSourceSize": true,
              "color": "#ffffff"
            },
            {
              "_$id": "41ihjlcl",
              "_$type": "Image",
              "name": "Line2",
              "x": 500,
              "y": 250,
              "width": 38,
              "height": 175,
              "anchorX": 0.5,
              "rotation": 90,
              "right": -19,
              "centerY": 87,
              "skin": "res://ca395856-2e13-441f-afc3-c2cf08cd95f0",
              "useSourceSize": true,
              "color": "#ffffff"
            },
            {
              "_$id": "jmehiome",
              "_$type": "Image",
              "name": "Line3",
              "x": 250,
              "y": 500,
              "width": 38,
              "height": 175,
              "anchorX": 0.5,
              "rotation": 180,
              "bottom": -175,
              "centerX": 0,
              "skin": "res://ca395856-2e13-441f-afc3-c2cf08cd95f0",
              "color": "#ffffff"
            },
            {
              "_$id": "c9hyxxoc",
              "_$type": "Image",
              "name": "Line4",
              "y": 250,
              "width": 38,
              "height": 175,
              "anchorX": 0.5,
              "rotation": 270,
              "left": -19,
              "centerY": 87,
              "skin": "res://ca395856-2e13-441f-afc3-c2cf08cd95f0",
              "useSourceSize": true,
              "color": "#ffffff"
            }
          ]
        },
        {
          "_$id": "c5wcx487",
          "_$type": "Box",
          "name": "TimeNode",
          "width": 200,
          "height": 200,
          "drawCallOptimize": true,
          "_$child": [
            {
              "_$id": "9sf1rlx9",
              "_$type": "ProgressBar",
              "name": "TimeProgress",
              "x": 40,
              "y": 59.99999999999994,
              "width": 400,
              "height": 20,
              "skin": "res://84c3d0b6-cb89-46f0-9f3c-28ddb0d21177",
              "value": 1
            },
            {
              "_$id": "44a11hp3",
              "_$type": "Label",
              "name": "Time",
              "x": 172,
              "y": 134,
              "width": 120,
              "height": 28,
              "anchorY": 1,
              "left": 172,
              "bottom": 66,
              "text": "60",
              "fontSize": 30,
              "color": "rgba(12, 254, 0, 1)",
              "valign": "bottom",
              "leading": 2,
              "padding": "0,0,0,0"
            },
            {
              "_$id": "00auv2mw",
              "_$type": "Label",
              "name": "TimeDesc",
              "x": 45,
              "y": 134,
              "width": 120,
              "height": 28,
              "anchorY": 1,
              "left": 45,
              "bottom": 66,
              "text": "倒计时：",
              "fontSize": 32,
              "color": "rgba(255, 255, 255, 1)",
              "valign": "bottom",
              "leading": 2,
              "padding": "0,0,0,0"
            }
          ]
        },
        {
          "_$id": "rwho2762",
          "_$type": "Label",
          "name": "Debug",
          "y": 692,
          "width": 120,
          "height": 28,
          "left": 0,
          "bottom": 0,
          "text": "",
          "fontSize": 20,
          "color": "#FFFFFF",
          "valign": "top",
          "leading": 2,
          "padding": "0,0,0,0"
        }
      ]
    },
    {
      "_$id": "45nhf3y7",
      "_$type": "Box",
      "name": "GameStartPanel",
      "width": 1280,
      "height": 720,
      "alpha": 0.68,
      "mouseEnabled": true,
      "left": 0,
      "right": 0,
      "top": 0,
      "bottom": 0,
      "bgColor": "rgba(105, 105, 105, 1)",
      "_$comp": [
        {
          "_$type": "70629c7b-4bf9-46e0-a988-70fd8c6dca3c",
          "scriptPath": "../src/Scripts/MainView/GameStartPanel.ts"
        }
      ],
      "_$child": [
        {
          "_$id": "k46gzxc8",
          "_$type": "Button",
          "name": "StartBtn",
          "x": 640,
          "y": 490,
          "width": 200,
          "height": 80,
          "anchorX": 0.5,
          "anchorY": 0.5,
          "mouseEnabled": true,
          "centerX": 0,
          "centerY": 130,
          "skin": "res://d4cfd6a8-0d0a-475b-ac93-d85eaa646936",
          "label": "开始游戏",
          "labelSize": 35,
          "labelColors": "#ffffff,#ffffff,#ffffff",
          "labelVAlign": "middle"
        },
        {
          "_$id": "yjzalroi",
          "_$type": "Label",
          "name": "Label",
          "x": 640,
          "y": 558,
          "width": 356,
          "height": 28,
          "anchorX": 0.5,
          "anchorY": 0.5,
          "centerX": 0,
          "centerY": 198,
          "text": "60秒内击倒枪靶获得分数！",
          "fontSize": 30,
          "color": "rgba(255, 255, 255, 1)",
          "align": "center",
          "valign": "middle",
          "leading": 2,
          "padding": "0,0,0,0"
        },
        {
          "_$id": "pnmudk8z",
          "_$type": "Label",
          "name": "PcOperatoinDesc",
          "x": 51,
          "y": 51,
          "width": 384,
          "height": 374,
          "visible": false,
          "left": 51,
          "top": 51,
          "text": "Pc端操作说明：\n移动：WADS\n射击：F\n换弹：R\n镜头移动：鼠标左键拖拽\n瞄准：鼠标右键\n",
          "fontSize": 30,
          "color": "#FFFFFF",
          "valign": "top",
          "leading": 14,
          "padding": "0,0,0,0"
        }
      ]
    }
  ]
}