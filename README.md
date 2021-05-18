get test query
```
query testField{
  testField
}
```
get all users
```
query Users{
  users {
    id
    email
  }
}
```
get user with id = 1
```
query User{
  user(id: "1") {
    id
    email
  }
}
```
mutation - update user email
```
mutation updateUser($input: UpdateUserInput!) {
	updateUser(input: $input) {
    user {
      id
      email
    }
  } 
}
```
+ query variables
```
{
  "input": {
    "id": 2,
    "email": "what@ever.coms"
  }
}
```

```
rails graphql:schema:dump
```
