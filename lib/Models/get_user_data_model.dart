class UserProfileModel {
  late String user_Id,userName,email,phone_number,DoB, profilePic;

  UserProfileModel({required this.user_Id, required this.userName, required this.email, required this.phone_number,required this.DoB,required this.profilePic});

  UserProfileModel.fromJson(Map<String, dynamic> map) {
    user_Id = map['user_Id'];
    userName = map['userName'];
    email = map['email'];
    phone_number = map['phone_number'];
    DoB = map['DoB'];
    profilePic = map['profilePic'];
  }
}