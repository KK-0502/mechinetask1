import 'package:flutter/material.dart';
import 'package:mechinenoti/Common/heading.dart';

class TodayLike extends StatelessWidget {
  const TodayLike({super.key});

  static const List<Map<String, dynamic>> items = [
    {
      'icon': Icons.fastfood_rounded,
      'label': 'Food\nDelivery',
      'color': Color(0xFFEDC432),
    },
    {
      'icon': Icons.medication_liquid_sharp,
      'label': 'Medicines',
      'color': Color(0xFF94D363),
    },
    {'icon': Icons.pets, 'label': 'Pet\nSupplies', 'color': Color(0xFFFFB044)},
    {
      'icon': Icons.card_giftcard_outlined,
      'label': 'Gifts',
      'color': Color(0xFFD37070),
    },
    {'icon': Icons.egg, 'label': 'Meat', 'color': Color(0xFFE77944)},
    {
      'icon': Icons.woman_outlined,
      'label': 'Cosmetic',
      'color': Color(0xFFEDC432),
    },
    {
      'icon': Icons.menu_book_outlined,
      'label': 'Stationary',
      'color': Color(0xFF87DDB7),
    },
    {
      'icon': Icons.store_rounded,
      'label': 'Stores',
      'color': Color(0xFFFFE6A2),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Heading(headings: "What would you like to do today?"),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.6,
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                    child: Center(
                      child: Icon(item['icon'], size: 30, color: item['color']),
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Flexible(
                  child: Text(
                    item['label'],
                    style: const TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            );
          },
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "More",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF29D177),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Color(0xFF29D177),
                size: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
