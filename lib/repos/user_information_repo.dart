import 'package:bank_portal_flutter/models/address_information_model.dart';
import 'package:bank_portal_flutter/models/personal_information_model.dart';

class UserInformationRepository {

  UserInformationRepository();

  Future<bool> submitUserInformation(PersonalInformationModel personalInformationModel,
      AddressInformationModel addressInformationModel) async {
    print(personalInformationModel);
    return Future.delayed(const Duration(milliseconds: 2500), () { return true;});
  }
}