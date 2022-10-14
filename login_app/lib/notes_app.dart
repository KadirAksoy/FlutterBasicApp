import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});
  final _title = 'Create your first note';
  final _description = 'Add your notes';
  final _createNote = 'Create a Note';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.dark),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(children: [
          Image.asset("assets/png/open-book.png"),
          _TitleWidget(title: _title),
          Padding(
            padding: PaddingItems.verticalPadding,
            child: _SubtitleWidget(
              title: _description * 10,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: SizedBox(
              height: ButtonHeights.buttonNormalHeights,
              child: Center(
                child: Text(
                  _createNote,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(_createNote),
          ),
          const SizedBox(
            height: 50,
          ),
        ]),
      ),
    );
  }
}

class _SubtitleWidget extends StatelessWidget {
  const _SubtitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.title})
      : super(key: key);

  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);

  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeights {
  static const double buttonNormalHeights = 50;
}
