import 'package:flutter/material.dart';

import 'package:first_task/common/app_colors.dart';
import 'package:first_task/feature/domain/entities/results_enity.dart';
import 'package:first_task/feature/presentation/widgets/cache_image.dart';

class SpecialistsDetailPage extends StatelessWidget {
  final ResultsEntity specialist;

  const SpecialistsDetailPage({
    Key? key,
    required this.specialist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Specialist'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 24),
            SpecialistsCacheImage(
              width: 260,
              height: 260,
              imageUrl: specialist.imageUrl ?? '', // TODO
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 12,
                  height: 12,
                ),
                SizedBox(width: 8),
                Text(
                  'Данные',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...buildText('ID:', '${specialist.id}'),
                ...buildText('Фамилия:', '${specialist.lastName}'),
                ...buildText('Имя:', '${specialist.firstName}'),
                ...buildText('Отчество:', '${specialist.middleName}'),
                if (specialist.workExp!.isNotEmpty)
                  ...buildText(
                    'Последнее место работы:',
                    '${specialist.workExp?.first?.name}',
                  ),
                if (specialist.educations!.isNotEmpty) // TODO
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...buildText(
                        'Образование:',
                        '${specialist.educations?.first?.name}',
                      ),
                      ...buildText(
                        'Направление:',
                        '${specialist.educations?.first?.description}',
                      ),
                      ...buildText(
                        'Годы обучения:',
                        'С ${specialist.educations?.first?.from} по ${specialist.educations?.first?.to}',
                      ),
                    ],
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<Widget> buildText(String text, String value) {
    return [
      Text(
        text,
        style: const TextStyle(
          color: AppColors.greyColor,
        ),
      ),
      const SizedBox(height: 4),
      Text(
        value,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 12),
    ];
  }
}
