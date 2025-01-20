import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../consts/data.dart';
import '../../providers/current_state.dart';

class PhoneHomeScreen extends StatelessWidget {
  const PhoneHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    return Container(
      padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.start, // Ensures the content starts at the top
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5), // Shadow color
                    spreadRadius: 3, // Makes the shadow expand
                    blurRadius: 15, // Adds blur to the shadow for a softer look
                    offset: Offset(0, 4), // Position of the shadow (downward)
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 90,
                backgroundColor: Colors.black
                    .withOpacity(0.3), // Makes the background transparent
                backgroundImage: const AssetImage("assets/images/my_photo.png"),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.start,
            children: List.generate(
                apps.length,
                (index) => Container(
                      margin: const EdgeInsets.only(
                          right: 10, top: 10, bottom: 20, left: 10),
                      // width: 70,
                      child: Column(
                        children: [
                          CustomButton(
                            margin: const EdgeInsets.only(bottom: 5),
                            borderRadius: currentState.currentDevice ==
                                    Devices.ios.iPhone13
                                ? 8
                                : 100,
                            onPressed: () {
                              if (apps[index].link != null) {
                                // open the url in the webpage
                                currentState.launchInBrowser(
                                  apps[index].link!,
                                );
                              } else if (apps[index].screen != null) {
                                currentState.changePhoneScreen(
                                    apps[index].screen!, false,
                                    titlee: apps[index].title);
                              }
                            },
                            width: 70,
                            height: 70,
                            asset: apps[index].assetPath != null
                                ? ButtonAsset(apps[index].assetPath!,
                                    width: 60, height: 60)
                                : null,
                            backgroundColor: Colors.grey.withOpacity(0.6),
                            child: apps[index].assetPath == null
                                ? Center(
                                    child: Icon(
                                      apps[index].icon,
                                      size: 25,
                                      color: Colors.black,
                                    ),
                                  )
                                : null,
                          ),
                          SizedBox(
                            width: 60,
                            child: Center(
                              child: Text(
                                apps[index].title,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: GoogleFonts.exo(
                                    fontSize: 11,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
