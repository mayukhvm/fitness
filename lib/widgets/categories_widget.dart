import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/category_model.dart';

List<CategoryModel> categories = [];


class category_widget extends StatefulWidget {
  const category_widget({super.key});



  @override
  State<category_widget> createState() => _category_widgetState();
}

class _category_widgetState extends State<category_widget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left:20),
          child: Text(
            'Category',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
        const SizedBox(height: 15,),
        Container(
          height: 120,
          child: ListView.separated(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(
                left: 20,
                right: 20
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 25,),
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                decoration: BoxDecoration(
                    color: categories[index].boxColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(categories[index].iconPath),
                      ),
                    ),
                    Text(
                      categories[index].name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 14
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}