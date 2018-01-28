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

An object has dependency when it knows.

- The name of another class.
- The name of a message that it intends to send to someone other that self.
- The arguments that a message requires.
- The order of those arguments.

### Coupling between objects (CBO)

The more the object A knows about object B, the more tightly coupled they are. The more tightly coupled two objects are, the more they behave like a single entity.

---
References

- Practical Object Oriented Design in Ruby - Sandy Metz
---
