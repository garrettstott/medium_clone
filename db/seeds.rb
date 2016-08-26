# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(email: 'email', password: 'werjwer;')
user = User.create(email: 'email', password: 'werjwer;')
user = User.create(email: 'email', password: 'werjwer;')
user = User.create(email: 'email', password: 'werjwer;')

users = User.all
users.each do |user|
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)
  Post.create(title: 'were', body: 'asjdasjd;fj', user_id: user.id)


end
