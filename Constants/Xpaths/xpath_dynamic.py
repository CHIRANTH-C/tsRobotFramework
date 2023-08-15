

# def create_dynamic_xpath(xpath, dynamic_value):
#     xpath_expression = xpath.format(dynamic_value)
#     return xpath_expression

# def create_dynamic_xpath_2(xpath, dynamic_value_1 , dynamic_value_2):
#     xpath_expression = xpath.format(dynamic_value_1 , dynamic_value_2)
#     return xpath_expression

def create_new_dynamic_xpath(xpath, *dynamic_values):
    xpath_expression = xpath.format(*dynamic_values)
    print(xpath_expression)
    return xpath_expression