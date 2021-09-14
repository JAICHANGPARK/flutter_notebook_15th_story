import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep911_real_estate_app/model/real_estate.dart';

class RealEstateCardWidget extends StatelessWidget {
  final RealEstate realEstate;
  RealEstateCardWidget({Key? key, required this.realEstate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(image: NetworkImage(realEstate.img ?? ""), fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$ ${realEstate.price ?? ""}",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                realEstate.vendor ?? "",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Text(
          realEstate.title ?? "",
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Icon(
              Icons.bed_outlined,
              size: 20,
              color: Colors.grey,
            ),
            SizedBox(width: 4),
            Text(
              "${realEstate.rooms ?? 2}",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(width: 8),
            Icon(
              Icons.bathtub_outlined,
              size: 20,
              color: Colors.grey,
            ),
            SizedBox(width: 4),
            Text(
              "${realEstate.bathroom ?? 2}",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(width: 8),
            Icon(
              Icons.apps,
              size: 20,
              color: Colors.grey,
            ),
            SizedBox(width: 4),
            Text(
              "${realEstate.block ?? 2}",
              style: TextStyle(color: Colors.grey),
            ),
            Spacer(),
            Text(
              "${realEstate.type ?? 2}",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
