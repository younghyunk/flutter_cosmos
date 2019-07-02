import 'dart:convert';

import 'package:flutter_cosmos/pages/applauncher/models/app_tile.dart';
import 'package:test/test.dart';

void main() {
  test('parse applist json str and check if neftlix is in it.', () {
    Map<String, dynamic> parsedJson = json.decode(appListJsonStr);

    AppTileList appTileList = AppTileList.fromJson(parsedJson['child']);
    expect(
        appTileList.tiles
            .where((tile) => tile.title == 'Netflix')
            .toList()
            .length,
        1);
  });
}

final String appListJsonStr = """
{
  "entity": {
    "id": "s/app.layer"
  },
  "child": [
    {
      "entity": {
        "id": "d/webapp@11101200001",
        "current_element": {
          "id": "d/webapp@11101200001|Netflix",
          "title": "Netflix",
          "subTitle": "",
          "icon": "/opt/share/webappservice/apps_icon/FirstScreen/11101200001/245x138.png",
          "menu_item": [
            {
              "id": "d/webapp@11101200001|Netflix|"
            },
            {
              "id": "d/webapp@11101200001|Netflix|"
            }
          ]
        }
      },
      "child": [
        {
          "entity": {
            "id": "d/webapp.layer@section@32",
            "current_element": {
              "id": "d/webapp.layer@section@32|Sign Up",
              "title": "Sign Up",
              "subTitle": "",
              "icon": ""
            }
          },
          "child": [
            {
              "entity": {
                "id": "d/webapp.layer.tile@tile@462",
                "current_element": {
                  "id": "d/webapp.layer.tile@tile@462|Watch TV shows and movies anytime, anywhereStart your free month",
                  "title": "Watch TV shows and movies anytime, anywhere",
                  "subTitle": "Start your free month",
                  "icon": "https://assets.nflxext.com/us/ffe/htmltvui/signupwizard/pre-app_signup_tile_v2.jpg"
                }
              }
            }
          ]
        },
        {
          "entity": {
            "id": "d/webapp.layer@section@33",
            "current_element": {
              "id": "d/webapp.layer@section@33|Watch on Netflix",
              "title": "Watch on Netflix",
              "subTitle": "",
              "icon": ""
            }
          },
          "child": [
            {
              "entity": {
                "id": "d/webapp.layer.tile@tile@463",
                "current_element": {
                  "id": "d/webapp.layer.tile@tile@463|Men on a Mission",
                  "title": "Men on a Mission",
                  "subTitle": "",
                  "icon": "http://occ-0-2794-2219.1.nflxso.net/art/ad8fe/5173b57f584a444d5f524c2bc77e4b4006bad8fe.jpg"
                }
              }
            },
            {
              "entity": {
                "id": "d/webapp.layer.tile@tile@464",
                "current_element": {
                  "id": "d/webapp.layer.tile@tile@464|The Walking Dead",
                  "title": "The Walking Dead",
                  "subTitle": "",
                  "icon": "http://occ-0-2794-2219.1.nflxso.net/art/9886f/7a6cd0d0771ebcfd7d0a122def10c2949d49886f.jpg"
                }
              }
            },
            {
              "entity": {
                "id": "d/webapp.layer.tile@tile@465",
                "current_element": {
                  "id": "d/webapp.layer.tile@tile@465|Stranger Things",
                  "title": "Stranger Things",
                  "subTitle": "",
                  "icon": "http://occ-0-2794-2219.1.nflxso.net/art/06aab/62c2133874c3be019e39697b647fdb2cdd106aab.jpg"
                }
              }
            },
            {
              "entity": {
                "id": "d/webapp.layer.tile@tile@466",
                "current_element": {
                  "id": "d/webapp.layer.tile@tile@466|Narcos",
                  "title": "Narcos",
                  "subTitle": "",
                  "icon": "http://occ-1-2794-2219.1.nflxso.net/art/8c313/6b8f7a7cecbf2335c6577485ddeb27802df8c313.jpg"
                }
              }
            },
            {
              "entity": {
                "id": "d/webapp.layer.tile@tile@467",
                "current_element": {
                  "id": "d/webapp.layer.tile@tile@467|Guardians of the Galaxy Vol. 2",
                  "title": "Guardians of the Galaxy Vol. 2",
                  "subTitle": "",
                  "icon": "http://occ-1-2794-2219.1.nflxso.net/art/62e30/a158bd1c5a1ac59a859a4305a11e9b7f7cf62e30.jpg"
                }
              }
            },
            {
              "entity": {
                "id": "d/webapp.layer.tile@tile@468",
                "current_element": {
                  "id": "d/webapp.layer.tile@tile@468|The Kissing Booth",
                  "title": "The Kissing Booth",
                  "subTitle": "",
                  "icon": "http://occ-2-2794-2219.1.nflxso.net/art/71744/d81e231e42bb781ac37b9122d4c949bcb0871744.jpg"
                }
              }
            },
            {
              "entity": {
                "id": "d/webapp.layer.tile@tile@469",
                "current_element": {
                  "id": "d/webapp.layer.tile@tile@469|Reply 1994",
                  "title": "Reply 1994",
                  "subTitle": "",
                  "icon": "http://occ-0-2794-2219.1.nflxso.net/art/6f7b3/9786b0cec2d2d26576596415bae3227a7906f7b3.jpg"
                }
              }
            },
            {
              "entity": {
                "id": "d/webapp.layer.tile@tile@470",
                "current_element": {
                  "id": "d/webapp.layer.tile@tile@470|Lost in Space",
                  "title": "Lost in Space",
                  "subTitle": "",
                  "icon": "http://occ-2-2794-2219.1.nflxso.net/art/f1666/7422a75a70fe57010d1b50e888bf0537d60f1666.jpg"
                }
              }
            },
            {
              "entity": {
                "id": "d/webapp.layer.tile@tile@471",
                "current_element": {
                  "id": "d/webapp.layer.tile@tile@471|Guardians of the Galaxy",
                  "title": "Guardians of the Galaxy",
                  "subTitle": "",
                  "icon": "http://occ-2-2794-2219.1.nflxso.net/art/b739b/a191c4ddd5db1e34566a3d11036092159fab739b.jpg"
                }
              }
            },
            {
              "entity": {
                "id": "d/webapp.layer.tile@tile@472",
                "current_element": {
                  "id": "d/webapp.layer.tile@tile@472|Black Mirror",
                  "title": "Black Mirror",
                  "subTitle": "",
                  "icon": "http://occ-2-2794-2219.1.nflxso.net/art/7579a/3a19fb1a1d3b0375679231d7bcf6c23bb7f7579a.jpg"
                }
              }
            }
          ]
        }
      ]
    }
  ]
}
""";
