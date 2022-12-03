import 'dart:io';

class Contact {
	String _firstName = "";
	String _lastName = "";
	String _nickname = "";
	String _phoneNumber = "";
	String _darkestSecret = "";

	void setFirstName() {
		print('Enter First name:');
		final data = stdin.readLineSync();
		if (data != null) {
			_firstName = data;
		}
		while (_firstName == "") {
			print('The data field must be filled!');
			final data = stdin.readLineSync();
			if (data != null) {
				_firstName = data;
			}
		}
	}

	void	setLastName() {
		print('Enter Last name:');
		final data = stdin.readLineSync();
		if (data != null) {
			_lastName = data;
		}
		while (_lastName == "")	{
			print('The data field must be filled!');
			final data = stdin.readLineSync();
			if (data != null) {
				_lastName= data;
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
			_phoneNumber = data;
		}
		while (_phoneNumber == "") {
			print('The data field must be filled!');
			final data = stdin.readLineSync();
			if (data != null) {
				_phoneNumber = data;
			}
		}
	}

	void	setDarkestSecret() {
		print('Enter $_firstName\'s darkest secret:');
		final data = stdin.readLineSync();
		if (data != null) {
			_darkestSecret = data;
		}
		while (_darkestSecret == "") {
			print('The data field must be filled!');
			final data = stdin.readLineSync();
			if (data != null) {
				_darkestSecret= data;
			}
		}
	}

	void setContactInfo() {
		setFirstName();
		setLastName();
		setNickname();
		setPhoneNumber();
		setDarkestSecret();
		print('Contact information was successfully added.');
	}

	void printFullContactInfo() {
		print('First name: $_firstName');
		print('Last name: $_lastName');
		print('Nick name: $_nickname');
		print('Phone number: $_phoneNumber');
		print('Darkest secret: $_darkestSecret');
	}

	String get firstName => _firstName;
	String get lastName => _lastName;
	String get nickname => _nickname;
	String get phoneNumber => _phoneNumber;
	String get darkestSecret => _darkestSecret;
}
