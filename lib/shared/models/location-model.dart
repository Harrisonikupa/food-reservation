class Location {
  String? street;
  String? city;
  String? state;
  String? country;
  String? timezone;
  Location({
    this.street,
    this.city,
    this.country,
    this.state,
    this.timezone,
  });

  Location.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = this.street;
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    data['timezone'] = this.timezone;
    return data;
  }
}
