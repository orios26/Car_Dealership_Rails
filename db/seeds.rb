
    #
    # #destroy all objects before we seed to prevent duplicates
    Customer.destroy_all
    Quote.destroy_all
    Employee.destroy_all
    EmployeeType.destroy_all
    Account.destroy_all
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

    Account.create!([
      {email: 'dougdimmadome@vehicyou.com', password: 'dougdoug', password_confirmation: 'dougdoug', role: 'admin'},
      {email: 'sallysales@vehicyou.com', password: 'salesale', password_confirmation: 'salesale', role: 'salesp'},
      {email: 'philc@vehicyou.com', password: 'icanfeelit', password_confirmation: 'icanfeelit', role: 'salesm'},
      {email: 'clarar@vehicyou.com', password: 'financee', password_confirmation: 'financee', role: 'finance'},
      {email: 'patd@vehicyou.com', password: 'inventory', password_confirmation: 'inventory', role: 'inventory'},
      {email: 'ahmadskaikay@yahoo.com', password: 'sky12424', password_confirmation: 'sky12424', role: 'admin'}
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
