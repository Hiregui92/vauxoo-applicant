"""
Your module documentation here
"""
import math


class PrimeClass(object):
    """
    Class to calculate whether a number is prime
    """

    def is_prime(self, num_int):
        """
        Method for calculating prime number

        """
        # your primes code here
        if num_int == 2:
            return True
        if num_int % 2 == 0 or num_int <= 1:
            return False

        sqr = int(math.sqrt(num_int)) + 1
        for divisor in range(3, sqr, 2):
            if num_int % divisor == 0:
                return False
        return True
