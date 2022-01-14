// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final int id;
  final String username;
  final String name;
  final String email;
  final String phone;
  final String website;
  final String city;
  final String street;
  final String suite;
  final String companyName;
  final String catchPhrase;
  final String bs;
  User(
      {required this.id,
      required this.username,
      required this.name,
      required this.email,
      required this.phone,
      required this.website,
      required this.city,
      required this.street,
      required this.suite,
      required this.companyName,
      required this.catchPhrase,
      required this.bs});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return User(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      username: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}username'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email'])!,
      phone: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phone'])!,
      website: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}website'])!,
      city: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city'])!,
      street: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}street'])!,
      suite: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}suite'])!,
      companyName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}company_name'])!,
      catchPhrase: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}catch_phrase'])!,
      bs: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}bs'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['username'] = Variable<String>(username);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['phone'] = Variable<String>(phone);
    map['website'] = Variable<String>(website);
    map['city'] = Variable<String>(city);
    map['street'] = Variable<String>(street);
    map['suite'] = Variable<String>(suite);
    map['company_name'] = Variable<String>(companyName);
    map['catch_phrase'] = Variable<String>(catchPhrase);
    map['bs'] = Variable<String>(bs);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      username: Value(username),
      name: Value(name),
      email: Value(email),
      phone: Value(phone),
      website: Value(website),
      city: Value(city),
      street: Value(street),
      suite: Value(suite),
      companyName: Value(companyName),
      catchPhrase: Value(catchPhrase),
      bs: Value(bs),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      username: serializer.fromJson<String>(json['username']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      phone: serializer.fromJson<String>(json['phone']),
      website: serializer.fromJson<String>(json['website']),
      city: serializer.fromJson<String>(json['city']),
      street: serializer.fromJson<String>(json['street']),
      suite: serializer.fromJson<String>(json['suite']),
      companyName: serializer.fromJson<String>(json['companyName']),
      catchPhrase: serializer.fromJson<String>(json['catchPhrase']),
      bs: serializer.fromJson<String>(json['bs']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'username': serializer.toJson<String>(username),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'phone': serializer.toJson<String>(phone),
      'website': serializer.toJson<String>(website),
      'city': serializer.toJson<String>(city),
      'street': serializer.toJson<String>(street),
      'suite': serializer.toJson<String>(suite),
      'companyName': serializer.toJson<String>(companyName),
      'catchPhrase': serializer.toJson<String>(catchPhrase),
      'bs': serializer.toJson<String>(bs),
    };
  }

  User copyWith(
          {int? id,
          String? username,
          String? name,
          String? email,
          String? phone,
          String? website,
          String? city,
          String? street,
          String? suite,
          String? companyName,
          String? catchPhrase,
          String? bs}) =>
      User(
        id: id ?? this.id,
        username: username ?? this.username,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        city: city ?? this.city,
        street: street ?? this.street,
        suite: suite ?? this.suite,
        companyName: companyName ?? this.companyName,
        catchPhrase: catchPhrase ?? this.catchPhrase,
        bs: bs ?? this.bs,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('website: $website, ')
          ..write('city: $city, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('companyName: $companyName, ')
          ..write('catchPhrase: $catchPhrase, ')
          ..write('bs: $bs')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, username, name, email, phone, website,
      city, street, suite, companyName, catchPhrase, bs);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.username == this.username &&
          other.name == this.name &&
          other.email == this.email &&
          other.phone == this.phone &&
          other.website == this.website &&
          other.city == this.city &&
          other.street == this.street &&
          other.suite == this.suite &&
          other.companyName == this.companyName &&
          other.catchPhrase == this.catchPhrase &&
          other.bs == this.bs);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> username;
  final Value<String> name;
  final Value<String> email;
  final Value<String> phone;
  final Value<String> website;
  final Value<String> city;
  final Value<String> street;
  final Value<String> suite;
  final Value<String> companyName;
  final Value<String> catchPhrase;
  final Value<String> bs;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.username = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.website = const Value.absent(),
    this.city = const Value.absent(),
    this.street = const Value.absent(),
    this.suite = const Value.absent(),
    this.companyName = const Value.absent(),
    this.catchPhrase = const Value.absent(),
    this.bs = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required String username,
    required String name,
    required String email,
    required String phone,
    required String website,
    required String city,
    required String street,
    required String suite,
    required String companyName,
    required String catchPhrase,
    required String bs,
  })  : username = Value(username),
        name = Value(name),
        email = Value(email),
        phone = Value(phone),
        website = Value(website),
        city = Value(city),
        street = Value(street),
        suite = Value(suite),
        companyName = Value(companyName),
        catchPhrase = Value(catchPhrase),
        bs = Value(bs);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? username,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? phone,
    Expression<String>? website,
    Expression<String>? city,
    Expression<String>? street,
    Expression<String>? suite,
    Expression<String>? companyName,
    Expression<String>? catchPhrase,
    Expression<String>? bs,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (username != null) 'username': username,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (website != null) 'website': website,
      if (city != null) 'city': city,
      if (street != null) 'street': street,
      if (suite != null) 'suite': suite,
      if (companyName != null) 'company_name': companyName,
      if (catchPhrase != null) 'catch_phrase': catchPhrase,
      if (bs != null) 'bs': bs,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id,
      Value<String>? username,
      Value<String>? name,
      Value<String>? email,
      Value<String>? phone,
      Value<String>? website,
      Value<String>? city,
      Value<String>? street,
      Value<String>? suite,
      Value<String>? companyName,
      Value<String>? catchPhrase,
      Value<String>? bs}) {
    return UsersCompanion(
      id: id ?? this.id,
      username: username ?? this.username,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      website: website ?? this.website,
      city: city ?? this.city,
      street: street ?? this.street,
      suite: suite ?? this.suite,
      companyName: companyName ?? this.companyName,
      catchPhrase: catchPhrase ?? this.catchPhrase,
      bs: bs ?? this.bs,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (website.present) {
      map['website'] = Variable<String>(website.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (street.present) {
      map['street'] = Variable<String>(street.value);
    }
    if (suite.present) {
      map['suite'] = Variable<String>(suite.value);
    }
    if (companyName.present) {
      map['company_name'] = Variable<String>(companyName.value);
    }
    if (catchPhrase.present) {
      map['catch_phrase'] = Variable<String>(catchPhrase.value);
    }
    if (bs.present) {
      map['bs'] = Variable<String>(bs.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('website: $website, ')
          ..write('city: $city, ')
          ..write('street: $street, ')
          ..write('suite: $suite, ')
          ..write('companyName: $companyName, ')
          ..write('catchPhrase: $catchPhrase, ')
          ..write('bs: $bs')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String? _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  @override
  late final GeneratedColumn<String?> username = GeneratedColumn<String?>(
      'username', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String?> phone = GeneratedColumn<String?>(
      'phone', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _websiteMeta = const VerificationMeta('website');
  @override
  late final GeneratedColumn<String?> website = GeneratedColumn<String?>(
      'website', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String?> city = GeneratedColumn<String?>(
      'city', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _streetMeta = const VerificationMeta('street');
  @override
  late final GeneratedColumn<String?> street = GeneratedColumn<String?>(
      'street', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _suiteMeta = const VerificationMeta('suite');
  @override
  late final GeneratedColumn<String?> suite = GeneratedColumn<String?>(
      'suite', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _companyNameMeta =
      const VerificationMeta('companyName');
  @override
  late final GeneratedColumn<String?> companyName = GeneratedColumn<String?>(
      'company_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _catchPhraseMeta =
      const VerificationMeta('catchPhrase');
  @override
  late final GeneratedColumn<String?> catchPhrase = GeneratedColumn<String?>(
      'catch_phrase', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _bsMeta = const VerificationMeta('bs');
  @override
  late final GeneratedColumn<String?> bs = GeneratedColumn<String?>(
      'bs', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        username,
        name,
        email,
        phone,
        website,
        city,
        street,
        suite,
        companyName,
        catchPhrase,
        bs
      ];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('website')) {
      context.handle(_websiteMeta,
          website.isAcceptableOrUnknown(data['website']!, _websiteMeta));
    } else if (isInserting) {
      context.missing(_websiteMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('street')) {
      context.handle(_streetMeta,
          street.isAcceptableOrUnknown(data['street']!, _streetMeta));
    } else if (isInserting) {
      context.missing(_streetMeta);
    }
    if (data.containsKey('suite')) {
      context.handle(
          _suiteMeta, suite.isAcceptableOrUnknown(data['suite']!, _suiteMeta));
    } else if (isInserting) {
      context.missing(_suiteMeta);
    }
    if (data.containsKey('company_name')) {
      context.handle(
          _companyNameMeta,
          companyName.isAcceptableOrUnknown(
              data['company_name']!, _companyNameMeta));
    } else if (isInserting) {
      context.missing(_companyNameMeta);
    }
    if (data.containsKey('catch_phrase')) {
      context.handle(
          _catchPhraseMeta,
          catchPhrase.isAcceptableOrUnknown(
              data['catch_phrase']!, _catchPhraseMeta));
    } else if (isInserting) {
      context.missing(_catchPhraseMeta);
    }
    if (data.containsKey('bs')) {
      context.handle(_bsMeta, bs.isAcceptableOrUnknown(data['bs']!, _bsMeta));
    } else if (isInserting) {
      context.missing(_bsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    return User.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $UsersTable users = $UsersTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users];
}
