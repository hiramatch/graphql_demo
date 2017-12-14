users = User.seed(
  :email,
  {
    name: '花太郎',
    email: 'hanatarou@mail.com',
  },
  {
    name: '太郎',
    email: 'taro@mail.com',
  },
  {
    name: '花子',
    email: 'hanaco@mail.com',
  },
)
user1 = users.first
user2 = users.second
user3 = users.third

Address.seed(
  user_id: user1.id,
  address: '東京都千代田区永田町１丁目７−１',
  phone_number: '03-5521-7445',
)

posts = Post.seed(
  {
    user_id: user1.id,
    subject: '解散しません',
  },
  {
    user_id: user1.id,
    subject: '解散するわ',
  },
)
post1 = posts.first
post2 = posts.second

Comment.seed(
  {
    user_id: user2.id,
    post_id: post1.id,
    detail: 'あ、はい',
  },
  {
    user_id: user3.id,
    post_id: post1.id,
    detail: 'うそつけ',
  },
  {
    user_id: user2.id,
    post_id: post2.id,
    detail: 'えー',
  },
  {
    user_id: user3.id,
    post_id: post2.id,
    detail: 'rgr',
  },
)
