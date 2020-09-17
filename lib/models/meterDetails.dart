class MeterDetails {
  String meterid;
  String metertype;
  String metertariff;

  MeterDetails({this.meterid, this.metertype, this.metertariff});

  MeterDetails.fromJson(Map<String, dynamic> json) {
    meterid = json['meterid'];
    metertype = json['metertype'];
    metertariff = json['metertariff'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['meterid'] = this.meterid;
    data['metertype'] = this.metertype;
    data['metertariff'] = this.metertariff;
    return data;
  }
}
