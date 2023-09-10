[
    {
        "hash": 1849860848,
        "record": null,
        "name": "Blur|vs|fs",
        "glsl3": {
            "vert": "",
            "frag": ""
        },
        "glsl1": {
            "vert": "",
            "frag": ""
        },
        "builtins": {
            "globals": {
                "blocks": [
                    {
                        "name": "CCGlobal",
                        "defines": []
                    }
                ],
                "samplers": []
            },
            "locals": {
                "blocks": [
                    {
                        "name": "CCLocal",
                        "defines": []
                    }
                ],
                "samplers": []
            }
        },
        "defines": [
            {
                "name": "USE_TEXTURE",
                "type": "boolean",
                "defines": []
            },
            {
                "name": "CC_USE_MODEL",
                "type": "boolean",
                "defines": []
            },
            {
                "name": "USE_ALPHA_TEST",
                "type": "boolean",
                "defines": []
            },
            {
                "name": "USE_BLUE",
                "type": "boolean",
                "defines": []
            },
            {
                "name": "CC_USE_ALPHA_ATLAS_texture",
                "type": "boolean",
                "defines": [
                    "USE_TEXTURE"
                ]
            },
            {
                "name": "INPUT_IS_GAMMA",
                "type": "boolean",
                "defines": [
                    "USE_TEXTURE"
                ]
            }
        ],
        "blocks": [
            {
                "name": "ALPHA_TEST",
                "binding": 0,
                "members": [
                    {
                        "name": "alphaThreshold",
                        "type": 13,
                        "count": 1
                    }
                ],
                "defines": [
                    "USE_ALPHA_TEST"
                ]
            },
            {
                "name": "Blur",
                "binding": 1,
                "members": [
                    {
                        "name": "bightness",
                        "type": 13,
                        "count": 1
                    },
                    {
                        "name": "blurAmount",
                        "type": 13,
                        "count": 1
                    }
                ],
                "defines": [
                    "USE_TEXTURE",
                    "USE_BLUE"
                ]
            }
        ],
        "samplers": [
            {
                "name": "texture",
                "type": 29,
                "count": 1,
                "binding": 30,
                "defines": [
                    "USE_TEXTURE"
                ]
            }
        ]
    }
],
    [
        {
            "passes": [
                {
                    "program": "Blur|vs|fs",
                    "blendState": {
                        "targets": [
                            {
                                "blend": true
                            }
                        ]
                    },
                    "rasterizerState": {
                        "cullMode": 0
                    },
                    "properties": {
                        "texture": {
                            "value": "white",
                            "type": 29
                        },
                        "alphaThreshold": {
                            "type": 13,
                            "value": [
                                0.5
                            ]
                        },
                        "bightness": {
                            "type": 13,
                            "value": [
                                0.5
                            ],
                            "editor": {
                                "tooltip": "亮度"
                            }
                        },
                        "blurAmount": {
                            "type": 13,
                            "value": [
                                0.5
                            ],
                            "editor": {
                                "tooltip": "模糊度"
                            }
                        }
                    }
                }
            ]
        }
    ]
