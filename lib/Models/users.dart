import 'dart:convert';

class Users {
  final String ID;
  final String EMAIL;
  final String NOM;
  final String PHOTO;
  final String UROLE;
  final String ACTIVE;
  final String NUMEROTELEPHONE;
  Users({
    required this.ID,
    required this.EMAIL,
    required this.NOM,
    required this.PHOTO,
    required this.UROLE,
    required this.ACTIVE,
    required this.NUMEROTELEPHONE,
  });

  Users copyWith({
    String? ID,
    String? EMAIL,
    String? NOM,
    String? PHOTO,
    String? UROLE,
    String? ACTIVE,
    String? NUMEROTELEPHONE,
  }) {
    return Users(
      ID: ID ?? this.ID,
      EMAIL: EMAIL ?? this.EMAIL,
      NOM: NOM ?? this.NOM,
      PHOTO: PHOTO ?? this.PHOTO,
      UROLE: UROLE ?? this.UROLE,
      ACTIVE: ACTIVE ?? this.ACTIVE,
      NUMEROTELEPHONE: NUMEROTELEPHONE ?? this.NUMEROTELEPHONE,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ID': ID,
      'EMAIL': EMAIL,
      'NOM': NOM,
      'PHOTO': PHOTO,
      'UROLE': UROLE,
      'ACTIVE': ACTIVE,
      'NUMEROTELEPHONE': NUMEROTELEPHONE,
    };
  }

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      ID: map['ID'] ?? '',
      EMAIL: map['EMAIL'] ?? '',
      NOM: map['NOM'] ?? '',
      PHOTO: map['PHOTO'] ?? '',
      UROLE: map['UROLE'] ?? '',
      ACTIVE: map['ACTIVE'] ?? '',
      NUMEROTELEPHONE: map['NUMEROTELEPHONE'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Users.fromJson(String source) => Users.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Users(ID: $ID, EMAIL: $EMAIL, NOM: $NOM, PHOTO: $PHOTO, UROLE: $UROLE, ACTIVE: $ACTIVE, NUMEROTELEPHONE: $NUMEROTELEPHONE)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Users &&
        other.ID == ID &&
        other.EMAIL == EMAIL &&
        other.NOM == NOM &&
        other.PHOTO == PHOTO &&
        other.UROLE == UROLE &&
        other.ACTIVE == ACTIVE &&
        other.NUMEROTELEPHONE == NUMEROTELEPHONE;
  }

  @override
  int get hashCode {
    return ID.hashCode ^
        EMAIL.hashCode ^
        NOM.hashCode ^
        PHOTO.hashCode ^
        UROLE.hashCode ^
        ACTIVE.hashCode ^
        NUMEROTELEPHONE.hashCode;
  }
}
