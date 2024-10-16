import 'package:esightsolutions/modules/landingscreen/controller/landing.controller.dart';
import 'package:esightsolutions/modules/totalamount/controller/totalamount.controller.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget>providersList = [
   ChangeNotifierProvider(create: (_) => TotalAmountController()),
    ChangeNotifierProvider(create: (_) => LandingController()
   )];