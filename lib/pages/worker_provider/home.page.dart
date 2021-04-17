import 'package:flutter/material.dart';
import 'package:my_professional/breakpoints.dart';
import 'package:my_professional/pages/worker_provider/bio.page.dart';
import 'package:my_professional/widgets/navbar/mobile_app_bar.widget.dart';
import 'package:my_professional/widgets/navbar/web_app_bar.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.black87,
          appBar: constraints.maxWidth <= mobileBreakpoint
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 72),
                ),
          drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: [
                  BioPage(),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal:
                                  constraints.maxWidth >= tabletBreakpoint
                                      ? 10
                                      : 16),
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 300,
                              height: 300,
                              color: Colors.red,
                            );
                          });
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
