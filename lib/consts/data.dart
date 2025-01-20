import 'package:awesome_portfolio/models/app_model.dart';
import 'package:awesome_portfolio/models/color_model.dart';
import 'package:awesome_portfolio/models/device_model.dart';
import 'package:awesome_portfolio/models/project_model.dart';
import 'package:awesome_portfolio/screen/miniProjects/contact/contact.dart';
import 'package:awesome_portfolio/screen/miniProjects/education/education.dart';
import 'package:awesome_portfolio/screen/miniProjects/experience/experience.dart';
import 'package:awesome_portfolio/screen/miniProjects/projects/projects.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/experience_model.dart';
import '../models/skill_model.dart';
import '../screen/miniProjects/about/about.dart';
import '../screen/miniProjects/skills/skills.dart';

const double baseHeight = 790;
const double baseWidth = 1440;

List<DeviceModel> devices = [
  DeviceModel(
    device: Devices.android.onePlus8Pro,
    icon: Icons.android,
  ),
  DeviceModel(
    device: Devices.ios.iPhone13,
    icon: Icons.apple,
  ),
  DeviceModel(
    device: Devices.ios.iPad,
    icon: Icons.tablet,
  ),
];

List<ColorModel> colorPalette = [
  ColorModel(
    svgPath: "assets/images/cloudRed.svg",
    color: Colors.yellowAccent,
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      // transform: Grad,
      end: Alignment.topRight,
      colors: [Colors.yellowAccent, Colors.deepOrange],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.blue,
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      colors: [Colors.blue, Colors.black45],
    ),
  ),
  ColorModel(
      svgPath: "assets/images/cloudyBlue.svg",
      color: const Color(0xff00d6ca),
      gradient: const LinearGradient(
        colors: [Color(0xff00ebd5), Color(0xff293474)],
        stops: [0, 1],
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
      )),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xff123cd1),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(-0.31, 0.95),
      colors: [Color(0xFF1042F4), Color(0x00203EA6)],
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: Colors.purple,
    gradient: const LinearGradient(
      colors: [Color(0xffc95edb), Colors.black12],
      stops: [0, 1],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  ColorModel(
    svgPath: "assets/images/cloudyBlue.svg",
    color: const Color(0xfff35a32),
    gradient: const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.indigo, Colors.deepOrange], // Adjust colors as needed
    ),
  ),
];

List<AppModel> apps = [
  AppModel(
      title: "About",
      assetPath: "assets/icons/about.png",
      color: Colors.grey,
      screen: const AboutMe()),
  AppModel(
    title: "Education",
    color: Colors.grey,
    assetPath: "assets/icons/education.png",
    screen: const Education(),
  ),
  AppModel(
      title: "Skills",
      assetPath: "assets/icons/skills.png",
      color: Colors.grey,
      screen: const Skills()),
  AppModel(
      title: "Projects",
      color: Colors.grey,
      assetPath: "assets/icons/projects.png",
      screen: const Projects()),
  AppModel(
    title: "Resume",
    assetPath: "assets/icons/resume.png",
    color: Colors.grey,
    link: resumeLink,
  ),
  AppModel(
      title: "Experience",
      color: Colors.grey,
      assetPath: "assets/icons/experience.png",
      screen: const Experience()),
  AppModel(
    title: "LinkedIn",
    assetPath: "assets/icons/linkedin.png",
    color: Colors.grey,
    link: linkedIn,
  ),
  AppModel(
    title: "Github",
    assetPath: "assets/icons/github.png",
    color: Colors.grey,
    link: github,
  ),
  AppModel(
      title: "Contact",
      assetPath: "assets/icons/contact.png",
      color: Colors.grey,
      screen: const ContactPage()),
];

final List<JobExperience> education = [
  JobExperience(
    color: Colors.red,
    location: "Delhi, India",
    title: 'Computer Science Engineering with specialization in AI (CSE-AI)',
    company: 'Indira Gandhi Delhi Technical University For Women',
    startDate: 'August 2023',
    endDate: 'Present',
    bulletPoints: [
      "Currently in the Second year of my college!",
    ],
  ),
  JobExperience(
    color: Colors.blue,
    location: "Delhi, India",
    title: 'Class XII & Class X',
    company: 'Central Board of Senior Secondary Education',
    startDate: 'Class XII - 94.4 %(PCM)',
    endDate: 'Class X - 92.8 %',
    bulletPoints: [
      'I discovered my passion for innovation and exploring new ideas, along with a strong desire to solve real-world problems, which ultimately led me to choose a career in engineering.',
    ],
  ),
];

final List<JobExperience> jobExperiences = [
  JobExperience(
    color: Colors.blue,
    location: "Remote",
    title: 'Full Stack Developer',
    company: 'Cooig(Startup)',
    startDate: 'May 2023',
    endDate: 'Present',
    bulletPoints: [
      "As a founding team member of Cooig, a college-focused social media app currently in the prototyping phase, I have been instrumental in building the platform from the ground up.",
      "Designed and developed core features, including user authentication (login/signup), profile management, marketplace (shop), lost and found, resources/notes sharing, and society profiles, contributing to both front-end and back-end development.",
      "Currently working on developing and refining the push notification system to effectively engage and retain users.",
      "Specialized in designing the app's user interface, incorporating feedback from team members and the founder to create an intuitive and visually appealing user experience.",
      "While the startup is not yet officially launched, it continues to progress as a promising platform aimed at strengthening college community connections and enhancing student engagement.",
    ],
  ),
  // Add more job experiences here...
];

