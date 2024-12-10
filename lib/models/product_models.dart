import 'package:flutter/material.dart';



class NewModels extends ChangeNotifier {

  final List _newItems = [
    ['assets/images/1.png', 'Сыворотка', 'Unstress Total','Serenity Serum', '10 195'],
    ['assets/images/2.png', 'Тоник', 'Unstress Revitalizing', 'Toner', '3095'],
    ['assets/images/1.png', 'Сыворотка', 'Unstress Total', 'Serenity Serum', '10 195'],
    ['assets/images/2.png', 'Тоник', 'Unstress', 'Revitalizing Toner', '3095'],
    ['assets/images/1.png', 'Сыворотка', 'Unstress', 'Total Serenity Serum', '10 195'],
    ['assets/images/2.png', 'Тоник', 'Unstress', 'Revitalizing Toner', '3095'],
  ];

  final List _filterText = [
    ['Сортировка', 'По популярности'],
    ['Тип кожи', 'Жирная'],
    ['Тип средства', 'Все'],
    ['Проблема кожи', 'Не выбрано'],
    ['Эффект средства', 'Увлаженение'],
    ['Линия косметики', 'Все'],
  ];

  final List _categories = [
    ['assets/images/3.png', 'Наборы'],
    ['assets/images/4.png', 'Для лица'],
    ['assets/images/5.png', 'Для глаз'],
    ['assets/images/6.png', 'Для тела']
  ];

  final List _homeCare = [
    ['assets/images/14.png', 'Демакияж'],
    ['assets/images/7.png', 'Очищение'],
    ['assets/images/8.png', 'Сыворотка'],
    ['assets/images/9.png', 'Дневной крем'],
  ];

  final List _discountItems = [
    ['assets/images/10.png', 'Сыворотка', 'Muse Serum','Supreme', '10 195 ₽', '10 195 ₽'],
    ['assets/images/11.png', 'Крем', 'Unstress Revitalizing', 'Toner', '1595 ₽', '3195 ₽'],
  ];

  final List _popularItems = [
    ['assets/images/12.png', 'Сыворотка', 'Forever Young- Total ','Renewal Serum', '10 195 ₽', ],
    ['assets/images/13.png', 'Осветляющая маска', 'Illustious Mask', ' ', '1595 ₽', ],
  ];

  get newItems => _newItems;

  get filterText => _filterText;

  get categories => _categories;

  get homeCare => _homeCare;

  get discountItems => _discountItems;

  get popularItems => _popularItems;
}