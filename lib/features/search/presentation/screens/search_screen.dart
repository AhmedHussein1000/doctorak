import 'package:doctorak/core/widgets/custom_appbar.dart';
import 'package:doctorak/features/search/presentation/screens/widgets/search_screen_body.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Search Doctor',
        showActionButton: true,
      ),
      body: const SearchScreenBody(),
    );
  }
}
