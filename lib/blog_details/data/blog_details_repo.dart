import '../models/blog_details_data_model.dart';
import '../../core/util/app_failure.dart';
import '../../core/util/supabase_error_handling.dart';
import 'package:flutter_async_value/flutter_async_value.dart';

abstract class BlogDetailsRepo {
  Future<AsyncResult<BlogDetailsDataModel, AppFailure>> getBlogDetails({
    required String blogId,
  });
}

class SupabaseBlogDetailsRepo extends BlogDetailsRepo {
  @override
  Future<AsyncResult<BlogDetailsDataModel, AppFailure>> getBlogDetails({
    required String blogId,
  }) async {
    return await supabaseRpc(
      'get_blog_details',
      params: {'blog_id': blogId},
      fromJson: BlogDetailsDataModel.fromJson,
      get: true,
    );
  }
}
