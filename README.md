# Practical Object Oriented Design

## Single Responsibility Principle

Single responsibility guaranteed that classes and classes' methods always have one responsibility. A class should do the smallest possible useful thing.

### Depend on behavior, Not Data.
- Hide instance variables.
- Hide data structures.

### Methods that have single responsability

- Avoid the neeed for comments.
- Expose previosly hidden qualities.
- Encourage reuse.
- Are easy move to another class.

## Managing Dependencies

An object depens on another object if, when one object changes, the other might be forced to chage in turn.

### Recognizing Dependencies

An object has dependency when it knows:

- The name of another class.
- The name of a message that it intends to send to someone other that self.
- The arguments that a message requires.
- The order of those arguments.

### Coupling between objects (CBO)

The more the object A knows about object B, the more tightly coupled they are. The more tightly coupled two objects are, the more they behave like a single entity.

### Isolate Dependencies

It's best to break all unnecessary dependences but if you cannot remove dependencies you should isolate them within your class.

### Choosing Dependency Direction

Depend on things that change less often than you do. This is based on three simple truths about code:

- Some classes are more likely than others to have changes in requirements. Example: Ruby's Class change less that you own code.
- Concrete classes are more likely to change than abstract classes. Example: Depende 
- Changing a class that has many dependents will result in widespread consequences.

---
References

- Practical Object Oriented Design in Ruby - Sandy Metz
---
