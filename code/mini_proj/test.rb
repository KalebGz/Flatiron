def reverse_alternate(string)
    # arr = string.split()

    string.split.each_with_index.map{ |word, idx|
        (idx % 2)? word : word.reverse
    }.join(" ")
    
end

  puts reverse_alternate("Did it work?")