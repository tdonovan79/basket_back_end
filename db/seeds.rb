require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
    Employee.create(name: Faker::Name.name, login: Faker::NatoPhoneticAlphabet.code_word, password: '123')
end

10.times do 
    Product.create(name: Faker::Food.dish, price: rand(20) + 1, tax: 8875)
end

20.times do
    Check.create(employee: Employee.all[rand(Employee.all.length)], open: true)
end

Check.all.each do |this_check|
    2.times do 
        Sale.create(check: this_check, product: Product.all[rand(Product.all.length)])
    end
end

# Check.all.each do |this_check|
#     if rand(3) % 2 == 1
#         Payment.create(check: this_check, amount: this_check.products.map(&:price).sum, credit: true, last_four: 4242)
#         this_check.open = false
#     end
# end

