# Practical Object-Oriented Design

## Single Responsibility Principle

Single responsibility guaranteed that classes and classes' methods always have one responsibility. A class should do the smallest possible useful thing.

#### Depend on behavior, Not Data.
- Hide instance variables.
- Hide data structures.

#### Methods that have single responsibility

- Avoid the need for comments.
- Expose previously hidden qualities.
- Encourage reuse.
- Are easy move to another class.

## Managing Dependencies

An object depends on another object if, when one object changes, the other might be forced to change in turn.

#### Recognizing Dependencies

An object has dependency when it knows:

- The name of another class.
- The name of a message that it intends to send to someone other that self.
- The arguments that a message requires.
- The order of those arguments.

#### Choosing Dependency Direction

Depend on things that change less often than you do. This is based on three simple truths about code:

- Some classes are more likely than others to have changes in requirements. Example: Ruby's Class change less that you own code.
- Concrete classes are more likely to change than abstract classes.
- Changing a class that has many dependents will result in widespread consequences.

## Creating Flexible Interfaces

The word interface can refer to a number of different concepts:

- Interfaces the same that methods.
- Set of messages themselves define the interface like a virtual class.

#### Public Interfaces

The methods that make up the public interface of your class comprise the face it presents to the world. They:
- Reveal its primary responsibility.
- Are expected to be invoked by others.
- Will not change on a whim.
- Are safe for others to depend on.
- Are thoroughly documented in the tests.

#### Private Interfaces

All other methods in the class are part of its private interface. They:
- Handle implementation details.
- Are not expected to be sent by other objects.
- Can change for any reason whatsoever.
- Are unsafe for others to depend on.
- May not even be referenced in the tests.

## The Law of Demeter (LoD)

It Also is known as Principle of least knowledge, is a set of coding rules that results in loosely coupled.
Demeter restricts the set of objects to which a method may send messages; it prohibits routing a message to a
the third object via a second object of a *different type*. “only talk to your immediate neighbors” or “use only one dot.”

Example: `customer.bicycle.wheel.tire`

These chains are colloquially referred to as train wrecks; each method name represents a train car and the dots are the connections between them.

#### Avoiding Violations

Use delegation to avoid the "dots". Delegate a message is to pass it on to another object, ofter via a wrapper method. The wrapper method encapsulates, or
hides, a knowledge that would otherwise be embodied in the message chain.

## Duck Typing

The Duck types are public interfaces that are not tied to any specific class. Duck typed objects are chameleons that are defined more by their behavior than by their class.
This is how the technique gets its name; if an object quacks like a duck and walks like a duck, then its class is immaterial, it’s a duck.

#### Recognizing Hidden Ducks

Several common coding patterns indicate the presence of a hidden duck like:

- Case statements that switch on class
- `kind_of?` and `is_a?`
- `responds_to?`

---
References

- Practical Object-Oriented Design in Ruby - Sandy Metz
---
