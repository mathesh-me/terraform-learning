## Challenges in Count:

- Resource are identified by the index value from the list.
- If a resource is added in the middle of the list, the index value of the resource will change.
- If a resource is removed from the middle of the list, the index value of the resource will change.
- If the order of elements of index is changed, this can impact all of the other resources.
- If the order of elements of index is changed, this can impact all of the other resources.
- If a resource is added or removed from the list, the entire list will be destroyed and recreated.

## Recommended Approach:

- If your resources are almost identical, count is appropriate.
- If distinctive values are needed in the arguments, usage of for_each is recommended.