"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Class to calculate the sum of a list
    """

    def sum(self, num_list):
        """
        Calculates the sum of a list of integers
        """
        # your sum code here
        result = 0
        for iterator in range(0, len(num_list)):
            result += num_list[iterator]

        return result
