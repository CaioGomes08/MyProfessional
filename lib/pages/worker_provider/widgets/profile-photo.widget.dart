import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(horizontal: 80),
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(
                'https://scontent.fcpq5-1.fna.fbcdn.net/v/t1.6435-9/173784600_3811941975527557_4838556281282819131_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGTDWjEp4IuUyYcI1VJMzp2M7YcWOA65tszthxY4Drm2zHwGnuwqu_yUEPkDxtQvIENbRXACzid24nLUgo4iYLJ&_nc_ohc=RVAYnEtK1doAX-chXxP&_nc_ht=scontent.fcpq5-1.fna&oh=95e17cc3bc35784805eadb0efd24757b&oe=609E1E44'),
          ),
        ),
      ),
    );
  }
}
