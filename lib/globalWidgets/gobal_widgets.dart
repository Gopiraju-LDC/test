// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../formHouse/constants/constants.dart';

class ImageWidget extends StatefulWidget {
  final List imagesList;
  final updateImage;
  final updateName;
  ImageWidget({
    required this.imagesList,
    required this.updateImage,
    required this.updateName,
  });

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  bool isEditingTitle = false;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(width: 0.5, color: Colors.grey.shade700),
      borderRadius: BorderRadius.circular(4),
    );

    return SizedBox(
      height: 120,
      width: double.infinity,
      child: ListView.separated(
        itemCount: widget.imagesList.isEmpty ? 1 : widget.imagesList.length,
        scrollDirection: Axis.horizontal,
        physics: ScrollPhysics(),
        separatorBuilder: (context, index) {
          return SizedBox(width: 5);
        },
        itemBuilder: (context, index) {
          var details;
          if (widget.imagesList.isNotEmpty) {
            details = widget.imagesList[index];
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      widget.updateImage(widget.imagesList, index);
                    },
                    child: Container(
                      width: 160,
                      height: 80,
                      decoration: BoxDecoration(
                        image: widget.imagesList.isEmpty
                            ? DecorationImage(
                                image: NetworkImage(
                                    "https://via.placeholder.com/160x80"),
                                fit: BoxFit.fill,
                              )
                            : DecorationImage(
                                image: FileImage(
                                  details['imagePath'],
                                ),
                                fit: BoxFit.fill,
                              ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 70,
                    bottom: 30,
                    child: Icon(Icons.camera_alt_outlined),
                  )
                ],
              ),
              SizedBox(
                height: 4,
              ),
              if (!isEditingTitle || selectedIndex != index)
                GestureDetector(
                  onTap: () {
                    if (widget.imagesList.isNotEmpty) {
                      setState(() {
                        isEditingTitle = true;
                        selectedIndex = index;
                      });
                    }
                  },
                  child: Text(
                    widget.imagesList.isEmpty
                        ? 'Entrance Pic'
                        : details['title'],
                    style: poppinsStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              if (isEditingTitle && selectedIndex == index)
                SizedBox(
                  height: 20,
                  width: 120,
                  child: TextFormField(
                    initialValue: details['title'],
                    onChanged: (v) {
                      if (v.isNotEmpty) {
                        widget.updateName(widget.imagesList, index, v);
                      }
                    },
                    decoration: InputDecoration(
                      focusedBorder: border,
                      enabledBorder: border,
                    ),
                  ),
                )
            ],
          );
        },
      ),
    );
  }
}
