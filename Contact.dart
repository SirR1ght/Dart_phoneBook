import 'dart:io';

class Contact {
	String _firstname = "";
	String _lastname = "";
	String _nickname = "";
	String _phonenumber = "";
	String _darkestsecret = "";

	void setFirstName() {
		print('Enter First name:');
		final data = stdin.readLineSync();
		if (data != null) {
			_firstname = data;
		}
		while (_firstname == "") {
			print('The data field must be filled!');
			final data = stdin.readLineSync();
			if (data != null) {
				_firstname = data;
			}
		}
	}

	void	setLastName() {
		print('Enter Last name:');
		final data = stdin.readLineSync();
		if (data != null) {
			_lastname = data;
		}
		while (_lastname == "")	{
			print('The data field must be filled!');
			final data = stdin.readLineSync();
			if (data != null) {
				_lastname= data;
			}
		}
	}

	void	setNickname() {
		print('Enter Nickname:');
		final data = stdin.readLineSync();
		if (data != null) {
			_nickname = data;
		}
		while (_nickname == "")	{
			print('The data field must be filled!');
			final data = stdin.readLineSync();
			if (data != null) {
				_nickname = data;
			}
		}
	}

	void	setPhoneNumber() {
		print('Enter phone number:');
		final data = stdin.readLineSync();
		if (data != null) {
			_phonenumber = data;
		}
		while (_phonenumber == "") {
			print('The data field must be filled!');
			final data = stdin.readLineSync();
			if (data != null) {
				_phonenumber = data;
			}
		}
	}

	void	setDarkestSecret() {
		print('Enter $_firstname\'s darkest secret:');
		final data = stdin.readLineSync();
		if (data != null) {
			_darkestsecret = data;
		}
		while (_darkestsecret == "") {
			print('The data field must be filled!');
			final data = stdin.readLineSync();
			if (data != null) {
				_darkestsecret= data;
			}
		}
	}

	String get firstName => _firstname;
	String get lastName => _lastname;
	String get nickname => _nickname;
	String get phoneNumber => _phonenumber;
	String get darkestSecret => _darkestsecret;
}