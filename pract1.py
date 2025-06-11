class Person:
    def __init__(self,name,age):
        self.name = name
        self.age = age
    def display_details(self):
        print(f"Name:{self.name}, age: {self.age}")

person1 = Person("ABCS",34)
person1.display_details()