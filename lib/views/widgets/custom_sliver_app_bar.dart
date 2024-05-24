import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar.text({
    required this.title,
    this.actions,
    this.arrowBack = false,
    super.key,
  }) : widget = null;

  const CustomSliverAppBar.widget({
    required this.widget,
    this.actions,
    this.arrowBack = false,
    super.key,
  }) : title = null;

  final Widget? widget;
  final String? title;
  final bool arrowBack;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        if (actions != null) ...actions!,
      ],
      leading: arrowBack
          ? IconButton(
              icon: const Icon(FontAwesomeIcons.arrowLeft, size: 20),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          : null,
      expandedHeight: 150,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: arrowBack
            ? const EdgeInsets.only(
                left: 52,
                bottom: 14,
              )
            : const EdgeInsets.only(
                left: 16,
                bottom: 16,
              ),
        title: title != null
            ? Text(
                title!,
                style: const TextStyle(
                  fontSize: 18,
                ),
              )
            : widget,
      ),
    );
  }
}
