
@JsonSerializable()
class Food {
  final String id;
  final String title;
  final bool isNew;

  Food({required this.id, required this.title, this.isNew = false});
}
