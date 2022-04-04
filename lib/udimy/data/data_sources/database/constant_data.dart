import 'package:flutter/material.dart';

import '../../../domain/model/course/course_model.dart';

const String URL = 'https://udemy2server.herokuapp.com/rest';
//const String URL = 'http://0.0.0.0:8080/rest';

List<CourseModel> courseList = [
  CourseModel(
    id: 0,
    isCart: false,
    title: 'Python',
    image: 'web/assets/images/meeting.jpeg',
    personImage: 'web/assets/images/pell.jpg',
    personName: 'pillGate spillGate spillGate spillGates',
    oldPrice: 1000,
    disPrice: 10 / 100,
    newPrice: newPrice(oldPrice: 1000, disPrice: 10 / 100),
  ),
  CourseModel(
    id: 1,
    isCart: false,
    title: 'IELTS Academic Test ',
    image: 'web/assets/images/meeting.jpeg',
    personImage: 'web/assets/images/pell.jpg',
    personName: 'Marilyn Monroe',
    oldPrice: 1025,
    disPrice: 20 / 100,
    newPrice: newPrice(oldPrice: 1025, disPrice: 20 / 100),
  ),
  CourseModel(
    id: 2,
    isCart: false,
    title: 'Financial Markets ',
    image: 'web/assets/images/meeting.jpeg',
    personImage: 'web/assets/images/Student-PNG-Clipart.png',
    personName: 'Abraham Lincoln',
    oldPrice: 1258.60,
    disPrice: 5 / 100,
    newPrice: newPrice(oldPrice: 1258.60, disPrice: 5 / 100),
  ),
  CourseModel(
    id: 3,
    isCart: false,
    title: 'Learning from deep learning.ai',
    image: 'web/assets/images/meeting.jpeg',
    personImage: 'web/assets/images/pell.jpg',
    personName: 'Nelson Mandela ',
    oldPrice: 928.45,
    disPrice: 10 / 100,
    newPrice: newPrice(oldPrice: 928.45, disPrice: 30 / 100),
  ),
  CourseModel(
    id: 4,
    isCart: false,
    title: 'Data Science',
    image: 'web/assets/images/meeting.jpeg',
    personImage: 'web/assets/images/pell.jpg',
    personName: 'John F. Kennedy',
    oldPrice: 2548,
    disPrice: 0 / 100,
    newPrice: newPrice(oldPrice: 2548, disPrice: 0 / 100),
  ),
  CourseModel(
    id: 5,
    isCart: false,
    title: 'Python',
    image: 'web/assets/images/meeting.jpeg',
    personImage: 'web/assets/images/pell.jpg',
    personName: 'pill Gates',
    oldPrice: 1000,
    disPrice: 0 / 100,
    newPrice: newPrice(oldPrice: 1000, disPrice: 0 / 100),
  ),
  CourseModel(
    id: 6,
    title: 'Python',
    image: 'web/assets/images/meeting.jpeg',
    personImage: 'web/assets/images/user.png',
    personName: 'Muhammad Ali',
    oldPrice: 928,
    disPrice: 0 / 100,
    newPrice: newPrice(oldPrice: 928, disPrice: 10 / 100),
    isCart: false,
  ),
];

List<CourseModel> coursesListCart = [];
