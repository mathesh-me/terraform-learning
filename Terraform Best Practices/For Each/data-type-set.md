## Data Type - SET

Before going into SET, let's understand what is a list and a map.

### List

- Lists are used to store multiple items in a single variable.
- List items are ordered, changeable, and allow duplicate values.
- List items are indexed, the first item has index [0], the second item has index [1] etc

```
list = ["apple", "banana", "cherry"]
```

### Map

- Maps are used to store key-value pairs.
- Map items are unordered, changeable, and does not allow duplicate values
    
```
map = {"name": "John", "age": 36}
```

### Set

- SET is used to store multiple items in a single variable.
- SET items are unordered and no duplicates allowed.
- Allowed:
```
set = {"apple", "banana", "cherry"}
```
- Not Allowed:
```
set = {"apple", "banana", "cherry", "apple"}
```

### toset() function

- toset() function is used to convert a list into a set.
- toset() function is used to convert a map into a set.

```
toset(["apple", "banana", "cherry"])
toset({"name": "John", "age": 36})
```


