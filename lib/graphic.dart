import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class GraphicPage extends StatelessWidget {
  const GraphicPage({super.key});

  @override
  Widget build(BuildContext context) {
    // scatter chart
    List<OrdinalData> personalList = [
      OrdinalData(domain: 'Mo', measure: 8),
      OrdinalData(domain: 'Tu', measure: 6),
      OrdinalData(domain: 'We', measure: 8),
      OrdinalData(domain: 'Th', measure: 4),
      OrdinalData(domain: 'Fr', measure: 6),
      OrdinalData(domain: 'Sa', measure: 10),
      OrdinalData(domain: 'Su', measure: 8),
    ];
    List<OrdinalData> privatelList = [
      OrdinalData(domain: 'Mo', measure: 4),
      OrdinalData(domain: 'Tu', measure: 10),
      OrdinalData(domain: 'We', measure: 6),
      OrdinalData(domain: 'Th', measure: 2),
      OrdinalData(domain: 'Fr', measure: 8),
      OrdinalData(domain: 'Su', measure: 6),
    ];
    List<OrdinalData> secretlList = [
      OrdinalData(domain: 'Tu', measure: 2),
      OrdinalData(domain: 'Th', measure: 10),
      OrdinalData(domain: 'Fr', measure: 2),
      OrdinalData(domain: 'Sa', measure: 4),
    ];

    final scatterGroup = [
      OrdinalGroup(
        id: 'personal',
        chartType: ChartType.scatterPlot,
        data: personalList,
        color: const Color.fromRGBO(232, 139, 140, 1),
      ),
      OrdinalGroup(
        id: 'private',
        chartType: ChartType.scatterPlot,
        data: privatelList,
        color: const Color.fromRGBO(143, 153, 235, 1),
      ),
      OrdinalGroup(
        id: 'secret',
        chartType: ChartType.scatterPlot,
        data: secretlList,
        color: const Color.fromRGBO(126, 200, 231, 1),
      ),
    ];

    // barchart
    List<OrdinalData> barListPrivate = [
      OrdinalData(domain: '5', measure: 10),
      OrdinalData(domain: '6', measure: 10),
      OrdinalData(domain: '7', measure: 10),
      OrdinalData(domain: '8', measure: 10),
      OrdinalData(domain: '9', measure: 10),
      OrdinalData(domain: '10', measure: 10),
      OrdinalData(domain: '11', measure: 10),
      OrdinalData(domain: '12', measure: 10),
      OrdinalData(domain: '13', measure: 10),
      OrdinalData(domain: '14', measure: 10),
    ];
    List<OrdinalData> barListPersonal = [
      OrdinalData(domain: '5', measure: 1),
      OrdinalData(domain: '6', measure: 0),
      OrdinalData(domain: '7', measure: 0),
      OrdinalData(domain: '8', measure: 2),
      OrdinalData(domain: '9', measure: 5),
      OrdinalData(domain: '10', measure: 0),
      OrdinalData(domain: '11', measure: 3),
      OrdinalData(domain: '12', measure: 0),
      OrdinalData(domain: '13', measure: 5),
      OrdinalData(domain: '14', measure: 3),
    ];
    List<OrdinalData> barListSecret = [
      OrdinalData(domain: '5', measure: 0),
      OrdinalData(domain: '6', measure: 2),
      OrdinalData(domain: '7', measure: 3),
      OrdinalData(domain: '8', measure: 0),
      OrdinalData(domain: '9', measure: 0),
      OrdinalData(domain: '10', measure: 4),
      OrdinalData(domain: '11', measure: 0),
      OrdinalData(domain: '12', measure: 7),
      OrdinalData(domain: '13', measure: 0),
      OrdinalData(domain: '14', measure: 0),
    ];

    final barGroup = [
      OrdinalGroup(
        id: '1',
        data: barListPersonal,
        color: const Color.fromRGBO(232, 139, 140, 1),
      ),
      OrdinalGroup(
        id: '2',
        data: barListSecret,
        color: const Color.fromRGBO(126, 200, 231, 1),
      ),
      OrdinalGroup(
        id: '3',
        data: barListPrivate,
        color: const Color.fromRGBO(143, 153, 235, 1),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 8,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, bottom: 70 ),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Center(
                child: Text(
                  "Graphic",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  width: 450,
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(249, 250, 253, 1),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text("Priority",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600)),
                          const Spacer(
                            flex: 1,
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            margin: const EdgeInsets.only(right: 3),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(232, 139, 140, 1),
                                shape: BoxShape.circle),
                          ),
                          const Text(
                            "Personal",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            margin: const EdgeInsets.only(right: 3, left: 8),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(143, 153, 235, 1),
                                shape: BoxShape.circle),
                          ),
                          const Text(
                            "Private",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            margin: const EdgeInsets.only(right: 3, left: 8),
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(126, 200, 231, 1),
                                shape: BoxShape.circle),
                          ),
                          const Text(
                            "Secret",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text(
                            "Task Perday",
                            style: TextStyle(
                                height: 3,
                                fontSize: 14,
                                color: Color.fromRGBO(133, 134, 169, 1)),
                          ),
                        ],
                      ),
                      // scatterchart
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: DChartComboO(
                          configRenderPoint: ConfigRenderPoint(radiusPx: 6),
                          domainAxis:
                              const DomainAxis(showLine: false, thickLength: 0),
                          measureAxis: const MeasureAxis(
                              showLine: false,
                              thickLength: 0,
                              desiredTickCount: 4),
                          groupList: scatterGroup,
                        ),
                      ),
                    ],
                  )),
              const Row(
                children: [
                  Text(
                    "Your Activity",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Container(
                width: 450,
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(249, 250, 253, 1),
                ),
                child: Column(children: [
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        size: 18,
                      ),
                      Text(
                        "April 2024",
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    ],
                  ),
                  // barchart
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: DChartBarO(
                      configRenderBar: ConfigRenderBar(
                          maxBarWidthPx: 9,
                          radius: 10,
                          stackedBarPaddingPx: 3,
                          barGroupingType: BarGroupingType.groupedStacked),
                      domainAxis:
                          const DomainAxis(showLine: false, thickLength: 0),
                      measureAxis: const MeasureAxis(
                        showLine: false,
                        thickLength: 0,
                        noRenderSpec: true,
                        desiredTickCount: 11,
                      ),
                      groupList: barGroup,
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
