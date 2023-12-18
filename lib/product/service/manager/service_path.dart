// ignore_for_file: public_member_api_docs

enum ProductServicePath {
  usersV1('user'),
  posts('posts'),
  userV2('v2/users');

  const ProductServicePath(this.value);

  final String value;

  String withQuery(String value) {
    return '${this.value}/$value';
  }
}
