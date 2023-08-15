class XPathGenerator:    
    def create_new_dynamic_xpath(self, xpath, *dynamic_values):
        xpath_expression = xpath.format(*dynamic_values)
        print(xpath_expression)
        return xpath_expression