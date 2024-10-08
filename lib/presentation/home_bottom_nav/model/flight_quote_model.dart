// class FlightQuoteModel {
//   dynamic id;
//   String? tripType;
//   String? departureCity;
//   String? arrivalCity;
//   String? departureDate;
//   dynamic returnDate;
//   dynamic adults;
//   dynamic children;
//   dynamic infants;
//   String? cabinClass;
//   bool? isFlexibleDates;
//   bool? isDirectFlight;
//   List<Flights>? flights;

//   FlightQuoteModel(
//       {this.id,
//       this.tripType,
//       this.departureCity,
//       this.arrivalCity,
//       this.departureDate,
//       this.returnDate,
//       this.adults,
//       this.children,
//       this.infants,
//       this.cabinClass,
//       this.isFlexibleDates,
//       this.isDirectFlight,
//       this.flights});

//   FlightQuoteModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     tripType = json['tripType'];
//     departureCity = json['departureCity'];
//     arrivalCity = json['arrivalCity'];
//     departureDate = json['departureDate'];
//     returnDate = json['returnDate'];
//     adults = json['adults'];
//     children = json['children'];
//     infants = json['infants'];
//     cabinClass = json['cabinClass'];
//     isFlexibleDates = json['isFlexibleDates'];
//     isDirectFlight = json['isDirectFlight'];
//     if (json['flights'] != null) {
//       flights = <Flights>[];
//       json['flights'].forEach((v) {
//         flights!.add(new Flights.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['tripType'] = this.tripType;
//     data['departureCity'] = this.departureCity;
//     data['arrivalCity'] = this.arrivalCity;
//     data['departureDate'] = this.departureDate;
//     data['returnDate'] = this.returnDate;
//     data['adults'] = this.adults;
//     data['children'] = this.children;
//     data['infants'] = this.infants;
//     data['cabinClass'] = this.cabinClass;
//     data['isFlexibleDates'] = this.isFlexibleDates;
//     data['isDirectFlight'] = this.isDirectFlight;
//     if (this.flights != null) {
//       data['flights'] = this.flights!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Flights {
//   dynamic id;
//   dynamic totalAmount;
//   dynamic taxesAmount;
//   dynamic ticketAmount;
//   dynamic agencyMarkup;
//   dynamic microSiteMarkup;
//   dynamic afroMarkup;
//   String? currency;
//   String? provider;
//   String? fareType;
//   OutBound? outBound;
//   OutBound? inBound;

//   Flights(
//       {this.id,
//       this.totalAmount,
//       this.taxesAmount,
//       this.ticketAmount,
//       this.agencyMarkup,
//       this.microSiteMarkup,
//       this.afroMarkup,
//       this.currency,
//       this.provider,
//       this.fareType,
//       this.outBound,
//       this.inBound});

//   Flights.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     totalAmount = json['totalAmount'];
//     taxesAmount = json['taxesAmount'];
//     ticketAmount = json['ticketAmount'];
//     agencyMarkup = json['agencyMarkup'];
//     microSiteMarkup = json['microSiteMarkup'];
//     afroMarkup = json['afroMarkup'];
//     currency = json['currency'];
//     provider = json['provider'];
//     fareType = json['fareType'];
//     outBound = json['outBound'] != null
//         ? new OutBound.fromJson(json['outBound'])
//         : null;
//     inBound =
//         json['inBound'] != null ? new OutBound.fromJson(json['inBound']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['totalAmount'] = this.totalAmount;
//     data['taxesAmount'] = this.taxesAmount;
//     data['ticketAmount'] = this.ticketAmount;
//     data['agencyMarkup'] = this.agencyMarkup;
//     data['microSiteMarkup'] = this.microSiteMarkup;
//     data['afroMarkup'] = this.afroMarkup;
//     data['currency'] = this.currency;
//     data['provider'] = this.provider;
//     data['fareType'] = this.fareType;
//     if (this.outBound != null) {
//       data['outBound'] = this.outBound!.toJson();
//     }
//     if (this.inBound != null) {
//       data['inBound'] = this.inBound!.toJson();
//     }
//     return data;
//   }
// }

// class OutBound {
//   String? departure;
//   String? arrival;
//   String? departureAirport;
//   String? arrivalAirport;
//   String? departureDateTime;
//   String? arrivalDateTime;
//   String? departureDate;
//   String? arrivalDate;
//   String? departureTime;
//   String? arrivalTime;
//   dynamic duration;
//   String? baggageAllowance;
//   dynamic flightRouteId;
//   dynamic flightScheduleId;
//   String? companyCode;
//   List<Segments>? segments;
//   dynamic fareRules;

