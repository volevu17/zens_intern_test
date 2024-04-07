// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/joke_view_model.dart';
import 'widgets/joke_button.dart';
import 'widgets/joke_content.dart';
import 'widgets/joke_footer.dart';
import 'widgets/joke_header.dart';
import 'widgets/joke_title.dart';

class JokeScreen extends StatefulWidget {
  @override
  _JokeScreenState createState() => _JokeScreenState();
}

class _JokeScreenState extends State<JokeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<JokeViewModel>(context, listen: false).showRandomJoke();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<JokeViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const JokeHeader(),
                  const JokeTitle(),
                  if (viewModel.currentJoke.isNotEmpty)
                    JokeContent(joke: viewModel.currentJoke),
                  JokeButton(
                    allJokesShown: viewModel.allJokesShown,
                    onVote: viewModel.vote,
                  ),
                  const JokeFooter(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
