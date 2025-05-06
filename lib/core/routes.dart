
import 'package:finance_manage/views/pages/home.dart';
import 'package:finance_manage/views/pages/saving.dart';
import 'package:finance_manage/views/pages/welcome.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  GetPage(
    name: '/welcome',
    page: () => const Welcome(),
    transition: Transition.native,
  ),
  GetPage(
    name: '/home',
    page: () => const Home(),
    transition: Transition.native,
  ),
  GetPage(
    name: '/savings',
    page: () => const Savings(),
    transition: Transition.native,
  ),


];