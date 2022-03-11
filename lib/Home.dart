import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:template/popularcategory/popcarddetails.dart';
import 'package:template/popularcategory/popcardstruct.dart';
import 'package:template/top_offer/topcarddetails.dart';
import 'package:template/top_offer/topstruct.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
                  IconButton(onPressed: () {}, icon: Icon(Icons.add_box)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
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
                  child: Center(
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
                Container(
                  height: 900,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
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
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text(
                            'Upcoming Sale',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                          height: 100,
                          width: double.infinity,
                          //  color: Colors.black,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXrewpMB3qMT_om2F6wJ75Ykib1a-Lx2QUzQ&usqp=CAU',
                                  ),
                                  fit: BoxFit.cover))),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text(
                            'Popular',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          height: 130,
                          child: ListView.separated(
                            padding: EdgeInsets.all(8),
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            separatorBuilder: (context, _) => SizedBox(
                              width: 25,
                            ),
                            itemBuilder: (context, index) => Carditemstruct(
                              item: AppConstant.items[index],
                              context: context,
                            ),
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text(
                            'Sale & Sponsor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 100.0,
                        width: double.infinity,
                        child: Carousel(
                          boxFit: BoxFit.cover,
                          images: const [
                            NetworkImage(
                                'https://media.istockphoto.com/vectors/diwali-festival-deals-and-offers-with-gift-box-vector-id626231016'),
                            NetworkImage(
                                'https://cdn.mos.cms.futurecdn.net/eG9dwWMNrFwoc4uW4YHS2Z-768-80.jpg'),
                            NetworkImage(
                                'https://www.rummymillionaire.com/wp-content/uploads/2017/10/grand-diwali-dhamaka-rummy-tournament.png'),
                            NetworkImage(
                                'https://akm-img-a-in.tosshub.com/aajtak/images/photo_gallery/202101/flipkart_sale_banner.jpg'),

                            // ExactAssetImage("assets/images/LaunchImage.jpg"),
                          ],
                          dotSize: 4.0,
                          dotSpacing: 15.0,
                          dotColor: Colors.grey,
                          indicatorBgPadding: 4,
                          dotBgColor: Colors.transparent,
                          borderRadius: true,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
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
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 4,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
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
