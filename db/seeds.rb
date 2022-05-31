users = User.create([
    {
        first_name: "John",
        last_name: "Doe",
        address: "123 Main street",
        postcode: "AB12 3CD",
        city: "London",
        country: "UK"
    },
    {
        first_name: "Jane",
        last_name: "Doe",
        address: "24 High street",
        postcode: "AB12 45CD",
        city: "New York",
        country: "US"
    }
])

posts = Post.create!([
    {
        body: "This is a post",
        user: users.first
    },
    {
        body: "This is vet another post",
        user: users.last
    }
])

comment = Comment.create([
    {
        body: "this is a comment",
        post: posts.first,
        user: users.first
    },
    {
        body: "this is another comment",
        post: posts.first,
        user: users.last
    }
])