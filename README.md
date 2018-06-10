# graphql-ruby-demo

 #### This is graphql-ruby-demo for learning

##### Query
(example)


```
{
  user {
    id
    email
    name
    address {
      address
      postal_code
    }
    posts {
      edges {
        node {
          id
          subject
        }
      }
    }
  }
}

```

##### Mutation
```
mutation {
  createPostMutation (input: {subject: "eeee"}) {
    post {
      subject {
        id
      }
    }
  }
}

```
