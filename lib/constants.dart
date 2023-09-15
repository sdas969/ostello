import 'package:flutter/material.dart';
import 'package:ostello/models/category_model.dart';
import 'package:ostello/models/filter_model.dart';
import 'package:ostello/models/filter_section_model.dart';
import 'package:ostello/models/institute_model.dart';

final instituteList = [
  Institute(
      imgURL: "assets/images/aakash.png",
      name: "Aakash",
      tags: ["Physics", "Chemistry", "Maths", "Biology"]),
  Institute(
      imgURL: "assets/images/afd.png",
      name: "Aakash",
      tags: ["Physics", "Chemistry", "Maths", "Biology"]),
  Institute(
      imgURL: "assets/images/global.png",
      name: "Aakash",
      tags: ["Physics", "Chemistry", "Maths", "Biology"]),
  Institute(
      imgURL: "assets/images/jamboree.png",
      name: "Aakash",
      tags: ["Physics", "Chemistry", "Maths", "Biology"]),
  Institute(
      imgURL: "assets/images/mcc.png",
      name: "Aakash",
      tags: ["Physics", "Chemistry", "Maths", "Biology"]),
  Institute(
      imgURL: "assets/images/vr.png",
      name: "Aakash",
      tags: ["Physics", "Chemistry", "Maths", "Biology"]),
];

const List<String> recentSearches = [
  "Medical coaching",
  "Medical entrance exams"
];

List<CategoryModel> categoryList = [
  CategoryModel(name: "Academy", imgURL: "assets/images/academy.png"),
  CategoryModel(name: "Skills", imgURL: "assets/images/skills.png"),
  CategoryModel(name: "Study Abroad", imgURL: "assets/images/abroad.png"),
];

List<FilterModel> filterList = [
  FilterModel(name: "Filters", icon: Icons.settings),
  FilterModel(name: "Nearest"),
  FilterModel(name: "Entrance Exam"),
  FilterModel(name: "Grade"),
];

List<FilterSectionModel> filterSectionList = [
  FilterSectionModel(name: "Grade/ Class Level 🪜", tagList: [
    "6th",
    "7th",
    "8th",
    "9th",
    "10th",
    "11th",
    "12th",
    "12th dropout",
    "Undergraduate"
  ]),
  FilterSectionModel(name: "Education Board 🎓", tagList: [
    "6th",
    "7th",
    "8th",
    "9th",
    "10th",
    "11th",
    "12th",
    "12th dropout",
    "Undergraduate"
  ]),
  FilterSectionModel(name: "Stream 🎯", tagList: [
    "6th",
    "7th",
    "8th",
    "9th",
    "10th",
    "11th",
    "12th",
    "12th dropout",
    "Undergraduate"
  ]),
  FilterSectionModel(name: "Subject/ Topic 📚", tagList: [
    "6th",
    "7th",
    "8th",
    "9th",
    "10th",
    "11th",
    "12th",
    "12th dropout",
    "Undergraduate"
  ]),
  FilterSectionModel(name: "Mode Of Coaching 🎒", tagList: [
    "6th",
    "7th",
    "8th",
    "9th",
    "10th",
    "11th",
    "12th",
    "12th dropout",
    "Undergraduate"
  ]),
  FilterSectionModel(name: "Course Type/ Duration/ Batches ⏳", tagList: [
    "6th",
    "7th",
    "8th",
    "9th",
    "10th",
    "11th",
    "12th",
    "12th dropout",
    "Undergraduate"
  ])
];

const _kFontFam = 'MyFlutterApp';
const String? _kFontPkg = null;
const IconData icon7 =
    IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData icon6 =
    IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData icon5 =
    IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData icon4 =
    IconData(0xe804, fontFamily: _kFontFam, fontPackage: _kFontPkg);
const IconData icon3 =
    IconData(0xe805, fontFamily: _kFontFam, fontPackage: _kFontPkg);
