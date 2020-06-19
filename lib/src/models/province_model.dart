// Copyright (C) 2020 covid19cuba
// Use of this source code is governed by a GNU GPL 3 license that can be
// found in the LICENSE file.

import 'package:covid19cuba/src/models/models.dart';
import 'package:covid19cuba/src/utils/functions.dart';
import 'package:json_annotation/json_annotation.dart';

part 'province_model.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class ProvinceModel {
  @JsonKey(name: 'dpa_province_code')
  String provinceCode;

  @JsonKey(name: 'updated', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime updated;

  @JsonKey(name: 'resume')
  List<ItemDouble> resume;

  @JsonKey(name: 'map_data')
  Map<String, dynamic> mapData;

  @JsonKey(name: 'cases_by_sex')
  CasesBySex casesBySex;

  @JsonKey(name: 'cases_by_mode_of_contagion')
  CasesByModeOfContagion casesByModeOfContagion;

  @JsonKey(name: 'evolution_of_cases_by_days')
  EvolutionOfCasesByDays evolutionOfCasesByDays;

  @JsonKey(name: 'distribution_by_age_ranges')
  List<ItemCodePlus> distributionByAgeRanges;

  @JsonKey(name: 'cases_by_nationality')
  CasesByNationality casesByNationality;

  @JsonKey(name: 'distribution_by_nationality_of_foreign_cases')
  List<ItemCode> distributionByNationalityOfForeignCases;

  @JsonKey(name: 'effective_reproductive_number')
  EffectiveReproductiveNumber effectiveReproductiveNumber;

  @JsonKey(name: 'affected_municipalities')
  List<ItemMunicipality> affectedMunicipalities;

  @JsonKey(
    name: 'deceases_updated',
    fromJson: dateTimeFromJson,
    toJson: dateTimeToJson,
  )
  DateTime deceasesUpdated;

  @JsonKey(name: 'deceases_resume')
  List<ItemDouble> deceasesResume;

  @JsonKey(name: 'deceases_map_data')
  Map<String, dynamic> deceasesMapData;

  @JsonKey(name: 'deceases_evolution_by_days')
  EvolutionOfDeathsByDays deceasesEvolutionByDays;

  @JsonKey(name: 'deceases_by_sex')
  CasesBySex deceasesBySex;

  @JsonKey(name: 'deceases_distribution_by_age_ranges')
  List<ItemCodePlus> deceasesDistributionByAgeRanges;

  @JsonKey(name: 'deceases_by_nationality')
  CasesByNationality deceasesByNationality;

  @JsonKey(name: 'deceases_distribution_amount_disease_history')
  Map<String, Item> deceasesDistributionAmountDiseaseHistory;

  @JsonKey(name: 'deceases_common_previous_diseases')
  List<ItemCode> deceasesCommonPreviousDiseases;

  @JsonKey(name: 'deceases_affected_municipalities')
  List<ItemMunicipality> deceasesAffectedMunicipalities;

  ProvinceModel();

  factory ProvinceModel.fromJson(Map<String, dynamic> json) =>
      _$ProvinceModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProvinceModelToJson(this);
}
