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

```
rails graphql:schema:dump
```
