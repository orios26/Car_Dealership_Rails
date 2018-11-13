require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "acura price should be 20,998.00" do
    assert_equal(0.20988e5,(quotes(:tomacura).wholesale_price))
  end

  test "acura markup should be 1721.836" do
    assert_equal(0.1721836e4,(quotes(:tomacura).mark_up_amt))
  end

  test "acura tax should be 976.952948" do
    assert_equal(0.976952948e3, (quotes(:tomacura).tax_amt))
  end

  test "acura total price should be 23969.78895" do
    assert_equal(0.23696788948e5, (quotes(:tomacura).total_amt))
  end

  test "acura total price minus down payment should be 18988" do
    assert_equal(0.21696788948e5, (quotes(:tomacura).finance_amt))
  end


end
