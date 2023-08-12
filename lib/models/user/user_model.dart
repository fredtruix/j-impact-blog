// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/foundation.dart';

class UserModel {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? phoneNumber;
  final String? email;
  final bool? accountIsActive;
  final bool? verifiedPhone;
  final bool? verifiedCar;
  final double? walletBalance;
  final List<dynamic>? preferences;
  final List<dynamic>? verificationDocuments;
  final String? profileImageUrl;
  final String? residenceLocation;
  final String? carImage;
  final String? carCondition;
  final String? carRoutine;
  final String? carMake;
  final String? carModel;
  final String? carPlateNumber;
  final String? carColor;
  final double? distanceForToday;
  final double? earnedForToday;
  final double? allTimeDistance;
  const UserModel({
    this.id,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.email,
    this.accountIsActive,
    this.verifiedPhone,
    this.verifiedCar,
    this.walletBalance,
    this.preferences,
    this.verificationDocuments,
    this.profileImageUrl,
    this.residenceLocation,
    this.carImage,
    this.carCondition,
    this.carRoutine,
    this.carMake,
    this.carModel,
    this.carPlateNumber,
    this.carColor,
    this.distanceForToday,
    this.earnedForToday,
    this.allTimeDistance,
  });

  UserModel copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? email,
    bool? accountIsActive,
    bool? verifiedPhone,
    bool? verifiedCar,
    double? walletBalance,
    List<dynamic>? preferences,
    List<dynamic>? verificationDocuments,
    String? profileImageUrl,
    String? residenceLocation,
    String? carImage,
    String? carCondition,
    String? carRoutine,
    String? carMake,
    String? carModel,
    String? carPlateNumber,
    String? carColor,
    double? distanceForToday,
    double? earnedForToday,
    double? allTimeDistance,
  }) {
    return UserModel(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      accountIsActive: accountIsActive ?? this.accountIsActive,
      verifiedPhone: verifiedPhone ?? this.verifiedPhone,
      verifiedCar: verifiedCar ?? this.verifiedCar,
      walletBalance: walletBalance ?? this.walletBalance,
      preferences: preferences ?? this.preferences,
      verificationDocuments:
          verificationDocuments ?? this.verificationDocuments,
      profileImageUrl: profileImageUrl ?? this.profileImageUrl,
      residenceLocation: residenceLocation ?? this.residenceLocation,
      carImage: carImage ?? this.carImage,
      carCondition: carCondition ?? this.carCondition,
      carRoutine: carRoutine ?? this.carRoutine,
      carMake: carMake ?? this.carMake,
      carModel: carModel ?? this.carModel,
      carPlateNumber: carPlateNumber ?? this.carPlateNumber,
      carColor: carColor ?? this.carColor,
      distanceForToday: distanceForToday ?? this.distanceForToday,
      earnedForToday: earnedForToday ?? this.earnedForToday,
      allTimeDistance: allTimeDistance ?? this.allTimeDistance,
    );
  }

  Map<String, dynamic> toJSON() => {
        '_id': id,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'accountIsActive': accountIsActive,
        'verifiedPhone': verifiedPhone,
        'verifiedCar': verifiedCar,
        'walletBalance': walletBalance,
        'preferences': preferences,
        'verificationDocuments': verificationDocuments,
        'profileImageUrl': profileImageUrl,
        'residenceLocation': residenceLocation,
        'carImage': carImage,
        'carCondition': carCondition,
        'carRoutine': carRoutine,
        'carMake': carMake,
        'carModel': carModel,
        'carPlateNumber': carPlateNumber,
        'carColor': carColor,
        'phoneNumber': phoneNumber,
        'distanceForToday': distanceForToday,
        'earnedForToday': earnedForToday,
        'allTimeDistance': allTimeDistance,
      };

  factory UserModel.fromJSON(Map<String, dynamic> json) => UserModel(
        id: json['_id'] ?? '',
        firstName: json['firstName'] ?? '',
        lastName: json['lastName'] ?? '',
        email: json['email'] ?? '',
        accountIsActive: json['accountIsActive'] ?? false,
        verifiedPhone: json['verifiedPhone'] ?? false,
        verifiedCar: json['verifiedCar'] ?? false,
        walletBalance: double.tryParse(json['walletBalance'].toString()) ?? 0.0,
        phoneNumber: json['phoneNumber'] ?? '',
        preferences: json['preferences'] ?? [],
        verificationDocuments: json['verificationDocuments'] ?? [],
        profileImageUrl: json['profileImageUrl'] ?? '',
        residenceLocation: json['residenceLocation'] ?? '',
        carImage: json['carImage'] ?? '',
        carCondition: json['carCondition'] ?? '',
        carRoutine: json['carRoutine'] ?? '',
        carMake: json['carMake'] ?? '',
        carModel: json['carModel'] ?? '',
        carPlateNumber: json['carPlateNumber'] ?? '',
        carColor: json['carColor'] ?? '',
        distanceForToday:
            double.tryParse(json['distanceForToday'].toString()) ?? 0.0,
        earnedForToday:
            double.tryParse(json['earnedForToday'].toString()) ?? 0.0,
        allTimeDistance:
            double.tryParse(json['allTimeDistance'].toString()) ?? 0.0,
      );

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, email: $email, accountIsActive: $accountIsActive, verifiedPhone: $verifiedPhone, verifiedCar: $verifiedCar, walletBalance: $walletBalance, preferences: $preferences, verificationDocuments: $verificationDocuments, profileImageUrl: $profileImageUrl, residenceLocation: $residenceLocation, carImage: $carImage, carCondition: $carCondition, carRoutine: $carRoutine, carMake: $carMake, carModel: $carModel, carPlateNumber: $carPlateNumber, carColor: $carColor, distanceForToday: $distanceForToday, earnedForToday: $earnedForToday, allTimeDistance: $allTimeDistance)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.phoneNumber == phoneNumber &&
        other.email == email &&
        other.accountIsActive == accountIsActive &&
        other.verifiedPhone == verifiedPhone &&
        other.verifiedCar == verifiedCar &&
        other.walletBalance == walletBalance &&
        listEquals(other.preferences, preferences) &&
        listEquals(other.verificationDocuments, verificationDocuments) &&
        other.profileImageUrl == profileImageUrl &&
        other.residenceLocation == residenceLocation &&
        other.carImage == carImage &&
        other.carCondition == carCondition &&
        other.carRoutine == carRoutine &&
        other.carMake == carMake &&
        other.carModel == carModel &&
        other.carPlateNumber == carPlateNumber &&
        other.carColor == carColor &&
        other.distanceForToday == distanceForToday &&
        other.earnedForToday == earnedForToday &&
        other.allTimeDistance == allTimeDistance;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        phoneNumber.hashCode ^
        email.hashCode ^
        accountIsActive.hashCode ^
        verifiedPhone.hashCode ^
        verifiedCar.hashCode ^
        walletBalance.hashCode ^
        preferences.hashCode ^
        verificationDocuments.hashCode ^
        profileImageUrl.hashCode ^
        residenceLocation.hashCode ^
        carImage.hashCode ^
        carCondition.hashCode ^
        carRoutine.hashCode ^
        carMake.hashCode ^
        carModel.hashCode ^
        carPlateNumber.hashCode ^
        carColor.hashCode ^
        distanceForToday.hashCode ^
        earnedForToday.hashCode ^
        allTimeDistance.hashCode;
  }
}
