import 'package:first_task/feature/presentation/pages/specialist_detail.dart';
import 'package:flutter/material.dart';

import 'package:first_task/const/app_colors.dart';
import 'package:first_task/feature/domain/entities/specialists_entity.dart';
import 'package:first_task/feature/presentation/widgets/cache_image.dart';

class SpecialistsCardWidget extends StatelessWidget {
  final SpecialistsEntity specialist;
  final int index;

  const SpecialistsCardWidget({
    Key? key,
    required this.specialist,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var info = specialist.results?[index];
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SpecialistsDetailPage(
              specialist: specialist,
              index: index,
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
              imageUrl: info?.image_url ?? '', // TODO
              width: 166,
              height: 166,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    '${(info?.first_name)} ${info?.last_name}', // TODO
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Образование:',
                    style: TextStyle(color: AppColors.greyColor),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    info?.educations?[0]?.name ?? 'None', // TODO
                    style: const TextStyle(color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Специализация',
                    style: TextStyle(color: AppColors.greyColor),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    info?.specializations?[0]?.specialization?.name ??
                        'None', // TODO
                    style: const TextStyle(color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
      ),
    );
  }
}
