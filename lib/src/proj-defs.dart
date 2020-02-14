import 'dart:convert';
import 'package:proj4dart/proj4dart.dart';
import 'package:proj4dart/src/projections/epsg23700.dart';
import 'package:proj4dart/src/projections/epsg4326.dart';

// Global class for storing predefined and user-defined Projection definitions
class ProjDefs {
  // Cached projections
  final Map<String, Projection> _defs = {
    'EPSG:4326': Projection.fromJson(json.decode(epsg4326JSON)),
    'EPSG:23700': Projection.fromJson(json.decode(epsg23700JSON)),
  };

  static final ProjDefs _projDefs = ProjDefs._internal();

  factory ProjDefs() {
    return _projDefs;
  }

  ProjDefs._internal();

  // Add projection to cache
  // TODO
  Projection register(String name, String def) {
    var projection = null;
    return projection;
  }

  // Return a cached projection by its name
  Projection get(String name) {
    return _defs[name];
  }
}