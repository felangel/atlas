import 'package:flutter/foundation.dart';
import 'package:atlas/atlas.dart';
import 'package:flutter/material.dart';

/// A `Polyline` made up of multiple points on the map
class Polyline {
  /// Uniquely identifies a `Polyline`.
  final String id;

  /// A `List` of `LatLng` points that make up the polyline's shape.
  final List<LatLng> points;

  /// The `Color` of the line
  final Color color;

  /// Width of the polyline, used to define the width of the line segment to be drawn.
  ///
  /// The width is constant and independent of the camera's zoom level.
  /// The default value is 10.
  final int width;

  const Polyline({
    @required this.id,
    @required this.points,
    this.color = Colors.black,
    this.width = 10,
  })  : assert(id != null),
        assert(points != null);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    final Polyline typedOther = other;
    return id == typedOther.id &&
        points == typedOther.points &&
        color == typedOther.color &&
        width == typedOther.width;
  }

  @override
  int get hashCode =>
      id.hashCode ^ points.hashCode ^ color.hashCode ^ width.hashCode;
}
