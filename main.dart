void main() {
  DateTime dob = DateTime(2001, 6, 6);
  int age = calculateAge(dob);
  print("You are $age years old.");
}

int calculateAge(DateTime dateOfBirth) {
  DateTime currentDate = DateTime.now();
  int age = currentDate.year - dateOfBirth.year;
  if (currentDate.month < dateOfBirth.month ||
      (currentDate.month == dateOfBirth.month && currentDate.day < dateOfBirth.day)) {
    age--;
  }
  return age;
}