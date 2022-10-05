import 'package:cat_facts/models/cat_fact_dto/cat_fact_dto.dart';
import 'package:cat_facts/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class FactHistoryCard extends StatelessWidget {
  final CatFactDto catFactDto;
  const FactHistoryCard({
    required this.catFactDto,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        height: 128.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Image.network(catFactDto.img!),
            ),
            Expanded(
              flex: 5,
              child: Text(
                catFactDto.fact!,
                style: AppTextStyles.textStyle14w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
