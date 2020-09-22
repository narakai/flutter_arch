import 'package:flutter_arch/generated/json/base/json_convert_content.dart';

class TestEntity with JsonConvert<TestEntity> {
	int errorCode;
	String globalMessage;
	TestPayload payload;
	List<dynamic> errorMessageList;
}

class TestPayload with JsonConvert<TestPayload> {
	String airlineCode;
	String type;
	double score;
	dynamic paymentMethod;
	int paymentMethodMark;
	String countryName;
	int countryMark;
	double ownAircraftNum;
	int leaseAircraftNum;
	int shareAircraftNum;
	int aircraftMark;
	int flyStationMark;
	int flyStation01yNum;
	int avgFlights01yMark;
	int avgFlights01yNum;
	int avgPaymentday01y;
	int avgPaymentday01yMark;
	double latePaymentProportion01y;
	int latePaymentProp01yMark;
	double sailingtime;
	int sailingTimeMark;
	int beyondPaymentDayMark;
	int maxBeyondPaymentDay;
	int beyondPaymentAmountMark;
	double beyondPmtPeriodAmount;
	int majorEventsMark;
	int majorEventsNum;
	int computeTime;
}
