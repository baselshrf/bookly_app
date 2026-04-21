import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_List_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: const CustomAppBar(),
              ),
              const FeaturedBooksListView(),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text('best seller', style: Styles.textStyle18),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
