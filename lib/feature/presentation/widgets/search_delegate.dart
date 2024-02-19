import 'package:first_task/feature/domain/entities/specialists_entity.dart';
import 'package:first_task/feature/presentation/bloc/bloc/search_bloc.dart';
import 'package:first_task/feature/presentation/bloc/bloc/search_event.dart';
import 'package:first_task/feature/presentation/bloc/bloc/search_state.dart';
import 'package:first_task/feature/presentation/widgets/search_res_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate() : super(searchFieldLabel: 'Search for characters...');

  final _suggestions = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
            showSuggestions(context);
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.arrow_back_outlined),
        tooltip: 'Back',
        onPressed: () => close(context, null));
  }

  @override
  Widget buildResults(BuildContext context) {
    BlocProvider.of<SpecialistsSearchBloc>(context, listen: false)
        .add(SearchSpecialistsEvent(query));

    return BlocBuilder<SpecialistsSearchBloc, SpecialistsSearchState>(
      builder: (context, state) {
        if (state is SpecialistsSearchLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is SpecialistsSearchLoaded) {
          final specialist = state.specialists;
          if (specialist.isEmpty) {
            return _showErrorText('No Specialists with that name found');
          }
          return ListView.builder(
            itemCount: specialist.isNotEmpty ? specialist.length : 0,
            itemBuilder: (context, int index) {
              SpecialistsEntity result = specialist[index];
              return SearchResultWidget(specialistsResult: result);
            },
          );
        } else if (state is SpecialistsSearchError) {
          return _showErrorText(state.message);
        } else {
          return const Center(
            child: Icon(Icons.now_wallpaper),
          );
        }
      },
    );
  }

  Widget _showErrorText(String errorMessage) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          errorMessage,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isNotEmpty) {
      return buildResults(context);
    }

    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            query = _suggestions[index];
            showResults(context);
          },
          title: Text(
            _suggestions[index],
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: _suggestions.length,
    );
  }
}
