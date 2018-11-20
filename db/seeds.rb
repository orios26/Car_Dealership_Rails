    # #destroy all objects before we seed to prevent duplicates
    Customer.destroy_all
    Quote.destroy_all
    Vehicle.destroy_all
    Color.destroy_all
    Type.destroy_all
    Model.destroy_all
    SalesPerson.destroy_all
    Manager.destroy_all
    ManagerType.destroy_all
    User.destroy_all

    #color seeds
    Color.create!([{name: 'Black'}, {name: 'Blue'}, {name: 'Brown'}, {name: 'Gold'}, {name: 'Gray'}, {name: 'Green'},
                  {name: 'Orange'}, {name: 'Purple'}, {name: 'Red'}, {name: 'Silver'}, {name: 'Tan'}, {name: 'White'},
                  {name: 'Yellow'}])

    #vehicle type seeds
    Type.create!([{name: 'Truck'}, {name: 'SUV/Crossover'}, {name: 'Sedan'}, {name: 'Coupe'}, {name: 'Hatchback'},
                 {name: 'Van/Minivan'}, {name: 'Convertible'}, {name: 'Wagon'}])

    #Manager type seeds
    ManagerType.create!([{name: 'Sales Manager'}, {name: 'Finance Manager'}, {name: 'Inventory Manager'},
                         {name: 'Dealership Owner'}])

    #Model seeds
    Model.create!([{name: 'Audi A3'}, {name: 'Audi A4'}, {name: 'Audi A5'}, {name: 'Audi A6'}])

    #Customer seeds
    Customer.create!(last_name: 'Grasser', first_name: 'Therin', address: '599 Superior Lane', email: 'tgrasser0@google.com.br', phone: '700-164-4589')
    Customer.create!(last_name: 'Draycott', first_name: 'Salvatore', address: '3760 South Alley', email: 'sdraycott1@domainmarket.com', phone: '405-355-2287')
    Customer.create!(last_name: 'Sigfrid', first_name: 'Cristol', address: '60 Stephen Trail', email: 'scristol2@google.com', phone: '645-911-1532')
    Customer.create!(last_name: 'Brand', first_name: 'Davine', address: '2 Northview Crossing', email: 'dbrand2@china.com.cn', phone: '287-936-2554')
