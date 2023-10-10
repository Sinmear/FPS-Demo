{
  "_$ver": 1,
  "_$id": "bbrr7ycs",
  "_$type": "Scene",
  "left": 0,
  "right": 0,
  "top": 0,
  "bottom": 0,
  "name": "Scene2D",
  "_$child": [
    {
      "_$id": "n9gjxcltvl",
      "_$type": "Scene3D",
      "name": "Scene3D",
      "skyRenderer": {
        "meshType": "dome",
        "material": {
          "_$uuid": "793cffc6-730a-4756-a658-efe98c230292",
          "_$type": "Material"
        }
      },
      "ambientMode": 0,
      "ambientColor": {
        "_$type": "Color",
        "r": 0.424308,
        "g": 0.4578516,
        "b": 0.5294118
      },
      "_reflectionsIblSamples": 1024,
      "fogStart": 0,
      "fogEnd": 300,
      "fogDensity": 0.01,
      "fogColor": {
        "_$type": "Color",
        "r": 0.5,
        "g": 0.5,
        "b": 0.5
      },
      "lightmaps": [],
      "_$child": [
        {
          "_$id": "dl1wo1xk",
          "_$type": "Sprite3D",
          "name": "Plane",
          "layer": 1,
          "transform": {
            "localScale": {
              "_$type": "Vector3",
              "x": 50,
              "y": 1,
              "z": 50
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "1fa9b561-d25d-4844-99fd-65be508e7596",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "BoxColliderShape",
                "localOffset": {
                  "_$type": "Vector3",
                  "y": -0.5
                }
              }
            }
          ]
        },
        {
          "_$id": "8k81cbx4",
          "_$type": "Sprite3D",
          "name": "WaterPlane",
          "layer": 2,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "x": 6.87437983854579,
              "y": 0.3,
              "z": -5
            },
            "localScale": {
              "_$type": "Vector3",
              "x": 10,
              "y": 1,
              "z": 10
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "4a4afb22-ef83-40a2-a6a8-212a2d20c52f",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider",
              "colliderShape": {
                "_$type": "BoxColliderShape",
                "localOffset": {
                  "_$type": "Vector3",
                  "y": -0.5
                }
              }
            }
          ]
        },
        {
          "_$id": "a1y6rm73",
          "_$type": "Sprite3D",
          "name": "FPController",
          "layer": 3,
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 1,
              "z": 3
            }
          },
          "_$comp": [
            {
              "_$type": "CharacterController",
              "colliderShape": {
                "_$type": "CapsuleColliderShape",
                "length": 2
              },
              "gravity": {
                "_$type": "Vector3",
                "y": -15
              }
            },
            {
              "_$type": "14128449-0ed8-49ec-a10b-49162007e0da",
              "scriptPath": "../src/Player/FpsController.ts",
              "camera": {
                "_$ref": "6jx8h8bvc6"
              },
              "scene": {
                "_$ref": "n9gjxcltvl"
              },
              "mouseSensitivity": 0.1,
              "maxVerticalAngle": 90,
              "minVerticalAngle": -90,
              "walkSpeed": 7,
              "runSpeed": 15,
              "jumpHeight": 5
            }
          ],
          "_$child": [
            {
              "_$id": "6jx8h8bvc6",
              "_$type": "Camera",
              "name": "Main Camera",
              "transform": {
                "localPosition": {
                  "_$type": "Vector3",
                  "y": 0.5,
                  "z": 0.2
                }
              },
              "orthographicVerticalSize": 10,
              "fieldOfView": 60,
              "nearPlane": 0.3,
              "farPlane": 1000,
              "clearFlag": 0,
              "clearColor": {
                "_$type": "Color",
                "r": 0.3921,
                "g": 0.5843,
                "b": 0.9294
              },
              "msaa": true,
              "fxaa": true,
              "cullingMask": 2147483647,
              "normalizedViewport": {
                "_$type": "Viewport",
                "width": 1,
                "height": 1
              },
              "depthTextureFormat": 35
            },
            {
              "_$id": "c28hyd1r",
              "_$type": "Sprite3D",
              "name": "Capsule",
              "transform": {
                "localScale": {
                  "_$type": "Vector3",
                  "x": 2,
                  "y": 2,
                  "z": 2
                }
              },
              "_$comp": [
                {
                  "_$type": "MeshFilter",
                  "sharedMesh": {
                    "_$uuid": "81a027ba-bf6c-4112-8e81-2a9b06c53290",
                    "_$type": "Mesh"
                  }
                },
                {
                  "_$type": "MeshRenderer",
                  "sharedMaterials": [
                    {
                      "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                      "_$type": "Material"
                    }
                  ]
                }
              ]
            },
            {
              "_$id": "nzedsk2o",
              "_$type": "Sprite3D",
              "name": "AudioManager",
              "_$comp": [
                {
                  "_$type": "149d2624-ef35-4137-a4e0-59bd868b4d00",
                  "scriptPath": "../src/Component/AudioManager.ts",
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
                  "waterSounds": [
                    "resources/Audio/FootStep/Water/footsteps water  1.wav",
                    "resources/Audio/FootStep/Water/footsteps water  2.wav",
                    "resources/Audio/FootStep/Water/footsteps water  3.wav",
                    "resources/Audio/FootStep/Water/footsteps water  4.wav",
                    "resources/Audio/FootStep/Water/footsteps water  5.wav",
                    "resources/Audio/FootStep/Water/footsteps water  6.wav",
                    "resources/Audio/FootStep/Water/footsteps water  7.wav",
                    "resources/Audio/FootStep/Water/footsteps water  8.wav"
                  ],
                  "fpsCtrl": {
                    "_$ref": "a1y6rm73",
                    "_$type": "14128449-0ed8-49ec-a10b-49162007e0da"
                  },
                  "walkDelay": 0.75,
                  "runDelay": 0.4
                }
              ]
            }
          ]
        },
        {
          "_$id": "21ppppdw",
          "_$type": "Sprite3D",
          "name": "Cube",
          "transform": {
            "localPosition": {
              "_$type": "Vector3",
              "y": 1.5018792351684693,
              "z": -5.229550869959617
            }
          },
          "_$comp": [
            {
              "_$type": "MeshFilter",
              "sharedMesh": {
                "_$uuid": "6e013e32-fec7-4397-80d1-f918a07607be",
                "_$type": "Mesh"
              }
            },
            {
              "_$type": "MeshRenderer",
              "sharedMaterials": [
                {
                  "_$uuid": "6f90bbb0-bcb2-4311-8a9d-3d8277522098",
                  "_$type": "Material"
                }
              ]
            },
            {
              "_$type": "PhysicsCollider"
            }
          ]
        }
      ]
    }
  ]
}