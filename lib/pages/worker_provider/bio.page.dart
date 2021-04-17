import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_professional/breakpoints.dart';
import 'package:my_professional/pages/worker_provider/widgets/biography.widget.dart';
import 'package:my_professional/pages/worker_provider/widgets/profile-photo.widget.dart';

class BioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        if (maxWidth >= tabletBreakpoint) {
          return Row(
            children: [
              ProfilePhoto(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'Caio Vinícius Gomes',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      minFontSize: 18,
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: maxWidth * 0.5,
                      child: AutoSizeText(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla volutpat, odio nec dignissim interdum, enim tortor vestibulum velit,'
                        'quis convallis quam velit ut nibh. Mauris in felis ligula. Fusce id quam lacus. Donec tellus lorem, finibus vel augue quis, facilisis'
                        ' egestas mi. Ut lobortis sollicitudin sapien, sed commodo elit.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        minFontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Biography(),
                  ],
                ),
              )
            ],
          );
        }

        return Container();
      },
    );
  }
}
