import 'package:flutter/material.dart';
import 'package:ticketapp/base/res/styles/app_style.dart';
import 'package:ticketapp/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticketapp/base/widgets/big_circle.dart';
import 'package:ticketapp/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.width * 0.85);
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // depeture and destiniton with icon
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headLineStyle2
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidegt(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.56,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: AppStyles.headLineStyle2
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 3,
                  ),
                  // with timing depature and destinatoin
                  Row(
                    children: [
                      Text(
                        "New-York",
                        style: AppStyles.headLineStyle2
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Center(
                        child: Text(
                          "8H 30M",
                          style: AppStyles.headLineStyle2
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Expanded(child: Container()),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: AppStyles.headLineStyle2
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppStyles.tickeOrange,
              child: const Row(
                children: [
                  BigCircle(isRight: true,),
                  Expanded(
                    child: SizedBox(
                      height: 20,
                      child: AppLayoutBuilderWidegt(
                        randomDivider: 10,
                      ),
                    ),
                  ),
                  BigCircle(isRight: false,),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.tickeOrange,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // depeture and destiniton with icon
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headLineStyle2
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidegt(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                                angle: 1.56,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: AppStyles.headLineStyle2
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 3,
                  ),
                  // with timing depature and destinatoin
                  Row(
                    children: [
                      Text(
                        "New-York",
                        style: AppStyles.headLineStyle2
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Center(
                        child: Text(
                          "8H 30M",
                          style: AppStyles.headLineStyle2
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Expanded(child: Container()),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: AppStyles.headLineStyle2
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
