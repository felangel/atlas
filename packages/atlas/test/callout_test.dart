import 'package:flutter_test/flutter_test.dart';
import 'package:atlas/atlas.dart';

main() {
  group('Marker Callout', () {
    test('should override == properly', () {
      final markerIcon = MarkerIcon(
        assetName: 'my-asset',
      );

      expect(
          CallOut(
            title: 'callout-title',
            subTitle: 'callout-subTitle',
            icon: markerIcon,
          ),
          CallOut(
            title: 'callout-title',
            subTitle: 'callout-subTitle',
            icon: markerIcon,
          ));
    });

    test('should override hashCode properly', () {
      final markerIcon = MarkerIcon(
        assetName: 'my-asset',
      );

      final callOut = CallOut(
        title: 'callout-title',
        subTitle: 'callout-subTitle',
        icon: markerIcon,
      );
      expect(
        callOut.hashCode,
        callOut.title.hashCode ^
            callOut.subTitle.hashCode ^
            callOut.icon.hashCode,
      );
    });
  });
}
