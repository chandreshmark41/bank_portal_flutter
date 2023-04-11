

class PersonalInformationModel {

  final String firstName;
  final String lastName;
  final String mobileNumber;
  final String email;

  PersonalInformationModel(this.firstName, this.lastName, this.mobileNumber, this.email);

  @override
  String toString() {
    return 'PersonalInformationModel{firstName: $firstName, lastName: $lastName, mobileNumber: $mobileNumber, email: $email}';
  }
}