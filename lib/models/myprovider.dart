import 'dart:io';

import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {


  String fullName = '';
  String email = '';
  String phone = '';
  String address = '';
  String dateOfBirth = '';
  addContactInfo(String fullName, String email, String phone, String address, String dateOfBirth) {
    this.fullName = fullName;
    this.email = email;
    this.phone = phone;
    this.address = address;
    this.dateOfBirth = dateOfBirth;
    notifyListeners();
  }
  setDateOfBirth(String dateOfBirth) {
    this.dateOfBirth = dateOfBirth;
    notifyListeners();
  }

  String personalStatement = '';
  setPersonalStatement(String personalStatement) {
    this.personalStatement = personalStatement;
    notifyListeners();
  }



  String companyName = '';
  String jobTitle = '';
  String companyDetails = '';
  String startDateCareer = '';
  String endDateCareer = '';
  addCareer(String companyName, String jobTitle, String companyDetails, String startDateCareer, String endDateCareer) {
    this.companyName = companyName;
    this.jobTitle = jobTitle;
    this.companyDetails = companyDetails;
    this.startDateCareer = startDateCareer;
    this.endDateCareer = endDateCareer;
    notifyListeners();
  }
  setStartDateCareer(String startDateCareer) {
    this.startDateCareer = startDateCareer;
    notifyListeners();
  }
  setEndDateCareer(String endDateCareer) {
    this.endDateCareer = endDateCareer;
    notifyListeners();
  }




  String schoolName = '';
  String degree = '';
  String fieldOfStudy = '';
  String grade = '';
  String startDateEducation = '';
  String endDateEducation = '';
  addEducation(String schoolName, String degree, String fieldOfStudy, String grade, String startDateEducation, String endDateEducation) {
    this.schoolName = schoolName;
    this.degree = degree;
    this.fieldOfStudy = fieldOfStudy;
    this.grade = grade;
    this.startDateEducation = startDateEducation;
    this.endDateEducation = endDateEducation;
    notifyListeners();
  }
  setStartDateEducation(String startDateEducation) {
    this.startDateEducation = startDateEducation;
    notifyListeners();
  }
  setEndDateEducation(String endDateEducation) {
    this.endDateEducation = endDateEducation;
    notifyListeners();
  }


  String keySkills= '';
  setKeySkills(String keySkills) {
    this.keySkills = keySkills;
    notifyListeners();
  }


  String projectTitle= '';
  String projectDetails= '';
  String projectStartDate= '';
  String projectEndDate= '';
  addProject(String projectTitle, String projectDetails, String projectStartDate, String projectEndDate) {
    this.projectTitle = projectTitle;
    this.projectDetails = projectDetails;
    this.projectStartDate = projectStartDate;
    this.projectEndDate = projectEndDate;
    notifyListeners();
  }
  setProjectStartDate(String projectStartDate) {
    this.projectStartDate = projectStartDate;
    notifyListeners();
  }
  setProjectEndDate(String projectEndDate) {
    this.projectEndDate = projectEndDate;
    notifyListeners();
  }


  String interests= '';
  setinterests(String interests) {
    this.interests = interests;
    notifyListeners();
  }


  String referenceName = '';
  String referenceJobTitle = '';
  String referenceCompany = '';
  String referencePhone = '';
  String referenceEmail = '';
  addReference(String referenceName, String referenceJobTitle, String referenceCompany, String referencePhone, String referenceEmail) {
    this.referenceName = referenceName;
    this.referenceJobTitle = referenceJobTitle;
    this.referenceCompany = referenceCompany;
    this.referencePhone = referencePhone;
    this.referenceEmail = referenceEmail;
    notifyListeners();
  }











}