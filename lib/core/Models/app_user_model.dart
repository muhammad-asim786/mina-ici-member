class AppUserModel {
  String? firstName;
  String? alias;
  String? middleName;
  String? lastName;
  String? email;
  String? phoneNumber;
  String? userName;
  String? password;
  String? confirmPassword;
  String? address;
  String? month;
  String? day;
  String? year;
  String? city;
  String? state;
  String? zipCode;
  String? emrFirstName;
  String? emrLastName;
  String? emrAddress;

  AppUserModel(
      {this.firstName,
      this.alias,
      this.middleName,
      this.lastName,
      this.email,
      this.phoneNumber,
      this.userName,
      this.password,
      this.confirmPassword,
      this.address,
      this.month,
      this.day,
      this.year,
      this.city,
      this.state,
      this.zipCode,
      this.emrFirstName,
      this.emrLastName,
      this.emrAddress});

  AppUserModel.fromFirebase({firebase}) {
    firstName = firebase['firstName'];
    alias = firebase['alias'];
    middleName = firebase['middleName'];
    lastName = firebase['lastName'];
    email = firebase['email'];
    phoneNumber = firebase['phoneNumber'];
    userName = firebase['userName'];
    password = firebase['password'];
    confirmPassword = firebase['confirmPassword'];
    address = firebase['address'];
    month = firebase['month'];
    day = firebase['day'];
    year = firebase['year'];
    city = firebase['city'];
    state = firebase['state'];
    zipCode = firebase['zipCode'];
    emrFirstName = firebase['emrFirstName'];
    emrLastName = firebase['emrLastName'];
    emrAddress = firebase['emrAddress'];
  }

  toFirebase() {
    return {
      'firstName': firstName??"",
      'alias': alias ?? "",
      'middleName': middleName  ?? "",
      'lastName': lastName?? "",
      'email': email?? "",
      'phoneNumber': phoneNumber ?? "",
      'userName': userName?? "",
      'password': password?? "",
      'confirmPassword': confirmPassword?? "",
      'address': address?? "",
      'month': month?? "",
      'day': day?? "",
      'year': year?? "",
      'city': city?? "",
      'state': state?? "",
      'zipCode': zipCode?? "",
      'emrFirstName': emrFirstName?? "",
      'emrLastName': emrLastName?? "",
      'emrAddress': emrAddress?? "",
    };
  }
}
