import 'package:flutter/material.dart';
import 'package:flutter_forward_extend/presentation/utils/extensions/export_extensions.dart';

class CreateNotePage extends StatefulWidget {
  const CreateNotePage({Key? key}) : super(key: key);

  @override
  State<CreateNotePage> createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text(
          context.getString().notes,
          style: context.themeText().titleLarge,
        ),
      ),
    );
  }

}
