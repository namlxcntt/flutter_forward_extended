import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_forward_extend/presentation/create/bloc/create_note_bloc.dart';
import 'package:flutter_forward_extend/presentation/utils/extensions/export_extensions.dart';

class CreateNotePage extends StatefulWidget {
  const CreateNotePage({Key? key}) : super(key: key);

  @override
  State<CreateNotePage> createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  late TextEditingController _titleController;
  late TextEditingController _contentController;

  String? textErrorTitle;
  String? textErrorDescription;

  @override
  void initState() {
    _titleController = TextEditingController();
    _contentController = TextEditingController();
    super.initState();
  }

  onClickActionDone() {
    String title = _titleController.text;
    String content = _titleController.text;
    context
        .read<CreateNoteBloc>()
        .add(CreateNoteWithValue(title: title, description: content));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text(
          context.getString().createNotes,
          style: context.themeText().titleLarge,
        ),
        actions: [
          GestureDetector(
            onTap: onClickActionDone,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(
                Icons.done,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: BlocListener<CreateNoteBloc, CreateNoteState>(
        listener: (context, state) {
          if (state is CreateSuccessWithValueState) {
            context.pop();
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: sizeMedium),
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  errorText: textErrorTitle,
                  hintText: context.getString().title,
                  hintStyle: context
                      .themeText()
                      .displayMedium
                      ?.copyWith(fontSize: sizeLargeSmall, color: Colors.grey),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  controller: _contentController,
                  maxLines: 20,
                  decoration: InputDecoration(
                    errorText: textErrorDescription,
                    hintText: context.getString().contentTyping,
                    hintStyle: context.themeText().displayMedium?.copyWith(
                        fontSize: sizeLargeSmall, color: Colors.grey),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
