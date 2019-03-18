class Foo

  def string_sorted(argument)
    argument.split("").sort!.join
  end

  def string_sorted_reverse(argument)

    string_sorted(argument).split("").reverse!.join



  end

  def string_sorted_part(argument, v)


    zmienne= argument.split("").sort!
    zmienne.first(v).join
  end

end


# lecimy= Foo.new()
# lecimy.string_sorted("asfkhsdguasd")

# lecimy.string_sorted_reverse("asfasddsgw")

# lecimy.string_sorted_part("adasqq",4)