//   OutBound(
//       {this.departure,
//       this.arrival,
//       this.departureAirport,
//       this.arrivalAirport,
//       this.departureDateTime,
//       this.arrivalDateTime,
//       this.departureDate,
//       this.arrivalDate,
//       this.departureTime,
//       this.arrivalTime,
//       this.duration,
//       this.baggageAllowance,
//       this.flightRouteId,
//       this.flightScheduleId,
//       this.companyCode,
//       this.segments,
//       this.fareRules});

//   OutBound.fromJson(Map<String, dynamic> json) {
//     departure = json['departure'];
//     arrival = json['arrival'];
//     departureAirport = json['departureAirport'];
//     arrivalAirport = json['arrivalAirport'];
//     departureDateTime = json['departureDateTime'];
//     arrivalDateTime = json['arrivalDateTime'];
//     departureDate = json['departureDate'];
//     arrivalDate = json['arrivalDate'];
//     departureTime = json['departureTime'];
//     arrivalTime = json['arrivalTime'];
//     duration = json['duration'];
//     baggageAllowance = json['baggageAllowance'];
//     flightRouteId = json['flightRouteId'];
//     flightScheduleId = json['flightScheduleId'];
//     companyCode = json['companyCode'];
//     if (json['segments'] != null) {
//       segments = <Segments>[];
//       json['segments'].forEach((v) {
//         segments!.add(new Segments.fromJson(v));
//       });
//     }
//     fareRules = json['fareRules'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['departure'] = this.departure;
//     data['arrival'] = this.arrival;
//     data['departureAirport'] = this.departureAirport;
//     data['arrivalAirport'] = this.arrivalAirport;
//     data['departureDateTime'] = this.departureDateTime;
//     data['arrivalDateTime'] = this.arrivalDateTime;
//     data['departureDate'] = this.departureDate;
//     data['arrivalDate'] = this.arrivalDate;
//     data['departureTime'] = this.departureTime;
//     data['arrivalTime'] = this.arrivalTime;
//     data['duration'] = this.duration;
//     data['baggageAllowance'] = this.baggageAllowance;
//     data['flightRouteId'] = this.flightRouteId;
//     data['flightScheduleId'] = this.flightScheduleId;
//     data['companyCode'] = this.companyCode;
//     if (this.segments != null) {
//       data['segments'] = this.segments!.map((v) => v.toJson()).toList();
//     }
//     data['fareRules'] = this.fareRules;
//     return data;
//   }
// }

// class Segments {
//   String? departure;
//   String? arrival;
//   String? departureAirport;
//   String? arrivalAirport;
//   String? departureDateTime;
//   String? arrivalDateTime;
//   String? duration;
//   String? airlineLogo;
//   String? airline;
//   String? airlineName;
//   String? flightNumber;
//   String? cabinType;
//   String? fareType;

//   Segments(
//       {this.departure,
//       this.arrival,
//       this.departureAirport,
//       this.arrivalAirport,
//       this.departureDateTime,
//       this.arrivalDateTime,
//       this.duration,
//       this.airlineLogo,
//       this.airline,
//       this.airlineName,
//       this.flightNumber,
//       this.cabinType,
//       this.fareType});

//   Segments.fromJson(Map<String, dynamic> json) {
//     departure = json['departure'];
//     arrival = json['arrival'];
//     departureAirport = json['departureAirport'];
//     arrivalAirport = json['arrivalAirport'];
//     departureDateTime = json['departureDateTime'];
//     arrivalDateTime = json['arrivalDateTime'];
//     duration = json['duration'];
//     airlineLogo = json['airlineLogo'];
//     airline = json['airline'];
//     airlineName = json['airlineName'];
//     flightNumber = json['flightNumber'];
//     cabinType = json['cabinType'];
//     fareType = json['fareType'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['departure'] = this.departure;
//     data['arrival'] = this.arrival;
//     data['departureAirport'] = this.departureAirport;
//     data['arrivalAirport'] = this.arrivalAirport;
//     data['departureDateTime'] = this.departureDateTime;
//     data['arrivalDateTime'] = this.arrivalDateTime;
//     data['duration'] = this.duration;
//     data['airlineLogo'] = this.airlineLogo;
//     data['airline'] = this.airline;
//     data['airlineName'] = this.airlineName;
//     data['flightNumber'] = this.flightNumber;
//     data['cabinType'] = this.cabinType;
//     data['fareType'] = this.fareType;
//     return data;
//   }
// }

