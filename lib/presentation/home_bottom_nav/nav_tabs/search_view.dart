// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/app/configs/app_colors.dart';
import 'package:travel_app/app/configs/app_size_config.dart';
import 'package:travel_app/app/utils/custom_widgets/common_text.dart';
import 'package:travel_app/app/utils/custom_widgets/custom_textfield.dart';
import 'package:travel_app/presentation/home_bottom_nav/nav_tabs/components/search_tabs/one_way_tab.dart';
import 'package:travel_app/presentation/home_bottom_nav/nav_tabs/components/search_tabs/return_tab.dart';

import '../controller/search_controller.dart';
import 'components/search_tabs/multi_tab.dart';

class SearchScreen extends StatefulWidget {
  String? cabinClass;
  SearchScreen({super.key, this.cabinClass});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final SearchController1 searchController = Get.put(SearchController1());
  final FocusNode _focusNode = FocusNode();
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  bool isValidForm = false;
  final _formkey = GlobalKey<FormState>();
  int selectedTabIndex = 0;
  String? toCity = "";
  String? toCode = "";
  String? toCountry = "";
  String? fromCity = "";
  String? fromCode = "";
  String? fromCountry = "";
  onTabSelect(int index) => setState(() => selectedTabIndex = index);

  var tabsNames = [
    'RETURN',
    'ONE-WAY',
    'MULTI-CITY',
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    HeightWidth(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // From Field ------------------------
                // CommonText(text: "Class: ${widget.cabinClass}"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.flight_takeoff_sharp,
                      color: AppColors.appColorPrimary,
                    ),
                    0.04.pw,
                    SizedBox(
                      width: w * 0.8,
                      child: CustomTextField(
                          icon: fromController.text.isEmpty ? SizedBox.shrink() : Icon(Icons.close_rounded),
                          onTap: () {
                            fromController.clear();
                          },
                          focusNode: _focusNode,
                          textEditingController: fromController,
                          hintText: 'Search City',
                          labelText: 'From',
                          onChanged: (value) {
                            searchController.fetchSearch1(fromController.text.trim());
                          },
                          validator: (inputValue) {
                            if (inputValue!.isEmpty) {
                              return "Search City";
                            }
                            return null;
                          }
                          // onTap: () {
                          // Get.focusScope!.unfocus();
                          // Get.to(() => SearchDatePickScreen());
                          // },
                          ),
                    ),
                  ],
                ),
                0.02.ph,

                // SizedBox(height: 16),

                Obx(
                  () {
                    // ignore: unrelated_type_equality_checks
                    return searchController.mySearch1 == ""
                        ? Container()
                        : Container(
                            height: 250,
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(15)),
                            child: searchController.searchModel.value.airports != null && searchController.searchModel.value.airports!.isNotEmpty
                                ? ListView.builder(
                                    itemCount: searchController.searchModel.value.airports!.length,
                                    itemBuilder: (context, index) {
                                      final airport = searchController.searchModel.value.airports![index];
                                      return ListTile(
                                        onTap: () {
                                          setState(() {
                                            fromController.text = "${airport.code},${airport.city}";
                                            fromCode = airport.code.toString();
                                            fromCity = airport.city.toString();
                                            fromCountry = airport.country.toString();
                                            searchController.fetchSearch1("");
                                          });
                                        },
                                        title: Text(airport.name),
                                        subtitle: Text(airport.city),
                                      );
                                    },
                                  )
                                : Center(
                                    child: Text("No airports found"),
                                  ),
                          );
                  },
                ),

                // To Field ------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.flight_land_sharp,
                      color: AppColors.appColorPrimary,
                    ),
                    0.04.pw,
                    SizedBox(
                      width: w * 0.8,
                      child: CustomTextField(
                          icon: toController.text.isEmpty ? SizedBox.shrink() : Icon(Icons.close_rounded),
                          onTap: () {
                            toController.clear();
                          },
                          textEditingController: toController,
                          hintText: 'Search City',
                          labelText: 'To',
                          onChanged: (value) {
                            searchController.fetchSearch2(toController.text.trim());
                          },
                          validator: (inputValue) {
                            if (inputValue!.isEmpty) {
                              return "Search City";
                            }
                            return null;
                          }
                          // onTap: () {
                          //   Get.focusScope!.unfocus();
                          //   Get.to(() => SearchDatePickScreen());
                          // },
                          ),
                    ),
                  ],
                ),
                0.02.ph,
                Obx(
                  () {
                    // ignore: unrelated_type_equality_checks
                    return searchController.mySearch2 == ""
                        ? Container()
                        : Container(
                            height: 250,
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(15)),
                            child: searchController.searchModel.value.airports != null && searchController.searchModel.value.airports!.isNotEmpty
                                ? ListView.builder(
                                    itemCount: searchController.searchModel.value.airports!.length,
                                    itemBuilder: (context, index) {
                                      final airport = searchController.searchModel.value.airports![index];
                                      return ListTile(
                                        onTap: () {
                                          setState(() {
                                            toController.text = "${airport.code},${airport.city}";
                                            toCode = airport.code.toString();
                                            toCity = airport.city.toString();
                                            toCountry = airport.country.toString();
                                            searchController.fetchSearch2("");
                                          });
                                        },
                                        title: Text(airport.name),
                                        subtitle: Text(airport.city),
                                      );
                                    },
                                  )
                                : Center(
                                    child: Text("No airports found"),
                                  ),
                          );
                  },
                ),

                // Tab Bar Container --------------------------------------
                // CommonText(text: fromCity.toString()),
                // CommonText(text: toCity.toString()),
                Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  width: w,
                  color: AppColors.appColorAccent,
                  child: DefaultTabController(
                    // initialIndex: 0,
                    // length: 1,
                    length: tabsNames.length,
                    child: Column(
                      children: [
                        TabBar(
                          onTap: (index) {
                            onTabSelect(index);
                          },
                          dividerColor: Colors.transparent,
                          labelColor: AppColors.appColorWhite,
                          indicatorColor: Colors.transparent,
                          unselectedLabelColor: Colors.black,
                          // indicatorWeight: 2.5,
                          // indicatorPadding: EdgeInsets.symmetric(horizontal: 20.0),
                          labelPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 30.0),
                          tabs: List.generate(tabsNames.length, (i) {
                            return Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 120,
                              decoration: BoxDecoration(
                                color: selectedTabIndex == i ? AppColors.appColorPrimary : Colors.transparent,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: CommonText(
                                text: tabsNames[i],
                                fontSize: 12.0,
                                color: selectedTabIndex == i ? Colors.white : Colors.black,
                                weight: selectedTabIndex == i ? FontWeight.w600 : FontWeight.w400,
                              ),
                            );
                          }),
                        ),
                        Container(
                          // padding: const EdgeInsets.symmetric(vertical: 20.0),
                          height: h * 1,
                          child: TabBarView(
                            children: [
                              ReturnTabView(cabinClass: widget.cabinClass ?? "Economy", fromCity: fromCode, toCity: toCode),
                              OneWayTabView(cabinClass: widget.cabinClass ?? "Economy", fromCity: fromCode, toCity: toCode),
                              MultiTabView(cabinClass: widget.cabinClass ?? "Economy", fromCity: fromCode, toCity: toCode),
                              // MultiTabView(
                              //     cabinClass: widget.cabinClass ?? "Economy",
                              //     fromCity: fromCode,
                              //     toCity: toCode),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // CommonText(text: 'Search Screen'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
