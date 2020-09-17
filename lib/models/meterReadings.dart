class MeterReadings {
  String meterid;
  double currentpower;
  double currentvoltage;
  double energy;

  MeterReadings(
      {this.meterid, this.currentpower, this.currentvoltage, this.energy});

  MeterReadings.fromJson(Map<String, dynamic> json) {
    meterid = json['meterid'];
    currentpower = json['currentpower'];
    currentvoltage = json['currentvoltage'];
    energy = json['energy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['meterid'] = this.meterid;
    data['currentpower'] = this.currentpower;
    data['currentvoltage'] = this.currentvoltage;
    data['energy'] = this.energy;
    return data;
  }
}
