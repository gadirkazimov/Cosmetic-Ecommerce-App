import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_1/pages/home_page/home_page.dart';
import 'package:task_1/pages/search_page/search_page.dart';



class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _currentIndex = 0;

  List pages = [
    const HomePage(),
    const SearchPage(),
    Container(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.red,
          items:  [
            BottomNavigationBarItem(
                label: 'Главная',
                icon: SvgPicture.asset('assets/icons/main.svg',
                  colorFilter: _currentIndex == 0
                      ? const ColorFilter.mode(Colors.black, BlendMode.srcIn)
                      : const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                )
            ),
            BottomNavigationBarItem(
                label: 'Каталог',
                icon: SvgPicture.asset('assets/icons/search.svg',
                  colorFilter: _currentIndex == 1
                      ? const ColorFilter.mode(Colors.black, BlendMode.srcIn)
                      : const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                )
            ),
            BottomNavigationBarItem(
                label: 'Корзина',
                icon: SvgPicture.asset('assets/icons/cart.svg',
                  colorFilter: _currentIndex == 2
                      ? const ColorFilter.mode(Colors.black, BlendMode.srcIn)
                      : const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                )
            ),
            BottomNavigationBarItem(
                label: 'Профиль',
                icon: SvgPicture.asset('assets/icons/profile.svg',
                  colorFilter: _currentIndex == 3
                      ? const ColorFilter.mode(Colors.black, BlendMode.srcIn)
                      : const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                )
            )
          ]
      ),
    );
  }
}
