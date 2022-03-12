import 'package:flutter/material.dart';

IconData IconParser(String nav) {
  print("Icon Parsing >>" + nav);
  switch (nav) {
    case 'nirmala':
      return Icons.home;
    case 'info':
      return Icons.info;
    case 'gradcap':
      return Icons.school;
    case 'student':
      return Icons.person;
    case 'exam':
      return Icons.note_alt_sharp;
    case 'library':
      return Icons.collections_bookmark;
    case 'award':
      return Icons.stars_sharp;
    case 'sports':
      return Icons.sports_basketball_sharp;
    case 'placement':
      return Icons.work;
    case 'alumni':
      return Icons.people_alt_sharp;
    case 'feedback':
      return Icons.feedback;
    default:
      return Icons.error;
  }
}

String IconToString(IconData d) {
  if (Icons.home == d) {
    return 'nirmala';
  } else if (Icons.info == d) {
    return 'info';
  } else if (Icons.school == d) {
    return 'gradcap';
  } else if (Icons.person == d) {
    return 'student';
  } else if (Icons.note_alt_sharp == d) {
    return 'exam';
  } else if (Icons.collections_bookmark == d) {
    return 'library';
  } else if (Icons.stars_sharp == d) {
    return 'award';
  } else if (Icons.sports_basketball_sharp == d) {
    return 'sports';
  } else if (Icons.work == d) {
    return 'placement';
  } else if (Icons.people_alt_sharp == d) {
    return 'alumni';
  } else if (Icons.feedback == d) {
    return 'feedback';
  } else {
    return "err";
  }
}
