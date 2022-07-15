import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/data/data_sources/firebase_auth/firebase_auth_data_source.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/data/data_sources/firebase_firestore/firebase_firestore_data_source.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/domain/repositories/zoom_repository.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/presentation/cubits/auth/auth_cubit.dart';
import 'package:flutter_zoom_call/features/zoom_video_call/presentation/cubits/meeting/meeting_cubit.dart';
import 'package:get_it/get_it.dart';

import 'data/data_sources/firebase_auth/firebase_auth_data_source_impl.dart';
import 'data/data_sources/firebase_firestore/firebase_firestore_data_source_impl.dart';
import 'data/repositories/zoom_repository_impl.dart';
import 'domain/use_cases/add_meeting_to_history_usecase.dart';
import 'domain/use_cases/create_new_meeting_usecase.dart';
import 'domain/use_cases/get_current_user_usecase.dart';
import 'domain/use_cases/get_meeting_history_usecase.dart';
import 'domain/use_cases/listen_to_auth_change_usecase.dart';
import 'domain/use_cases/sign_in_with_google_account_usecase.dart';
import 'domain/use_cases/sign_out_usecase.dart';

final sl = GetIt.instance;

Future<void> initializeZoomCallingFeature() async {
//data source
  sl.registerLazySingleton<FirebaseAuthDataSource>(
      () => FirebaseAuthDataSourceImpl(fireStore: sl(), auth: sl()));
  sl.registerLazySingleton<FirebaseFireStoreDataSource>(
      () => FirebaseFireStoreDataSourceImpl(fireStore: sl(), auth: sl()));

//repository
  sl.registerLazySingleton<ZoomRepository>(() => ZoomRepositoryImpl(
        jitsiMeetDataSource: sl(),
        fireStoreDataSource: sl(),
        authDataSource: sl(),
      ));

//use cases
  sl.registerFactory<AddMeetingToHistoryUseCase>(
      () => AddMeetingToHistoryUseCase(zoomRepository: sl()));
  sl.registerFactory<CreateNewMeetingUseCase>(
      () => CreateNewMeetingUseCase(zoomRepository: sl()));
  sl.registerFactory<GetCurrentUserUseCase>(
      () => GetCurrentUserUseCase(zoomRepository: sl()));
  sl.registerFactory<GetMeetingHistoryUseCase>(
      () => GetMeetingHistoryUseCase(zoomRepository: sl()));
  sl.registerFactory<ListenToAuthChangeUseCase>(
      () => ListenToAuthChangeUseCase(zoomRepository: sl()));
  sl.registerFactory<SignInWithGoogleAccountUseCase>(
      () => SignInWithGoogleAccountUseCase(zoomRepository: sl()));
  sl.registerFactory<SignOutUseCase>(
      () => SignOutUseCase(zoomRepository: sl()));

//cubit
  sl.registerFactory<AuthCubit>(() => AuthCubit());
  sl.registerFactory<MeetingCubit>(() => MeetingCubit());

//external
  sl.registerLazySingleton(() => FirebaseAuth.instance);
  sl.registerLazySingleton(() => FirebaseFirestore.instance);
}
