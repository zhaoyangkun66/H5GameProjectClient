
[
    {
        "hash": 3550530479,
        "record": null,
        "name": "builtin-2d-spine|vs|fs",
        "glsl3": {
            "vert": "\nprecision highp float;\nuniform CCGlobal {\n  mat4 cc_matView;\n  mat4 cc_matViewInv;\n  mat4 cc_matProj;\n  mat4 cc_matProjInv;\n  mat4 cc_matViewProj;\n  mat4 cc_matViewProjInv;\n  vec4 cc_cameraPos;\n  vec4 cc_time;\n  mediump vec4 cc_screenSize;\n  mediump vec4 cc_screenScale;\n};\nuniform CCLocal {\n  mat4 cc_matWorld;\n  mat4 cc_matWorldIT;\n};\nin vec3 a_position;\nin vec4 a_color;\n#if USE_TINT\n  in vec4 a_color0;\n#endif\nin vec2 a_uv0;\nout vec2 v_uv0;\nout vec4 v_light;\n#if USE_TINT\n  out vec4 v_dark;\n#endif\nvoid main () {\n  mat4 mvp;\n  #if CC_USE_MODEL\n    mvp = cc_matViewProj * cc_matWorld;\n  #else\n    mvp = cc_matViewProj;\n  #endif\n  v_uv0 = a_uv0;\n  v_light = a_color;\n  #if USE_TINT\n    v_dark = a_color0;\n  #endif\n  gl_Position = mvp * vec4(a_position, 1);\n}",
            "frag": "\nprecision highp float;\nuniform sampler2D texture;\nin vec2 v_uv0;\nin vec4 v_light;\n#if USE_TINT\n  in vec4 v_dark;\n#endif\n#if USE_ALPHA_TEST\n  uniform ALPHA_TEST {\n    float alphaThreshold;\n  };\n#endif\nvoid ALPHA_TEST (in vec4 color) {\n  #if USE_ALPHA_TEST\n      if (color.a < alphaThreshold) discard;\n  #endif\n}\nvoid ALPHA_TEST (in float alpha) {\n  #if USE_ALPHA_TEST\n      if (alpha < alphaThreshold) discard;\n  #endif\n}\nvoid main () {\n  vec4 texColor = vec4(1.0);\n  vec4 texture_tmp = texture(texture, v_uv0);\n  #if CC_USE_ALPHA_ATLAS_texture\n      texture_tmp.a *= texture(texture, v_uv0 + vec2(0, 0.5)).r;\n  #endif\n  #if INPUT_IS_GAMMA\n    texColor.rgb *= (texture_tmp.rgb * texture_tmp.rgb);\n    texColor.a *= texture_tmp.a;\n  #else\n    texColor *= texture_tmp;\n  #endif\n  vec4 finalColor;\n  #if USE_TINT\n    finalColor.a = v_light.a * texColor.a;\n    finalColor.rgb = ((texColor.a - 1.0) * v_dark.a + 1.0 - texColor.rgb) * v_dark.rgb + texColor.rgb * v_light.rgb;\n  #else\n    finalColor = texColor * v_light;\n  #endif\n  ALPHA_TEST(finalColor);\n  gl_FragColor = finalColor;\n}"
        },
        "glsl1": {
            "vert": "\nprecision highp float;\nuniform mat4 cc_matViewProj;\nuniform mat4 cc_matWorld;\nattribute vec3 a_position;\nattribute vec4 a_color;\n#if USE_TINT\n  attribute vec4 a_color0;\n#endif\nattribute vec2 a_uv0;\nvarying vec2 v_uv0;\nvarying vec4 v_light;\n#if USE_TINT\n  varying vec4 v_dark;\n#endif\nvoid main () {\n  mat4 mvp;\n  #if CC_USE_MODEL\n    mvp = cc_matViewProj * cc_matWorld;\n  #else\n    mvp = cc_matViewProj;\n  #endif\n  v_uv0 = a_uv0;\n  v_light = a_color;\n  #if USE_TINT\n    v_dark = a_color0;\n  #endif\n  gl_Position = mvp * vec4(a_position, 1);\n}",
            "frag": "\nprecision highp float;\nuniform sampler2D texture;\nvarying vec2 v_uv0;\nvarying vec4 v_light;\n#if USE_TINT\n  varying vec4 v_dark;\n#endif\n#if USE_ALPHA_TEST\n  uniform float alphaThreshold;\n#endif\nvoid ALPHA_TEST (in vec4 color) {\n  #if USE_ALPHA_TEST\n      if (color.a < alphaThreshold) discard;\n  #endif\n}\nvoid ALPHA_TEST (in float alpha) {\n  #if USE_ALPHA_TEST\n      if (alpha < alphaThreshold) discard;\n  #endif\n}\nvoid main () {\n  vec4 texColor = vec4(1.0);\n  vec4 texture_tmp = texture2D(texture, v_uv0);\n  #if CC_USE_ALPHA_ATLAS_texture\n      texture_tmp.a *= texture2D(texture, v_uv0 + vec2(0, 0.5)).r;\n  #endif\n  #if INPUT_IS_GAMMA\n    texColor.rgb *= (texture_tmp.rgb * texture_tmp.rgb);\n    texColor.a *= texture_tmp.a;\n  #else\n    texColor *= texture_tmp;\n  #endif\n  vec4 finalColor;\n  #if USE_TINT\n    finalColor.a = v_light.a * texColor.a;\n    finalColor.rgb = ((texColor.a - 1.0) * v_dark.a + 1.0 - texColor.rgb) * v_dark.rgb + texColor.rgb * v_light.rgb;\n  #else\n    finalColor = texColor * v_light;\n  #endif\n  ALPHA_TEST(finalColor);\n  gl_FragColor = finalColor;\n}"
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
                "name": "USE_TINT",
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
                "name": "CC_USE_ALPHA_ATLAS_texture",
                "type": "boolean",
                "defines": []
            },
            {
                "name": "INPUT_IS_GAMMA",
                "type": "boolean",
                "defines": []
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
            }
        ],
        "samplers": [
            {
                "name": "texture",
                "type": 29,
                "count": 1,
                "binding": 30,
                "defines": []
            }
        ]
    }
],
    [
        {
            "passes": [
                {
                    "program": "builtin-2d-spine|vs|fs",
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
                        }
                    }
                }
            ]
        }
    ]
