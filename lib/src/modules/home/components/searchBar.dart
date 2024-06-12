import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/src/config/text_style.dart';
import 'package:flutter/material.dart';
import '../../../config/app_color.dart';
import '../../../constants/asset_path.dart';
class SearchMovie extends StatelessWidget {
  const SearchMovie({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
        child:SizedBox(
            height: size.height/15,
            child:Row(
              children: [
                Expanded(
                    child: Container(
                      height: size.height/15,
                      decoration: BoxDecoration(
                        color:DarkTheme.darkBackground,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child:const Row(
                        children: [
                          Padding(
                            padding:EdgeInsets.only(left: 24,right: 12),
                            child:FaIcon(FontAwesomeIcons.search,color: DarkTheme.white,),
                          ),
                          Expanded(
                              child:TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search for movies',
                                  hintStyle:TxtStyle.heading3Medium,
                                  border: InputBorder.none,
                                ),
                              )
                          ),
                        ],
                      ),
                    )
                ),
                Container(
                    margin:const EdgeInsets.only(left: 16),
                    width: size.height/15,
                    height: size.height/15,
                    decoration: BoxDecoration(
                      gradient:const LinearGradient(
                          colors:[
                            GradientPalette.blue1,
                            GradientPalette.blue2,
                          ]
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child:Image.asset(AssetPath.iconControl)
                )
              ],
            )
        )
    );
  }
}