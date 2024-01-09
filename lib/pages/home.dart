import 'package:flutter/material.dart';
import 'package:fitness/models/category_model.dart';
import 'package:fitness/models/diet_model.dart';
import 'package:fitness/models/popular_model.dart';


import '../widgets/appbar_widget.dart';
import '../widgets/categories_widget.dart';
import '../widgets/diet_widget.dart';
import '../widgets/popular_widget.dart';
import '../widgets/search_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // List<CategoryModel> categories = [];
  // List<DietModel> diets = [];
  // List<PopularDietsModel> popularDiets = [];

  void _getInitialInfo() {
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiets();
    popularDiets = PopularDietsModel.getPopularDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          search_widget(),
          const SizedBox(height: 40,),
          category_widget(),
          const SizedBox(height: 40,),
          dietSection(),
          const SizedBox(height: 40,),
          popular_widget(),
          const SizedBox(height: 40,),
        ],
      ),
    );
  }



}