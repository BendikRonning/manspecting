import 'package:flutter/material.dart';

class KnowledgeScreen extends StatefulWidget {
  static const String id = 'knowledge_screen';
  @override
  _KnowledgeScreenState createState() => _KnowledgeScreenState();
}

class _KnowledgeScreenState extends State<KnowledgeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text('Knowlegde Screen'),
    ));
  }
}
