import 'package:flutter/material.dart';

class ProjectExperience {
  final String title; // Project title
  final List<String> bulletPoints; // List of bullet points for project description
  final String technologies; // Technologies used in the project
  final String projectLink; // Link to the project or GitHub repository
  final String startDate; // Start date of the project
  final String endDate; // End date of the project (optional)
  final Color color; // Color to associate with the project (optional)
  
  ProjectExperience({
    required this.title,
    required this.bulletPoints,
    required this.technologies,
    required this.projectLink,
    required this.startDate,
    required this.endDate,
    required this.color,
  });
}
