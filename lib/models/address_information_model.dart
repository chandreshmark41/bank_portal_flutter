class AddressInformationModel {

  final String address;
  final String state;
  final String city;
  final String pincode;

  AddressInformationModel(this.address, this.state, this.city, this.pincode);

  @override
  String toString() {
    return 'AddressInformationModel{address: $address, state: $state, city: $city, pincode: $pincode}';
  }
}