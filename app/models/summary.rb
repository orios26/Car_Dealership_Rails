class Summary

  def self.exec_summary
    Quote.is_sold
  end

  def self.salesp_summary
    Employee.is_sales_person
  end
end
