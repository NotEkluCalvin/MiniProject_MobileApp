import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:exvet/common/color_extension.dart';
import 'package:exvet/common_widget/budgets_row.dart';
import 'package:exvet/common_widget/custom_arc_180_painter.dart';

import '../settings/settings_view.dart';

class SpendingBudgetsView extends StatefulWidget {
  const SpendingBudgetsView({super.key});

  @override
  State<SpendingBudgetsView> createState() => _SpendingBudgetsViewState();
}

class _SpendingBudgetsViewState extends State<SpendingBudgetsView> {
  List budgetArr = [
    {
      "name": "Auto & Transport",
      "icon": "assets/img/auto_&_transport.png",
      "spend_amount": "25.00",
      "total_budget": "1500",
      "left_amount": "1475.00",
      "color": TColor.secondaryG
    },
    {
      "name": "Entertainment & Miscellaneous",
      "icon": "assets/img/entertainment.png",
      "spend_amount": "400.00",
      "total_budget": "1000",
      "left_amount": "600.00",
      "color": TColor.secondary50
    },
    {
      "name": "Utilities & Food",
      "icon": "assets/img/security.png",
      "spend_amount": "235.00",
      "total_budget": "2500",
      "left_amount": "2265.00",
      "color": TColor.primary10
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: TColor.gray,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, right: 10),
              child: Row(
                children: [
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingsView()));
                      },
                      icon: Image.asset("assets/img/settings.png",
                          width: 25, height: 25, color: TColor.gray30))
                ],
              ),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  width: media.width * 0.5,
                  height: media.width * 0.30,
                  child: CustomPaint(
                    painter: CustomArc180Painter(
                      drwArcs: [
                        ArcValueModel(color: TColor.secondaryG, value: 0.50),
                        ArcValueModel(color: TColor.secondary50, value: 16.00),
                        ArcValueModel(color: TColor.primary10, value: 8.50),
                      ],
                      end: 50,
                      width: 12,
                      bgWidth: 8,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "GHS660",
                      style: TextStyle(
                          color: TColor.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "of GHS5,000 budget",
                      style: TextStyle(
                          color: TColor.gray30,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {},
                child: Container(
                  height: 64,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: TColor.border.withOpacity(0.1),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your budgets are on track 👍",
                        style: TextStyle(
                            color: TColor.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: budgetArr.length,
                itemBuilder: (context, index) {
                  var bObj = budgetArr[index] as Map? ?? {};

                  return BudgetsRow(
                    bObj: bObj,
                    onPressed: () {},
                  );
                }),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {},
                child: DottedBorder(
                  dashPattern: const [5, 4],
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(16),
                  color: TColor.border.withOpacity(0.1),
                  child: Container(
                    height: 64,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Add new category ",
                          style: TextStyle(
                              color: TColor.gray30,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        Image.asset(
                          "assets/img/add.png",
                          width: 12,
                          height: 12,
                          color: TColor.gray30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 110,
            ),
          ],
        ),
      ),
    );
  }
}
