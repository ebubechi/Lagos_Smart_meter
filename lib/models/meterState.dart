class MeterState {
  String meterid;
  String state;

  MeterState({this.meterid, this.state});

  MeterState.fromJson(Map<String, dynamic> json) {
    meterid = json['meterid'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['meterid'] = this.meterid;
    data['state'] = this.state;
    return data;
  }
}
