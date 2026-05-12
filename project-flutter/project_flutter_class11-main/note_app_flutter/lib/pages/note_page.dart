import 'package:flutter/material.dart';
import 'package:note_app_flutter/models/note.model.dart';

class NotePage extends StatefulWidget {
  final Note? note;

  const NotePage({super.key, this.note});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final authorController = TextEditingController();

  bool _isSaving = false;

  @override
  void initState() {
    super.initState();

    if (widget.note != null) {
      titleController.text = widget.note!.title;
      contentController.text = widget.note!.content;
      authorController.text = widget.note!.author;
    }
  }

  @override
  void dispose() {
    titleController.dispose();
    contentController.dispose();
    authorController.dispose();
    super.dispose();
  }

  // ===== SAVE NOTE =====
  void saveNote() {
    if (_isSaving) return;

    _isSaving = true;

    if (titleController.text.trim().isEmpty &&
        contentController.text.trim().isEmpty) {
      Navigator.pop(context);
      return;
    }

    final now = DateTime.now().toIso8601String();

    final note = Note(
      id: widget.note?.id,
      title: titleController.text,
      content: contentController.text,
      author: authorController.text,
      createdAt: widget.note?.createdAt ?? now,
      updatedAt: now,
    );
    Navigator.pop(context, note);
  }

  // ===== DELETE NOTE =====
  void deleteNote() async {
    final navigator = Navigator.of(context);

    final confirm = await showDialog(
      context: context,
      builder: (Context) => AlertDialog(
        title: const Text("Konfirmasi"),
        content: const Text("Serius mau hapus catatan ini?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text("Delete"),
          ),
        ],
      ),
    );

    if (!mounted) return;

    if (confirm == true) {
      Navigator.pop(context, "delete"); // lebih aman
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop || _isSaving) return;

          // _isSaving = true;

          // final navigator = Navigator.of(context);

          saveNote();

          // navigator.pop();
        },
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: saveNote,
              icon: const Icon(Icons.arrow_back),
            ),
            actions: [
              if (widget.note != null)
                IconButton(
                  onPressed: deleteNote,
                  icon: const Icon(Icons.delete),
                ),
            ],
          ),

          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ===== TITLE =====
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    hintText: "Judul",
                    border: InputBorder.none,
                  ),
                  style: theme.textTheme.titleLarge,
                ),

                const SizedBox(height: 12),

                // ===== CONTENT =====
                Expanded(
                  child: TextField( 
                    controller: contentController,
                    style: theme.textTheme.bodyMedium,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    expands: true,
                    decoration: const InputDecoration(
                      hintText: "tulis catatanmu disini ....",
                      border: InputBorder.none,
                    ),
                  ),
                ),

                Divider(color: theme.dividerColor.withValues(alpha: 0.3)),

                const SizedBox(height: 6),

                // ===== AUTHOR =====
                TextField(
                  controller: authorController,
                  style: theme.textTheme.bodySmall,
                  decoration: const InputDecoration(
                    hintText: "Ditulis oleh...",
                    border: InputBorder.none,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       leading: IconButton(
  //         onPressed: saveNote,
  //         icon: const Icon(Icons.arrow_back),
  //       ),
  //       actions: [
  //         IconButton(
  //           onPressed: deleteNote,
  //           icon: const Icon(Icons.delete),
  //         ),
  //       ],
  //     ),

  //     body: Padding(
  //       padding: const EdgeInsets.all(16),
  //       child: Column(
  //         children: [
  //           // ===== TITLE =====
  //           TextField(
  //             controller: titleController,
  //             decoration: const InputDecoration(
  //               hintText: "Judul",
  //               border: InputBorder.none,
  //             ),
  //             style: Theme.of(context).textTheme.titleLarge,
  //           ),

  //           const SizedBox(height: 12),

  //           // ===== CONTENT =====
  //           Expanded(
  //             child: TextField(
  //               controller: contentController,
  //               style: Theme.of(context).textTheme.bodyMedium,
  //               maxLines: null,
  //               expands: true,
  //               decoration: const InputDecoration(
  //                 hintText: "Isi catatan",
  //                 border: InputBorder.none,
  //               ),
  //             ),
  //           ),

  //           Divider(
  //             color: Theme.of(context)
  //                 .dividerColor
  //                 .withValues(alpha: 0.3),
  //           ),

  //           const SizedBox(height: 6),

  //           // ===== AUTHOR =====
  //           TextField(
  //             controller: authorController,
  //             style: Theme.of(context).textTheme.bodySmall,
  //             decoration: const InputDecoration(
  //               hintText: "Ditulis oleh...",
  //               border: InputBorder.none,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
