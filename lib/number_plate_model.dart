class NumberPlateModel {
  String id;
  String area;
  String name;
  NumberPlateModel({required this.id, required this.area, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'area': area,
      'name': name,
    };
  }

  @override
  String toString() {
    return 'NumberPlate{id:$id, area:$area, name:$name}';
  }
}
