class prefs::config inherits prefs {
  notify{"print the prefs":

    message => "
	my favorite color : ${color}
	my car : ${car}
    "
  }
}
