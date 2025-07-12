"""
Well met with Fibonacci bigger brother, AKA Tribonacci.

As the name may already reveal, it works basically like a Fibonacci, but summing the last 3 (instead of 2) numbers of the sequence to generate the next. And, worse part of it, regrettably I won't get to hear non-native Italian speakers trying to pronounce it :(

So, if we are to start our Tribonacci sequence with [1, 1, 1] as a starting input (AKA signature), we have this sequence:

[1, 1 ,1, 3, 5, 9, 17, 31, ...]
"""

def tribonacci(signature, n):
    
    result = signature
    counter = 3

    if n == 0:
        return []
    if n < 3:
        return result[:n]
    
    while counter < n:
        next_sum = result[-1] + result[-2] + result[-3]
        print(next_sum)
        result.append(next_sum)
        print(result)
        counter += 1

    return result
