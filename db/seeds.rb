
    #
    # #destroy all objects before we seed to prevent duplicates
    Customer.destroy_all
    Quote.destroy_all
    Employee.destroy_all
    EmployeeType.destroy_all
    User.destroy_all
    Vehicle.destroy_all
    #
    # #Employee Type seeds
    salesperson = EmployeeType.create!(name: 'Sales Person')
    salesmanager = EmployeeType.create!(name: 'Sales Manager')
    financemanager = EmployeeType.create!(name: 'Finance Manager')
    inventorymanager = EmployeeType.create!(name: 'Inventory Manager')
    owner = EmployeeType.create!(name: 'Dealership Owner')
    #
    # #Employee seeds
    tom = Employee.create!(last_name: 'Diggadome', first_name: 'Doug', employee_type: owner, manager_id: nil )
    phil = Employee.create!(last_name: 'Rivers', first_name: 'Phil', employee_type: salesmanager, manager: tom)
    clara = Employee.create!(last_name: 'Richardson', first_name: 'Clara', employee_type: financemanager, manager: tom)
    patricia = Employee.create!(last_name: 'Delgado', first_name: 'Patricia', employee_type: inventorymanager, manager: tom)
    axel = Employee.create!(last_name: 'Sanchez', first_name: 'Axel', employee_type: salesperson, manager: phil)
    bryan = Employee.create!(last_name: 'Bryan', first_name: 'Crosby', employee_type:salesperson, manager: phil)
    yuyu = Employee.create!(last_name: 'Uyu', first_name: 'YuYu', employee_type: salesperson, manager: phil)
    cristina = Employee.create!(last_name: 'Rodriguez', first_name: 'Cristina', employee_type: salesperson, manager: phil)
    patricia = Employee.create!(last_name: 'Abaza', first_name: 'Shaheen',employee_type: salesperson, manager: phil)

    User.create!([
      {email: 'admin@hotcars.net', password: 'adminadmin', password_confirmation: 'adminadmin', role: 'admin'},
      {email: 'salesp@hotcars.net', password: 'salespsalesp', password_confirmation: 'salespsalesp', role: 'salesp'},
      {email: 'salesm@hotcars.net', password: 'icanfeelit', password_confirmation: 'icanfeelit', role: 'salesm'},
      {email: 'finance@hotcars.net', password: 'financefinance', password_confirmation: 'financefinance', role: 'finance'},
      {email: 'inventory@hotcars.net', password: 'inventoryinventory', password_confirmation: 'inventoryinventory', role: 'inventory'}
      ])

    #Customer seeds
    100.times do
        Customer.create([{
                             last_name: Faker::Name.last_name,
                             first_name: Faker::Name.first_name,
                             address: Faker::Address.full_address,
                             email: Faker::Internet.email,
                             phone: Faker::PhoneNumber.phone_number
                         }])
    end


    #Vehicle seeds
    100.times do
        Vehicle.create([{
                            vin: Faker::Vehicle.vin,
                            color: Faker::Vehicle.color,
                            make: Faker::Vehicle.make,
                            model: Faker::Vehicle.model,
                            year: Faker::Vehicle.year,
                            price: Faker::Commerce.price(range = 9640.99..617899.99, as_string = false)
                        }])
    end
