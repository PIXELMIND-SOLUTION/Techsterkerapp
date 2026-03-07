class UserModel {
  final String id;
  final String name;
  final String email;
  final String phoneNumber;
  final String mobile;
  final String userId;
  final String token;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.mobile,
    required this.userId,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id:          json['_id']         ?? '',
      name:        json['name']        ?? '',
      email:       json['email']       ?? '',
      phoneNumber: json['phoneNumber'] ?? '',
      mobile:      json['mobile']      ?? '',
      userId:      json['userId']      ?? '',
      token:       json['token']       ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
    '_id':         id,
    'name':        name,
    'email':       email,
    'phoneNumber': phoneNumber,
    'mobile':      mobile,
    'userId':      userId,
    'token':       token,
  };
}

// ── Wrapper for the full login response ──────────────────────────────
class LoginResponse {
  final bool success;
  final String message;
  final UserModel? data;

  LoginResponse({
    required this.success,
    required this.message,
    this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
      data: json['data'] != null ? UserModel.fromJson(json['data']) : null,
    );
  }
}