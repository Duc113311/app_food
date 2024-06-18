import 'package:app_food_shopping/utils/colors.dart';
import 'package:app_food_shopping/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int trimLines;

  const ExpandableText({super.key, required this.text, this.trimLines = 3});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final span = TextSpan(text: widget.text);
    final tp = TextPainter(
      text: span,
      maxLines: isExpanded ? null : widget.trimLines,
      textDirection: TextDirection.ltr,
    );
    tp.layout(maxWidth: MediaQuery.of(context).size.width);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isExpanded
            ? Text(widget.text,
                style: const TextStyle(
                    color: AppColors.paraColor,
                    height: 1.6,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto',
                    fontSize: 12))
            : Text(
                widget.text,
                maxLines: widget.trimLines,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: AppColors.paraColor,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    fontFamily: 'Roboto',
                    fontSize: 12),
              ),
        InkWell(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Row(
            children: [
              SmallText(
                text: isExpanded ? "Show less" : "Show more",
                color: AppColors.mainColor,
              ),
              Icon(
                isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                color: AppColors.mainColor,
              )
            ],
          ),
        )
      ],
    );
  }
}
