// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class NavigationElement {
  String Title;
  String icon;
  PageElement Page;

  NavigationElement(
      {required this.Title, required this.icon, required this.Page});
}

class PageElement {
  List<Component> Items;
  PageElement({required this.Items});
}

enum CompType {
  Text,
  HeroImage,
  QuickLinks,
  Title,
  DetailsLinkedCard,
  ItemScroller,
  Gallery,
  Image,
  Footer,
  ImageWithText,
}

class Component {
  CompType ComponentType;
  Map Details;
  Component({required this.ComponentType, required this.Details});
}
