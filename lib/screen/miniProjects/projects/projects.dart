import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this import for launching URLs

import '../../../consts/data.dart'; // Adjust based on the new model
import '../../../models/project_model.dart'; // Assuming the new model is in this file

class Projects extends StatelessWidget {
  const Projects({super.key});

  // Function to launch the URL
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Center(
            child: Icon(
              Icons.code,
              size: 70,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...List.generate(projectList.length, (index) {
            ProjectExperience project = projectList[index];
            return ExpansionTile(
              tilePadding: const EdgeInsets.all(20),
              childrenPadding: const EdgeInsets.all(10),
              leading: Container(
                width: 2,
                height: 100,
                color: project.color,
              ),
              title: Text(
                project.title,
                style: GoogleFonts.inter(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Displaying project technologies and dates on the left side
                    Expanded(
                      child: Text(
                        '${project.technologies}\n${project.startDate} - ${project.endDate}',
                        style:
                            GoogleFonts.inter(fontSize: 13, color: Colors.grey),
                      ),
                    ),
                    // Displaying the project link on the right side
                    GestureDetector(
                      onTap: () => _launchURL(
                          project.projectLink), // Launch the URL when tapped
                      child: Text(
                        'Project Link',
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              children: project.bulletPoints.map((bulletPoint) {
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
                  title: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          bulletPoint,
                          style: GoogleFonts.inter(
                            fontSize: 12,
                          ),
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            );
          })
        ],
      ),
    );
  }
}
