import 'package:flutter_arch/model/test_entity.dart';

testEntityFromJson(TestEntity data, Map<String, dynamic> json) {
	if (json['errorCode'] != null) {
		data.errorCode = json['errorCode']?.toInt();
	}
	if (json['globalMessage'] != null) {
		data.globalMessage = json['globalMessage']?.toString();
	}
	if (json['payload'] != null) {
		data.payload = new TestPayload().fromJson(json['payload']);
	}
	if (json['errorMessageList'] != null) {
		data.errorMessageList = new List<dynamic>();
		data.errorMessageList.addAll(json['errorMessageList']);
	}
	return data;
}

Map<String, dynamic> testEntityToJson(TestEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['errorCode'] = entity.errorCode;
	data['globalMessage'] = entity.globalMessage;
	if (entity.payload != null) {
		data['payload'] = entity.payload.toJson();
	}
	if (entity.errorMessageList != null) {
		data['errorMessageList'] =  [];
	}
	return data;
}

testPayloadFromJson(TestPayload data, Map<String, dynamic> json) {
	if (json['airlineCode'] != null) {
		data.airlineCode = json['airlineCode']?.toString();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	if (json['score'] != null) {
		data.score = json['score']?.toDouble();
	}
	if (json['paymentMethod'] != null) {
		data.paymentMethod = json['paymentMethod'];
	}
	if (json['paymentMethodMark'] != null) {
		data.paymentMethodMark = json['paymentMethodMark']?.toInt();
	}
	if (json['countryName'] != null) {
		data.countryName = json['countryName']?.toString();
	}
	if (json['countryMark'] != null) {
		data.countryMark = json['countryMark']?.toInt();
	}
	if (json['ownAircraftNum'] != null) {
		data.ownAircraftNum = json['ownAircraftNum']?.toDouble();
	}
	if (json['leaseAircraftNum'] != null) {
		data.leaseAircraftNum = json['leaseAircraftNum']?.toInt();
	}
	if (json['shareAircraftNum'] != null) {
		data.shareAircraftNum = json['shareAircraftNum']?.toInt();
	}
	if (json['aircraftMark'] != null) {
		data.aircraftMark = json['aircraftMark']?.toInt();
	}
	if (json['flyStationMark'] != null) {
		data.flyStationMark = json['flyStationMark']?.toInt();
	}
	if (json['flyStation01yNum'] != null) {
		data.flyStation01yNum = json['flyStation01yNum']?.toInt();
	}
	if (json['avgFlights01yMark'] != null) {
		data.avgFlights01yMark = json['avgFlights01yMark']?.toInt();
	}
	if (json['avgFlights01yNum'] != null) {
		data.avgFlights01yNum = json['avgFlights01yNum']?.toInt();
	}
	if (json['avgPaymentday01y'] != null) {
		data.avgPaymentday01y = json['avgPaymentday01y']?.toInt();
	}
	if (json['avgPaymentday01yMark'] != null) {
		data.avgPaymentday01yMark = json['avgPaymentday01yMark']?.toInt();
	}
	if (json['latePaymentProportion01y'] != null) {
		data.latePaymentProportion01y = json['latePaymentProportion01y']?.toDouble();
	}
	if (json['latePaymentProp01yMark'] != null) {
		data.latePaymentProp01yMark = json['latePaymentProp01yMark']?.toInt();
	}
	if (json['sailingtime'] != null) {
		data.sailingtime = json['sailingtime']?.toDouble();
	}
	if (json['sailingTimeMark'] != null) {
		data.sailingTimeMark = json['sailingTimeMark']?.toInt();
	}
	if (json['beyondPaymentDayMark'] != null) {
		data.beyondPaymentDayMark = json['beyondPaymentDayMark']?.toInt();
	}
	if (json['maxBeyondPaymentDay'] != null) {
		data.maxBeyondPaymentDay = json['maxBeyondPaymentDay']?.toInt();
	}
	if (json['beyondPaymentAmountMark'] != null) {
		data.beyondPaymentAmountMark = json['beyondPaymentAmountMark']?.toInt();
	}
	if (json['beyondPmtPeriodAmount'] != null) {
		data.beyondPmtPeriodAmount = json['beyondPmtPeriodAmount']?.toDouble();
	}
	if (json['majorEventsMark'] != null) {
		data.majorEventsMark = json['majorEventsMark']?.toInt();
	}
	if (json['majorEventsNum'] != null) {
		data.majorEventsNum = json['majorEventsNum']?.toInt();
	}
	if (json['computeTime'] != null) {
		data.computeTime = json['computeTime']?.toInt();
	}
	return data;
}

Map<String, dynamic> testPayloadToJson(TestPayload entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['airlineCode'] = entity.airlineCode;
	data['type'] = entity.type;
	data['score'] = entity.score;
	data['paymentMethod'] = entity.paymentMethod;
	data['paymentMethodMark'] = entity.paymentMethodMark;
	data['countryName'] = entity.countryName;
	data['countryMark'] = entity.countryMark;
	data['ownAircraftNum'] = entity.ownAircraftNum;
	data['leaseAircraftNum'] = entity.leaseAircraftNum;
	data['shareAircraftNum'] = entity.shareAircraftNum;
	data['aircraftMark'] = entity.aircraftMark;
	data['flyStationMark'] = entity.flyStationMark;
	data['flyStation01yNum'] = entity.flyStation01yNum;
	data['avgFlights01yMark'] = entity.avgFlights01yMark;
	data['avgFlights01yNum'] = entity.avgFlights01yNum;
	data['avgPaymentday01y'] = entity.avgPaymentday01y;
	data['avgPaymentday01yMark'] = entity.avgPaymentday01yMark;
	data['latePaymentProportion01y'] = entity.latePaymentProportion01y;
	data['latePaymentProp01yMark'] = entity.latePaymentProp01yMark;
	data['sailingtime'] = entity.sailingtime;
	data['sailingTimeMark'] = entity.sailingTimeMark;
	data['beyondPaymentDayMark'] = entity.beyondPaymentDayMark;
	data['maxBeyondPaymentDay'] = entity.maxBeyondPaymentDay;
	data['beyondPaymentAmountMark'] = entity.beyondPaymentAmountMark;
	data['beyondPmtPeriodAmount'] = entity.beyondPmtPeriodAmount;
	data['majorEventsMark'] = entity.majorEventsMark;
	data['majorEventsNum'] = entity.majorEventsNum;
	data['computeTime'] = entity.computeTime;
	return data;
}