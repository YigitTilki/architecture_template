// ignore_for_file: public_member_api_docs

enum ProjectRadius {
  small(8),
  medium(16),
  normal(20),
  large(32);

  const ProjectRadius(this.value);

  final double value;
}
