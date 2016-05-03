user = User.create!(email: 'test@test.com', password: 'password', password_confirmation: 'password')

list_one = user.lists.create(title: 'Test List', description: 'This is a description of my test list')
list_two = user.lists.create(title: 'Other List', description: 'This is another test list')

item_one = list_one.items.create(title: 'Item 1', description: 'Get stuff', state: 'in_progress')
item_two = list_one.items.create(title: 'Item 2', description: 'Pay bills', state: 'not_started')
