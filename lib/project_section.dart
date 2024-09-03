import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
      StreamBuilder(
        stream: _firestore.collection('Projects').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData) {
            return Center(child: Text('No data found'));
          }

          final List<DocumentSnapshot> documents = snapshot.data!.docs;

          return ListView.builder(
            shrinkWrap: true,
            itemCount: documents.length,
            itemBuilder: (context, index) {
              Map<String, dynamic> data = documents[index].data() as Map<String, dynamic>;

              return Card(

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                       height: 35,
                        color: Colors.blue,
                        child: Center(
                          child: Image.network(
                            documents[index].get('image'),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        documents[index].get('Project Name'),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        documents[index].get('description'),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      )
        ],
      ),
    );
  }
}