import 'dart:io';
import 'phoneBook.dart';

void	ft_print_intro() {
	print('******************************************************\n'
		'*~~~           Welcome to The Phonebook           ~~~*\n'
		'*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*\n'
		'*~~~         You can use this commands:           ~~~*\n'
		'*~~~      ADD    - to save a new contact          ~~~*\n'
		'*~~~      SEARCH - to display a specific contact  ~~~*\n'
		'*~~~      EXIT   - to quit                        ~~~*\n'
		'******************************************************');
}

void main()
{
	final pb = PhoneBook();
	
	ft_print_intro();
	while (true) {
		String? inputText = stdin.readLineSync();
		if (inputText != null) {
			if (inputText == "EXIT" || inputText == "exit") {
				break;
			} else if (inputText == "ADD" || inputText == "add") {
				pb.addContact();
			} else if (inputText == "SEARCH" || inputText == "search") {
				pb.searchContact();
			} else {
				print('Unknown command! Please try again.');
			}
		}
	}
}