// // ignore_for_file: unnecessary_question_mark

class FlightQuoteModel {
  dynamic id;
  String? tripType;
  String? departureCity;
  String? arrivalCity;
  String? departureDate;
  dynamic returnDate;
  dynamic adults;
  dynamic children;
  dynamic infants;
  String? cabinClass;
  bool? isFlexibleDates;
  bool? isDirectFlight;
  List<Flights>? flights;

  FlightQuoteModel(
      {this.id,
      this.tripType,
      this.departureCity,
      this.arrivalCity,
      this.departureDate,
      this.returnDate,
      this.adults,
      this.children,
      this.infants,
      this.cabinClass,
      this.isFlexibleDates,
      this.isDirectFlight,
      this.flights});

  FlightQuoteModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tripType = json['tripType'];
    departureCity = json['departureCity'];
    arrivalCity = json['arrivalCity'];
    departureDate = json['departureDate'];
    returnDate = json['returnDate'];
    adults = json['adults'];
    children = json['children'];
    infants = json['infants'];
    cabinClass = json['cabinClass'];
    isFlexibleDates = json['isFlexibleDates'];
    isDirectFlight = json['isDirectFlight'];
    if (json['flights'] != null) {
      flights = <Flights>[];
      json['flights'].forEach((v) {
        flights!.add(new Flights.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tripType'] = this.tripType;
    data['departureCity'] = this.departureCity;
    data['arrivalCity'] = this.arrivalCity;
    data['departureDate'] = this.departureDate;
    data['returnDate'] = this.returnDate;
    data['adults'] = this.adults;
    data['children'] = this.children;
    data['infants'] = this.infants;
    data['cabinClass'] = this.cabinClass;
    data['isFlexibleDates'] = this.isFlexibleDates;
    data['isDirectFlight'] = this.isDirectFlight;
    if (this.flights != null) {
      data['flights'] = this.flights!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Flights {
  dynamic id;
  dynamic? totalAmount;
  dynamic? taxesAmount;
  dynamic ticketAmount;
  dynamic agencyMarkup;
  dynamic microSiteMarkup;
  dynamic afroMarkup;
  String? currency;
  String? provider;
  String? fareType;
  OutBound? outBound;
  OutBound? inBound;

  Flights(
      {this.id,
      this.totalAmount,
      this.taxesAmount,
      this.ticketAmount,
      this.agencyMarkup,
      this.microSiteMarkup,
      this.afroMarkup,
      this.currency,
      this.provider,
      this.fareType,
      this.outBound,
      this.inBound});

  Flights.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    totalAmount = json['totalAmount'];
    taxesAmount = json['taxesAmount'];
    ticketAmount = json['ticketAmount'];
    agencyMarkup = json['agencyMarkup'];
    microSiteMarkup = json['microSiteMarkup'];
    afroMarkup = json['afroMarkup'];
    currency = json['currency'];
    provider = json['provider'];
    fareType = json['fareType'];
    outBound = json['outBound'] != null
        ? new OutBound.fromJson(json['outBound'])
        : null;
    inBound =
        json['inBound'] != null ? new OutBound.fromJson(json['inBound']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['totalAmount'] = this.totalAmount;
    data['taxesAmount'] = this.taxesAmount;
    data['ticketAmount'] = this.ticketAmount;
    data['agencyMarkup'] = this.agencyMarkup;
    data['microSiteMarkup'] = this.microSiteMarkup;
    data['afroMarkup'] = this.afroMarkup;
    data['currency'] = this.currency;
    data['provider'] = this.provider;
    data['fareType'] = this.fareType;
    if (this.outBound != null) {
      data['outBound'] = this.outBound!.toJson();
    }
    if (this.inBound != null) {
      data['inBound'] = this.inBound!.toJson();
    }
    return data;
  }
}

class OutBound {
  String? departure;
  String? arrival;
  String? departureAirport;
  String? arrivalAirport;
  String? departureDateTime;
  String? arrivalDateTime;
  String? departureDate;
  String? arrivalDate;
  String? departureTime;
  String? arrivalTime;
  dynamic? duration;
  String? baggageAllowance;
  dynamic flightRouteId;
  dynamic flightScheduleId;
  String? companyCode;
  List<Segments>? segments;
  dynamic fareRules;

  OutBound(
      {this.departure,
      this.arrival,
      this.departureAirport,
      this.arrivalAirport,
      this.departureDateTime,
      this.arrivalDateTime,
      this.departureDate,
      this.arrivalDate,
      this.departureTime,
      this.arrivalTime,
      this.duration,
      this.baggageAllowance,
      this.flightRouteId,
      this.flightScheduleId,
      this.companyCode,
      this.segments,
      this.fareRules});

  OutBound.fromJson(Map<String, dynamic> json) {
    departure = json['departure'];
    arrival = json['arrival'];
    departureAirport = json['departureAirport'];
    arrivalAirport = json['arrivalAirport'];
    departureDateTime = json['departureDateTime'];
    arrivalDateTime = json['arrivalDateTime'];
    departureDate = json['departureDate'];
    arrivalDate = json['arrivalDate'];
    departureTime = json['departureTime'];
    arrivalTime = json['arrivalTime'];
    duration = json['duration'];
    baggageAllowance = json['baggageAllowance'];
    flightRouteId = json['flightRouteId'];
    flightScheduleId = json['flightScheduleId'];
    companyCode = json['companyCode'];
    if (json['segments'] != null) {
      segments = <Segments>[];
      json['segments'].forEach((v) {
        segments!.add(new Segments.fromJson(v));
      });
    }
    fareRules = json['fareRules'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['departure'] = this.departure;
    data['arrival'] = this.arrival;
    data['departureAirport'] = this.departureAirport;
    data['arrivalAirport'] = this.arrivalAirport;
    data['departureDateTime'] = this.departureDateTime;
    data['arrivalDateTime'] = this.arrivalDateTime;
    data['departureDate'] = this.departureDate;
    data['arrivalDate'] = this.arrivalDate;
    data['departureTime'] = this.departureTime;
    data['arrivalTime'] = this.arrivalTime;
    data['duration'] = this.duration;
    data['baggageAllowance'] = this.baggageAllowance;
    data['flightRouteId'] = this.flightRouteId;
    data['flightScheduleId'] = this.flightScheduleId;
    data['companyCode'] = this.companyCode;
    if (this.segments != null) {
      data['segments'] = this.segments!.map((v) => v.toJson()).toList();
    }
    data['fareRules'] = this.fareRules;
    return data;
  }
}

class Segments {
  String? departure;
  String? arrival;
  String? departureAirport;
  String? arrivalAirport;
  String? departureDateTime;
  String? arrivalDateTime;
  String? duration;
  String? airlineLogo;
  String? airline;
  String? airlineName;
  String? flightNumber;
  String? cabinType;
  String? fareType;

  Segments(
      {this.departure,
      this.arrival,
      this.departureAirport,
      this.arrivalAirport,
      this.departureDateTime,
      this.arrivalDateTime,
      this.duration,
      this.airlineLogo,
      this.airline,
      this.airlineName,
      this.flightNumber,
      this.cabinType,
      this.fareType});

  Segments.fromJson(Map<String, dynamic> json) {
    departure = json['departure'];
    arrival = json['arrival'];
    departureAirport = json['departureAirport'];
    arrivalAirport = json['arrivalAirport'];
    departureDateTime = json['departureDateTime'];
    arrivalDateTime = json['arrivalDateTime'];
    duration = json['duration'];
    airlineLogo = json['airlineLogo'];
    airline = json['airline'];
    airlineName = json['airlineName'];
    flightNumber = json['flightNumber'];
    cabinType = json['cabinType'];
    fareType = json['fareType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['departure'] = this.departure;
    data['arrival'] = this.arrival;
    data['departureAirport'] = this.departureAirport;
    data['arrivalAirport'] = this.arrivalAirport;
    data['departureDateTime'] = this.departureDateTime;
    data['arrivalDateTime'] = this.arrivalDateTime;
    data['duration'] = this.duration;
    data['airlineLogo'] = this.airlineLogo;
    data['airline'] = this.airline;
    data['airlineName'] = this.airlineName;
    data['flightNumber'] = this.flightNumber;
    data['cabinType'] = this.cabinType;
    data['fareType'] = this.fareType;
    return data;
  }
}
