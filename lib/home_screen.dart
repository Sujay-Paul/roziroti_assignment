import 'package:flutter/material.dart';
import 'package:roziroti_assignment/app_bart.dart';
import 'package:roziroti_assignment/bottom_navigation_bar.dart';
import 'package:roziroti_assignment/shopping_filters.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: bottomNavigationBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(15),
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.filter_alt_sharp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Special Offers',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://c8.alamy.com/comp/2D7GAPB/online-sale-shopping-vector-banner-design-online-shopping-text-with-phone-cart-and-paper-bag-elements-in-smartphone-app-store-for-mobile-business-2D7GAPB.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 20.0,
                ),
                itemCount: shoppingFilters.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: Icon(
                              shoppingFilters[index].icon,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          shoppingFilters[index].name,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Most Popular',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: shoppingFilters.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.fromLTRB(0, 8, 10, 8),
                      child: InkWell(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              backgroundColor: index == 0
                                  ? Colors.black
                                  : Colors.transparent,
                              foregroundColor:
                                  index == 0 ? Colors.white : Colors.black,
                              side: const BorderSide(width: 2)),
                          onPressed: () {},
                          child: Text(
                            shoppingFilters[index].name,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
