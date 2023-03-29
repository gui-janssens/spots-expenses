import 'package:flutter/material.dart';

import '../models/models.dart';
import '../repositories/repositories.dart';

class CompanyProvider with ChangeNotifier {
  final CompanyRepository _companyRepository = CompanyRepositoryImpl();

  late Company company;
}