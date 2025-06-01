import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void customNavigatePush(BuildContext context,String path) {
    GoRouter.of(context).push(path);
  }

void customNavigateReplace(BuildContext context,String path) {
    GoRouter.of(context).pushReplacement(path);
  }
