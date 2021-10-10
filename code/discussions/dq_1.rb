def one
def greet(name)
    puts "Hello, #{name}"
  end
  greet("Steven") #=> ?
end

def two
def hate_steven?(name)
    if name == "Steven"
      "OMG He's the worst"
    else
      "You cool"
    end
  end
end

def three
    names = ["apple", "pear", "face", "champagne", "palm tree", "aardvark", "pineapple"]

    # puts names[0].methods.sort
    puts names.select{|str|
        str[0] == 'a'
        # str.initial = 'a'
    }
end

# one


def nine

    foods = {"pie" => "delicious", "broccoli" => "not delicious",
    "carrots" => "not delicious", "apples" => "delicious",
    "peanut butter" => "delicious"}

    foods.each{|key, value|
        puts key if value == "delicious"
    }
end

 nine