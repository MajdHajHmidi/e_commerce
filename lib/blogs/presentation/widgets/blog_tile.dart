import '../../models/blogs_data_model.dart';
import '../../../core/navigation/router.dart';
import '../../../core/util/date.dart';
import 'package:go_router/go_router.dart';

import '../../../core/styles/colors.dart';
import '../../../core/styles/text_styles.dart';
import '../../../core/widgets/app_image.dart';
import 'package:flutter/material.dart';

class BlogTile extends StatelessWidget {
  final Blog blog;
  const BlogTile({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap:
            () => context.pushNamed(
              AppRoutes.blogDetails.name,
              pathParameters: {'blog_id': blog.id},
            ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppNetworkImage(
              imageUrl: blog.thumbnailUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              borderRadius: BorderRadius.circular(12),
              alignment: Alignment(
                Alignment.center.x,
                Alignment.center.y + 0.3,
              ),
              height: 280,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(bottom: 8, left: 4, right: 4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    blog.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.body2Semi.copyWith(
                      color: AppColors.neutral_07,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    formatDate(blog.createdAt),
                    maxLines: 1,
                    style: AppTextStyles.caption2.copyWith(
                      color: AppColors.neutral_04,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
