import 'package:flutter/material.dart';

import 'package:first_task/common/app_colors.dart';
import 'package:first_task/feature/presentation/widgets/cache_image.dart';
import 'package:first_task/feature/domain/entities/results_enity.dart';
import 'package:first_task/feature/presentation/pages/specialist_detail.dart';

class SpecialistsCardWidget extends StatelessWidget {
  final ResultsEntity specialist;

  const SpecialistsCardWidget({
    Key? key,
    required this.specialist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpecialistsDetailPage(
              specialist: specialist,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cellBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            SpecialistsCacheImage(
              imageUrl: specialist.imageUrl ?? '', // TODO
              width: 166,
              height: 166,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  Text(
                    '${(specialist.firstName)} ${specialist.lastName}', // TODO
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  if (specialist.educations != null)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Образование:',
                          style: TextStyle(color: AppColors.greyColor),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          specialist.educations!.isEmpty
                              ? 'None'
                              : specialist.educations!.first!.name!, // TODO
                          style: const TextStyle(color: Colors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  const Text(
                    'Специализация',
                    style: TextStyle(color: AppColors.greyColor),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    specialist.specializations?.first?.specialization?.name ??
                        'None', // TODO
                    style: const TextStyle(color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            const SizedBox(width: 12),
          ],
        ),
      ),
    );
  }
}
