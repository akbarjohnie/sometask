import 'package:first_task/feature/domain/entities/specialists_entity.dart';
import 'package:first_task/feature/presentation/pages/specialist_detail.dart';
import 'package:first_task/feature/presentation/widgets/cache_image.dart';
import 'package:flutter/material.dart';

class SearchResultWidget extends StatelessWidget {
  final SpecialistsEntity specialistsResult;

  const SearchResultWidget({
    Key? key,
    required this.specialistsResult,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => SpecialistsDetailPage(
        //       specialist: specialistsResult,
        //     ),
        //   ),
        // );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 2.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: SpecialistsCacheImage(
                imageUrl:
                    specialistsResult.results?[0]?.image_url ?? '', // TODO
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                specialistsResult.results?[0]?.first_name ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                specialistsResult.results?[0]?.educations?[0]?.description ??
                    'None', //TODO
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
