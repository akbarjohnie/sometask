import 'package:first_task/common/app_colors.dart';
import 'package:first_task/feature/domain/entities/results_enity.dart';
import 'package:first_task/feature/presentation/widgets/cache_image.dart';
import 'package:flutter/material.dart';

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
              imageUrl: specialist.image_url ?? '', // TODO
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
                if (specialist != null) ...buildText('ID:', '${specialist.id}'),
                ...buildText('Фамилия:', '${specialist.last_name}'),
                ...buildText('Имя', '${specialist.first_name}'),
                ...buildText('Отчество:', '${specialist.middle_name}'),
                ...buildText(
                    'Образование:', '${specialist.educations?[0]?.name}'),
                ...buildText('Направление:',
                    '${specialist.educations?[0]?.description}'),
                ...buildText(
                  'Годы обучения:',
                  'С ${specialist.educations?[0]?.from} по ${specialist.educations?[0]?.to}',
                ),
                ...buildText('Последнее место работы:',
                    '${specialist.work_experiences?[0]?.name}'),
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
