require 'pry'
    def move_zeroes(nums)
        nums.length.times{|idx|
            if(nums[idx] == 0)
                nums.delete_at(idx)
                nums.push(0)
            end
        }
        nums
    end
    def two_sum(numbers, target)
        numbers.length.times{|fir_idx|
            ((fir_idx+1)..numbers.length).each{|sec_idx|
                return {index1: fir_idx, index2:sec_idx} if(numbers[fir_idx] + numbers[sec_idx] == target)
            }
        }
    end
binding.pry
0