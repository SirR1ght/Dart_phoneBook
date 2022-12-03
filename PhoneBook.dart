import 'dart:io';
import 'contact.dart';

const int max_contacts = 8;
const int column_width = 10;

class PhoneBook {

	int	m_index = 0;
	int	m_filled = 0;
	List<Contact> contacts = List<Contact>.generate(8, (index) => Contact());

	void addContact() {
		if (m_filled >= max_contacts) {
			print('Phone Book is full! Would you like to rewrite the oldest contact? (yes/no)');
			String? input = stdin.readLineSync();
			while (true) {
				if (input == "yes" || input == "y" || input == "YES" || input == "Y") {
					Contact newContact = Contact();
					// newContact.setFirstName();
					// newContact.setLastName();
					// newContact.setNickname();	
					// newContact.setPhoneNumber();
					// newContact.setDarkestSecret();
					newContact.setContactInfo();
					rewriteOldestContact(newContact);
					print('Allowed commands: ADD, SEARCH, EXIT.');
					m_filled++;
					return ;
				} else if (input == "no" || input == "n" || input == "NO" || input == "N") {
					return ;
				} else {
					print ('Unknown command! Type \"yes\" or \"no\"');
					continue;
				}
			}
		}
		// contacts[m_index].setFirstName();
		// contacts[m_index].setLastName();
		// contacts[m_index].setNickname();
		// contacts[m_index].setPhoneNumber();
		// contacts[m_index].setDarkestSecret();
		contacts[m_index].setContactInfo();
		m_index++;
		m_filled++;
		print('Allowed commands: ADD, SEARCH, EXIT.');
		}

	void printTrimmed(String str){
		int len = str.length;

		if (len < column_width) {
			int rem = column_width - len;
			String spaces = ' ' * rem;
			stdout.write(spaces);
			stdout.write(str);
		} else if (len == column_width) {
			stdout.write(str);
		} else {
			stdout.write('${str.substring(0, column_width - 1)}.');
		}
	}

	void printContactList() {
		print('*********************************************\n'
			'|     Index|First name| Last name|  Nickname|\n'
			'*********************************************');
		for (int i = 0; i < m_index; i++)
		{
			stdout.write('|');
			String spaces = ' ' * (column_width - 1);
			stdout.write(spaces);
			stdout.write(i);
			stdout.write('|');
			printTrimmed(contacts[i].firstName);
			stdout.write('|');
			printTrimmed(contacts[i].lastName);
			stdout.write('|');
			printTrimmed(contacts[i].nickname);
			print('|');
		}
	}

	void rewriteOldestContact(Contact newContact) {
		int i = (m_filled % (max_contacts - 1)) - 1;
		contacts[i] = newContact;
		print('The contact was successfully replaced');
	}

	// void printContact(int i) {
	// 	print('First name: ${contacts[i].firstName}');
	// 	print('Last name: ${contacts[i].lastName}');
	// 	print('Nick name: ${contacts[i].nickname}');
	// 	print('Phone number: ${contacts[i].phoneNumber}');
	// 	print('Darkest secret: ${contacts[i].darkestSecret}');
	// 	print('Allowed commands: ADD, SEARCH, EXIT.');
	// }

	void searchContact() {
		if (m_filled == 0) {
			print('The Phone Book is empty!');
			return ;
		}
		printContactList();
		print('To display full contact information, please enter contact Index:');
		while (true) {
		final data = stdin.readLineSync();
			if (data != null) {
				if (!data.contains(RegExp(r'^[0-9]+$'))) {
					print('Incorect contact\'s Index! Please try again. Enter contact\'s Index:');
					continue;
				} else if (int.parse(data) < m_index) {
					// printContact(int.parse(data));
					// int i = int.parse(data);
					contacts[int.parse(data)].printFullContactInfo;
					print('Allowed commands: ADD, SEARCH, EXIT.');
					return;
				} else {
					print('There is no contact with that Index!');	
				}
			}
		}
	}
}
