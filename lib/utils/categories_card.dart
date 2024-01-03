import 'package:flutter/material.dart';
import 'package:travelku/pages/list_by_categories.dart';

final List<String> CategoriesImage = <String>[
  'assets/beachumbrella.png',
  'assets/emojione_mountain.png',
  'assets/emojione-v1_camping.png',
  'assets/twemoji_hindu-temple.png',
  'assets/openmoji_tokyo-tower.png',
  'assets/trees.png',
  'assets/twemoji_diving-mask.png',
  'assets/twemoji_snow-capped-mountain.png',
];

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18.0),
      child: Row(
        children: [
          CardCategories(
            iconCategories: 'assets/beachumbrella.png',
            desc: 'Beach',
          ),
          CardCategories(
            iconCategories: 'assets/emojione-v1_camping.png',
            desc: 'Camping',
          ),
          CardCategories(
            iconCategories: 'assets/twemoji_hindu-temple.png',
            desc: 'Historical \n places',
          ),
          CardCategories(
            iconCategories: 'assets/openmoji_tokyo-tower.png',
            desc: 'Town',
          ),
          CardCategories(
            iconCategories: 'assets/trees.png',
            desc: 'Forest',
          ),
          CardCategories(
            iconCategories: 'assets/twemoji_diving-mask.png',
            desc: 'Diving',
          ),
          CardCategories(
            iconCategories: 'assets/twemoji_snow-capped-mountain.png',
            desc: 'Winter',
          ),
        ],
      ),
    );
  }
}

class CardCategories extends StatelessWidget {
  final String iconCategories;
  final String desc;
  const CardCategories({
    Key? key,
    required this.iconCategories,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: ((context) => ListByCategories())));        },
        child: SizedBox(
          width: 130,
          height: 130,
          child: Card(
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      iconCategories,
                      width: 45,
                      height: 45,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      desc,
                      style: const TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
