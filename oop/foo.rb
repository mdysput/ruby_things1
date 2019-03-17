class Foo

  def string_sorted(argument)

    zmienne= argument.split("")
    zmienne.sort!
    return zmienne.join
  end

end

lecimy= Foo.new()
lecimy.string_sorted("abcd")