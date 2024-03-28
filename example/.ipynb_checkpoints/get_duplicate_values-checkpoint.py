from typing import List

def get_duplicate_values(first_data: List[int], second_data: List[int]) -> list:
    result = []

    for data in firstDAta:
        if data in second_data:
            result.append(data)

    return list(set(result))

first_data = [1, 2, 3, 1, 1, 2, 3, 4, 5, 5, 7, 7]
second_data = [4, 3, 1, 1, 2, 5, 6, 1, 12, 5, 6, 7, 677]

print(get_duplicate_values(first_data, second_data))