List<ProjectExperience> projectList = [
  ProjectExperience(
    title: 'Cooig (Startup) | Flutter, Firebase',
    bulletPoints: [
      'Contributing as a founding team member in the design and development of a college-specific social media application using Flutter.',
      'Developed key features including Sell/Rent, Lost & Found, Noticeboard, Profile Page, and Academic Section.',
      'Collaborating with a team to ensure the application meets the needs of the college community.',
    ],
    technologies: 'Flutter, Firebase',
    projectLink:
        'https://drive.google.com/drive/folders/1jirF40swqdENVyWvGIHZ0Cer_0GMrklP', // Add actual link
    startDate: 'Present',
    endDate: '',
    color: Colors.blue, // You can change the color as needed
  ),
  ProjectExperience(
    title: 'Mom_Me App | Flutter, Firebase',
    bulletPoints: [
      'Developing an app for the adoption of children, allowing orphans to find loving and caring parents.',
      'Created an easy and streamlined process for prospective parents to adopt children and provide a safe home.',
      'Integrated features like profile creation, child matching, and communication tools for prospective parents and child care institutions.',
      'Focused on security, privacy, and creating a transparent adoption process.',
    ],
    technologies: 'Flutter, Firebase',
    projectLink: 'https://github.com/bushra931/Mom_Me_app', // Add actual link
    startDate: 'Jan 2025', // Replace with actual date
    endDate: 'present', // Replace with actual date
    color: Colors.pink, // You can change the color as needed
  ),
  ProjectExperience(
    title: 'MammoScope | Machine learning Model',
    bulletPoints: [
      'Developed a breast cancer prediction model using Python and Scikit-learn.',
      'Achieved 97.37% accuracy in predicting breast cancer.',
      'The model leverages machine learning algorithms for early detection and supports clinical decision-making.',
    ],
    technologies: 'Python, Scikit-learn',
    projectLink:
        'https://github.com/bushra931/Breast_cancer_prediction', // Add actual link
    startDate: 'Dec 2024', // Replace with actual date
    endDate: '', // Replace with actual date
    color: Colors.orange, // You can change the color as needed
  ),
  ProjectExperience(
    title: 'FacultyNotes-IGDTUW | HTML, CSS',
    bulletPoints: [
      'Developed a basic website for IGDTUW to organize and display faculty notes by name.',
      'Ensured easy access to exam-related materials and optimized academic content storage.',
      'Improved accessibility and usability for students to quickly find notes.',
    ],
    technologies: 'HTML, CSS',
    projectLink:
        'https://bushra931.github.io/FacultyNotesIgdtuw/', // Add actual link
    startDate: 'Present',
    endDate: '',
    color: Colors.green, // You can change the color as needed
  ),
];

const String linkedIn = "https://www.linkedin.com/in/bushra-khan-a9ba06287";
const String github = "https://github.com/bushra931";

const String resumeLink =
    "https://drive.google.com/drive/folders/1jfYIr9kUkwkBa1I8a-4_QzC0AVOC4tVY";
const String email = "deepakmittal941@gmail.com";
String introduction =
    "Hello! I am a second-year engineering student specializing in Computer Science with a focus on Artificial Intelligence. Passionate about innovation, I enjoy exploring new ideas and designing impactful, user-friendly products.\n\nI have hands-on experience in app development using Flutter and am currently deepening my knowledge to master its advanced features. My skills also include front-end and back-end development, Firebase integration, and UI/UX design, enabling me to build comprehensive solutions.\n\nAs the Secretary of Zenovate, a startup-focused society, and the organizer of Taarangana, our college’s cultural event, I have honed my leadership and event management skills.\n\nI am dedicated to continuous learning and combining technical expertise with creativity to drive meaningful innovation.";

List<SkillsModel> skills = [
  SkillsModel(skillName: "Flutter", colorS: Colors.blue, iconPath: "random"),
  SkillsModel(
    skillName: "Firebase",
    colorS: Colors.lightGreen,
  ),
  SkillsModel(
    skillName: "Github",
    colorS: Colors.yellow,
  ),
  SkillsModel(
    skillName: "Dart",
    colorS: Colors.blue,
  ),
  SkillsModel(
    skillName: "Firebase",
    colorS: Colors.black,
  ),
  SkillsModel(
    skillName: "HTML & CSS",
    colorS: Colors.blueGrey,
  ),
  SkillsModel(
    skillName: "Machine learning(beginner)",
    colorS: Colors.grey,
  ),
  SkillsModel(
    skillName: "MySQL",
    colorS: Colors.lime,
  ),
];

List<SkillsModel> languages = [
  SkillsModel(skillName: "Hindi", colorS: Colors.black),
  SkillsModel(skillName: "English", colorS: Colors.blueGrey),
];
