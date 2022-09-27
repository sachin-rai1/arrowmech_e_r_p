import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Navigation/navigationDrawer.dart';
import '../../../../data/Constant.dart';
import '../controllers/reference_controller.dart';

class ReferenceView extends GetView<ReferenceController> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
        drawer: LeadNavigationDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: ClipRRect(
            child: Image.asset(
              'assets/images/mainLogo.png',
              height: 50,
              width: 124,
            ),
          ),
          titleSpacing: 00.0,
          centerTitle: true,
          elevation: 0,
          leading: Builder(builder: (context) {
            return IconButton(
              iconSize: 41.19,
              icon: const Icon(Icons.menu),
              color: Constants.primaryColor,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          }),
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 3,
            itemBuilder: (context , index) {
          return Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
                child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et"
                        " massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices"
                        " mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo"
                        ", non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante"
                        " fermentum sit amet. Pellentesque commodo"),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: h /3.5,
                child: Column(
                  children: [
                    GetBuilder<ReferenceController>(
                        init: ReferenceController(),
                        builder: (controller) =>
                            Expanded(
                                child: Center(
                                    child: controller.chewieController !=null && controller.chewieController!.videoPlayerController.value.isInitialized ? Chewie(
                                        controller: controller.chewieController!)
                                        : Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [CircularProgressIndicator()],
                                    )))),
                  ],
                ),
              ),
            ],
          );
        }    )
    );
  }
}
