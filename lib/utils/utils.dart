import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinisi_parking_spot/bloc/page_bloc.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/models/models.dart';
import 'package:pinisi_parking_spot/screens/components/parking_box_horizontal.dart';
import 'package:pinisi_parking_spot/screens/components/parking_box_vertical.dart';
import 'package:pinisi_parking_spot/services/services.dart';
import 'package:pinisi_parking_spot/services/user_services/services.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';
import 'package:select_dialog/select_dialog.dart';

import 'package:bloc/bloc.dart';

import 'globals.dart';

part 'parking_builder_horizontal.dart';
part 'parking_builder_vertical.dart';
