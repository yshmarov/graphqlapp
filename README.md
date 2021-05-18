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
https://medium.com/neocoast/setting-up-your-first-rails-graphql-api-acd806b5d596

rails g model posts title user:belongs_to
```
rails g graphql:object user
rails g graphql:object post
rails g graphql:mutation create_post
```

```
rails graphql:schema:dump
```

```
query Organisations {
  organisations {
    id
    name
  }
}

query Organisation {
  organisation(id: "2") {
    id
    name
  }
}

5.times do
  Organisation.create(name: Faker::Book.author)
end
```



```
query testField {
  testField
}

query Users {
  users {
    id
    email
    encryptedPassword
    fullName
    postsCount
  }
}

query User {
  user(id:12) {
    id
    email
    posts {
      id
      title
    }
  }
}

mutation updateUser($input: UpdateUserInput!) {
	updateUser(input: $input) {
    user {
      id
      email
    }
  } 
}

query Posts {
  posts {
    id
    title
    user {
      email
    }
  }
}

query Post {
  post(id:2) {
    id
    title
    user {
      id
      email
    }
  }
}
```


update post user, title
```
{
  "input": {
    "id": 2,
    "userId": 3,
    "title": "corsego"
  }
}
```
update user email
```
{
  "input": {
    "id": 2,
    "email": "what@ever.coms"
  }
}
```
create post 
```
{
  "input": {
    "userId": 3,
    "title": "0147"
  }
}
```
rails graphql:schema:dump
