// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $NoteCacheEntityTable extends NoteCacheEntity
    with TableInfo<$NoteCacheEntityTable, NoteCacheEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NoteCacheEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _dateCreatedMeta =
      const VerificationMeta('dateCreated');
  @override
  late final GeneratedColumn<DateTime> dateCreated = GeneratedColumn<DateTime>(
      'date_created', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, dateCreated, title, description];
  @override
  String get aliasedName => _alias ?? 'note_cache_entity';
  @override
  String get actualTableName => 'note_cache_entity';
  @override
  VerificationContext validateIntegrity(
      Insertable<NoteCacheEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('date_created')) {
      context.handle(
          _dateCreatedMeta,
          dateCreated.isAcceptableOrUnknown(
              data['date_created']!, _dateCreatedMeta));
    } else if (isInserting) {
      context.missing(_dateCreatedMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NoteCacheEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NoteCacheEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      dateCreated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_created'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
    );
  }

  @override
  $NoteCacheEntityTable createAlias(String alias) {
    return $NoteCacheEntityTable(attachedDatabase, alias);
  }
}

class NoteCacheEntityData extends DataClass
    implements Insertable<NoteCacheEntityData> {
  final int id;
  final DateTime dateCreated;
  final String title;
  final String description;
  const NoteCacheEntityData(
      {required this.id,
      required this.dateCreated,
      required this.title,
      required this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['date_created'] = Variable<DateTime>(dateCreated);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    return map;
  }

  NoteCacheEntityCompanion toCompanion(bool nullToAbsent) {
    return NoteCacheEntityCompanion(
      id: Value(id),
      dateCreated: Value(dateCreated),
      title: Value(title),
      description: Value(description),
    );
  }

  factory NoteCacheEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NoteCacheEntityData(
      id: serializer.fromJson<int>(json['id']),
      dateCreated: serializer.fromJson<DateTime>(json['dateCreated']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'dateCreated': serializer.toJson<DateTime>(dateCreated),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
    };
  }

  NoteCacheEntityData copyWith(
          {int? id,
          DateTime? dateCreated,
          String? title,
          String? description}) =>
      NoteCacheEntityData(
        id: id ?? this.id,
        dateCreated: dateCreated ?? this.dateCreated,
        title: title ?? this.title,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('NoteCacheEntityData(')
          ..write('id: $id, ')
          ..write('dateCreated: $dateCreated, ')
          ..write('title: $title, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, dateCreated, title, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NoteCacheEntityData &&
          other.id == this.id &&
          other.dateCreated == this.dateCreated &&
          other.title == this.title &&
          other.description == this.description);
}

class NoteCacheEntityCompanion extends UpdateCompanion<NoteCacheEntityData> {
  final Value<int> id;
  final Value<DateTime> dateCreated;
  final Value<String> title;
  final Value<String> description;
  const NoteCacheEntityCompanion({
    this.id = const Value.absent(),
    this.dateCreated = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
  });
  NoteCacheEntityCompanion.insert({
    this.id = const Value.absent(),
    required DateTime dateCreated,
    required String title,
    required String description,
  })  : dateCreated = Value(dateCreated),
        title = Value(title),
        description = Value(description);
  static Insertable<NoteCacheEntityData> custom({
    Expression<int>? id,
    Expression<DateTime>? dateCreated,
    Expression<String>? title,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (dateCreated != null) 'date_created': dateCreated,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
    });
  }

  NoteCacheEntityCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? dateCreated,
      Value<String>? title,
      Value<String>? description}) {
    return NoteCacheEntityCompanion(
      id: id ?? this.id,
      dateCreated: dateCreated ?? this.dateCreated,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (dateCreated.present) {
      map['date_created'] = Variable<DateTime>(dateCreated.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NoteCacheEntityCompanion(')
          ..write('id: $id, ')
          ..write('dateCreated: $dateCreated, ')
          ..write('title: $title, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $NoteCacheEntityTable noteCacheEntity =
      $NoteCacheEntityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [noteCacheEntity];
}
