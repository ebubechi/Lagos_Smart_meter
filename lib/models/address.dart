class Address {
  String city;
  String buildingnumber;
  String street;
  String phone;

  Address({this.city, this.buildingnumber, this.street, this.phone});

  Address.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    buildingnumber = json['buildingnumber'];
    street = json['street'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['buildingnumber'] = this.buildingnumber;
    data['street'] = this.street;
    data['phone'] = this.phone;
    return data;
  }
}
