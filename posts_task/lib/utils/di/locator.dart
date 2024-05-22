import 'package:get_it/get_it.dart';
import 'package:posts_task/data/models/post_model.dart';
import 'package:posts_task/data/services/post_service.dart';
import 'package:posts_task/data/services/post_id_service.dart';
import 'package:posts_task/data/repositories/post_repository.dart';
import 'package:posts_task/data/repositories/post_id_repository.dart';

final GetIt locator = GetIt.instance;

Future<void> setUpLocator() async {
  locator.registerLazySingleton(() => PostResponse);
  locator.registerLazySingleton<PostRepository>(() => PostRepository(locator()));
  locator
      .registerLazySingleton<PostIdRepository>(() => PostIdRepository(locator()));
  locator.registerLazySingleton(() => PostService());
  locator.registerLazySingleton(() => PostIdService());
  
}
