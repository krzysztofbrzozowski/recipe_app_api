"""
@author:    Krzysztof Brzozowski
@file:      tests
@time:      10/05/2023
@desc:      Demo tests
"""
from django.test import SimpleTestCase

from app import calc


class CalcTest(SimpleTestCase):
    """Test calc module"""
    def test_add_numbers(self):
        """Test numbers adding together"""
        res = calc.add(5, 6)
        self.assertEqual(res, 11)

    def test_subtract_numnbers(self):
        """Test subtracting numbers"""
        res = calc.subtract(10, 15)
        self.assertEqual(res, 5)

