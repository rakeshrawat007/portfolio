import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfoio/project_section.dart';

import 'about.dart';
import 'footer.dart';
import 'header.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return Column(
                children: [
                  Header(),
                  AboutSection(),
                  ProjectsSection(),
                  Footer(),
                ],
              );
            } else {
              return Column(
                children: [
                  Header(),
                  AboutSection(),
                  ProjectsSection(),
                  Footer(),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}