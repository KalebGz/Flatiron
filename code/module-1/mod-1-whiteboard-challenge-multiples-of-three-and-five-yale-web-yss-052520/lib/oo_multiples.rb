# Enter your object-oriented solution here!
class Multiples

    attr_reader :limit

    def initialize(limit)
        @limit = limit
    end

    def collect_multiples
        multiples = []
        (1..@limit-1).each{|i|
            multiples.push(i) if(i % 3 == 0 || i % 5 == 0)
        }
        multiples
    end


    def sum_multiples
        collect_multiples.sum
    end
end