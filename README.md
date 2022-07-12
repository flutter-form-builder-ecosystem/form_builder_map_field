# [Discontinued] form_builder_map_field

This package is discontinued because this reasons:

- Easy to implement by developers
- Hard to mantain by community (one more package and dependency with google_maps_flutter)
- Only provide a solution to Google and no for others providers like OpenMaps

Map Input Field for flutter_form_builder package. Used to select coordinates on a map.

## Setup

This package makes use of [google_maps_flutter](https://pub.dev/packages/google_maps_flutter), for platform specific setup use the guidelines
specified [here](https://pub.dev/packages/google_maps_flutter#-readme-tab-)

## Usage
```dart
FormBuilderMapField(
  attribute: 'Coordinates',
  decoration: InputDecoration(labelText: 'Select Location'),
  markerIconColor: Colors.red,
  markerIconSize: 50,
  onChanged: (val){
    print(val);
  },
),
```
