import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:template/popularcategory/popcarddetails.dart';
import 'package:template/popularcategory/popcardstruct.dart';
import 'package:template/top_offer/topcarddetails.dart';
import 'package:template/top_offer/topstruct.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<String> imglist = [
    'https://media.istockphoto.com/vectors/diwali-festival-deals-and-offers-with-gift-box-vector-id626231016',
    'https://cdn.mos.cms.futurecdn.net/eG9dwWMNrFwoc4uW4YHS2Z-768-80.jpg',
    'https://www.rummymillionaire.com/wp-content/uploads/2017/10/grand-diwali-dhamaka-rummy-tournament.png',
    'https://akm-img-a-in.tosshub.com/aajtak/images/photo_gallery/202101/flipkart_sale_banner.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
                floating: true,
                pinned: true,
                snap: true,
                title: Container(
                  height: 40,
                  color: Colors.white,
                  child: Image.network(
                      'https://static.toiimg.com/thumb/msid-86006062/86006062.jpg?width=500&resizemode=4'),
                ),
                actions: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.add_box)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
                  const Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Center(
                        child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )),
                  )
                ],
                bottom: AppBar(
                    title: Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.white,
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search for something',
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.camera_alt)),
                    ),
                  ),
                ))),
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: 900,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      // Container(
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(left: 18.0),
                      //     child: Text(
                      //       'Top Items',
                      //       style: TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 15,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // Container(   //// custom tab bar
                      //   height: 25,
                      //   child: TabBar(
                      //     indicatorSize: TabBarIndicatorSize.label,
                      //     indicator: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(50),
                      //         color: Colors.blue),
                      //     labelColor: Colors.white,
                      //     unselectedLabelColor: Colors.blue,
                      //     isScrollable: true,
                      //     tabs: [
                      //       Container(
                      //           width: 100,
                      //           decoration: BoxDecoration(
                      //             border: Border.all(color: Colors.blue),
                      //             borderRadius: BorderRadius.circular(50),
                      //           ),
                      //           child: Tab(text: 'Laptops')),
                      //       Container(
                      //           width: 100,
                      //           decoration: BoxDecoration(
                      //             border: Border.all(color: Colors.blue),
                      //             borderRadius: BorderRadius.circular(50),
                      //           ),
                      //           child: Tab(text: 'Grocerry')),
                      //       Container(
                      //           width: 100,
                      //           decoration: BoxDecoration(
                      //             border: Border.all(color: Colors.blue),
                      //             borderRadius: BorderRadius.circular(50),
                      //           ),
                      //           child: Tab(text: 'Fashion')),
                      //       Container(
                      //           width: 100,
                      //           decoration: BoxDecoration(
                      //             border: Border.all(color: Colors.blue),
                      //             borderRadius: BorderRadius.circular(50),
                      //           ),
                      //           child: Tab(text: 'Market')),
                      //       Container(
                      //           width: 100,
                      //           decoration: BoxDecoration(
                      //             border: Border.all(color: Colors.blue),
                      //             borderRadius: BorderRadius.circular(20),
                      //           ),
                      //           child: Tab(text: 'Shoes')),
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 25,
                      // ),
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text(
                            'Upcoming Sale',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          height: 100,
                          width: double.infinity,
                          //  color: Colors.black,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXrewpMB3qMT_om2F6wJ75Ykib1a-Lx2QUzQ&usqp=CAU',
                                  ),
                                  fit: BoxFit.cover))),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text(
                            'Popular',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: 130,
                          child: ListView.separated(
                            padding: const EdgeInsets.all(8),
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            separatorBuilder: (context, _) => const SizedBox(
                              width: 25,
                            ),
                            itemBuilder: (context, index) => Carditemstruct(
                              item: AppConstant.items[index],
                              context: context,
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text(
                            'Sale & Sponsor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 100,
                          width: double.infinity,
                          child: CarouselSlider(
                            items: imglist
                                .map((e) => Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: SizedBox(
                                        child: Image.network(
                                          e,
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            options: CarouselOptions(
                              autoPlay: true,
                              aspectRatio: 2.0,
                              enlargeCenterPage: true,
                              enlargeStrategy: CenterPageEnlargeStrategy.height,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        child: const Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text(
                            'Top Offers',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 4,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Cardstruct(
                                  item: TopConstant.items[index],
                                  context: context,
                                ),
                              );
                            },
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
