import 'package:bookly_app/features/Home/data/repo/home_repo_imp.dart';
import 'package:bookly_app/features/Home/presentation/manager/Newest%20Books%20cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'constants.dart';
import 'core/uitls/app_routers.dart';
import 'core/uitls/service_locator.dart';
import 'features/Home/presentation/manager/Featurd Books cubit/featurd_books_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturdBooksCubit(getIt.get<HomeRepoImpl>())
            ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        //home: const SplashView(),
      ),
    );
  }
}
