import 'package:flutter/material.dart';
import 'package:flutter_forward_extend/domain/model/note_model.dart';
import 'package:flutter_forward_extend/presentation/utils/extensions/date_time_extensions.dart';
import 'package:flutter_forward_extend/presentation/utils/extensions/export_extensions.dart';

import '../utils/theme/color.dart';

class ItemNoteHome extends StatelessWidget {
  final Note note;

  const ItemNoteHome({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: colorGreyBg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DateTimeUtils.format(note.dateCreated),
            style: context.themeText().displaySmall,
          ),
          const SizedBox(height: 16,),
          Text(
            note.title,
            style: context.themeText().titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 20
            ),
          ),
          const SizedBox(height: 8,),
          Text(
            note.description,
            style: context.themeText().displayMedium?.copyWith(
                fontSize: 13,
              color:  Colors.black.withOpacity(0.7)
            ),
          )
        ],
      ),
    );
  }
}
