import 'package:flutter/material.dart';

class Taskform extends StatelessWidget {
  const Taskform({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController _taskTitle = TextEditingController();
    final TextEditingController _taskDescription = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add a Task",
                style: TextStyle(
                  color: Theme.of(context).focusColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              _buildTextField(
                context: context,
                controller: _taskTitle,
                label: 'Task Title',
                validator: (value) {
                  return (value == null || value.isEmpty)
                      ? "Invalid Input"
                      : null;
                },
              ),
              SizedBox(height: 4),
              _buildTextField(
                context: context,
                controller: _taskDescription,
                label: 'Recipe',
                validator: (value) {
                  return (value == null || value.isEmpty)
                      ? "Invalid Input"
                      : null;
                },
                maxLines: 4,
              ),
              SizedBox(height: 8),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pop(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).focusColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Save Recipe",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTextField({
  required BuildContext context,
  required String label,
  required TextEditingController controller,
  required String? Function(String?) validator,
  int maxLines = 1,
}) {
  return TextFormField(
    cursorColor: Theme.of(context).focusColor,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: TextStyle(fontFamily: 'Quicksand', color: Colors.grey),
      border: const UnderlineInputBorder(),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).focusColor, width: 2),
      ),
    ),
    validator: validator,
    controller: controller,
    maxLines: maxLines,
  );
}
