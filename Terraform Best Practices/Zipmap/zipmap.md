## zipmap Function
zipmap constructs a map from a list of keys and a corresponding list of values.
    
```terraform
zipmap(keyslist, valueslist)
```

Both keyslist and valueslist must be of the same length. keyslist must be a list of strings, while valueslist can be a list of any type.

Each pair of elements with the same index from the two lists will be used as the key and value of an element in the resulting map. If the same value appears multiple times in keyslist then the value with the highest index is used in the resulting map.

If keyslist is empty then the result is an empty map, regardless of the length of valueslist.

## Example Usage
```terraform
variable "keys" {
  default = ["a", "b", "c"]
}

variable "values" {
  default = ["1", "2", "3"]
}

output "example" {
  value = zipmap(var.keys, var.values)
}
```