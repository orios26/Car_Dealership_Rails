class MenuPresenter

  #model contains the logic to choose which menu bar to serve
  # depending on user role

  def self.which_menu(role)
    case role
    when 'salesp'
      'layouts/sales_person_menu'
    when 'salesm'
      'layouts/sales_manager_menu'
    when 'finance'
      'layouts/finance_menu'
    when 'inventory'
      'layouts/inventory_manager_menu'
    when 'admin'
      'layouts/owner_menu'
    else
      'layouts/form_menu'
    end
  end


end
