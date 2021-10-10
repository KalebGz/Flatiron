# Enter your procedural solution here!

def collect_multiples(limit)
    multiples = []
    (1..limit-1).each{|i|
        multiples.push(i) if(i % 3 == 0 || i % 5 == 0)
    }
    multiples
end


def sum_multiples(limit)
    collect_multiples(limit).sum
end