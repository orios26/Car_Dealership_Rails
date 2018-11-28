
    require 'faker'
    include Faker
    I18n.reload!

    # #destroy all objects before we seed to prevent duplicates
    # Customer.destroy_all
    # Quote.destroy_all
    # Employee.destroy_all
    # EmployeeType.destroy_all
    #
    # #Employee Type seeds
    # salesperson = EmployeeType.create!(name: 'Sales Person')
    # salesmanager = EmployeeType.create!(name: 'Sales Manager')
    # financemanager = EmployeeType.create!(name: 'Finance Manager')
    # inventorymanager = EmployeeType.create!(name: 'Inventory Manager')
    # owner = EmployeeType.create!(name: 'Dealership Owner')
    #
    # #Employee seeds
    # tom = Employee.create!(last_name: 'Hudson', first_name: 'Tom', employee_type: owner, manager_id: nil )
    # phil = Employee.create!(last_name: 'Rivers', first_name: 'Phil', employee_type: salesmanager, manager: tom)
    # clara = Employee.create!(last_name: 'Richardson', first_name: 'Clara', employee_type: financemanager, manager: tom)
    # patricia = Employee.create!(last_name: 'Delgado', first_name: 'Patricia', employee_type: inventorymanager, manager: tom)
    # axel = Employee.create!(last_name: 'Sanchez', first_name: 'Axel', employee_type: salesperson, manager: phil)
    # bryan = Employee.create!(last_name: 'Bryan', first_name: 'Crosby', employee_type:salesperson, manager: phil)
    # yuyu = Employee.create!(last_name: 'Uyu', first_name: 'YuYu', employee_type: salesperson, manager: phil)
    # cristina = Employee.create!(last_name: 'Rodriguez', first_name: 'Cristina', employee_type: salesperson, manager: phil)
    # patricia = Employee.create!(last_name: 'Abaza', first_name: 'Shaheen',employee_type: salesperson, manager: phil)
    #

    #Vehicle seeds with faker
    20.times do
      Vehicle.create(
        vin: Faker::Vehicle.unique.vin,
        make: Faker::Vehicle.make,
        model: Faker::Vehicle.model,
        color: Faker::Vehicle.color,
        type: Faker::Vehicle.car_type,
        year: Faker::Vehicle.year
      )
    end

    # #Customer seeds
    # Customer.create!(last_name: 'Grasser', first_name: 'Therin', address: '599 Superior Lane', email: 'tgrasser0@google.com.br', phone: '700-164-4589')
    # Customer.create!(last_name: 'Draycott', first_name: 'Salvatore', address: '3760 South Alley', email: 'sdraycott1@domainmarket.com', phone: '405-355-2287')
    # Customer.create!(last_name: 'Sigfrid', first_name: 'Cristol', address: '60 Stephen Trail', email: 'scristol2@google.com', phone: '645-911-1532')
    # Customer.create!(last_name: 'Brand', first_name: 'Davine', address: '2 Northview Crossing', email: 'dbrand2@china.com.cn', phone: '287-936-2554')
