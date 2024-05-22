part of 'post_id_cubit.dart';

@immutable
sealed class PostIdState {}

final class PostIdInitial extends PostIdState {}

final class PostIdLoading extends PostIdState {}
