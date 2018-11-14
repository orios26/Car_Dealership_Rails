require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

  test "acura price should be 20,998.00" do
    assert_equal(0.20988e5, (quotes(:tomacura).wholesale_price))
    puts "wholesale: #{quotes(:tomacura).wholesale_price}"
  end

  test "acura markup should be 1721.836" do
    assert_equal(0.1721836e4,(quotes(:tomacura).mark_up_amt))
    puts "markup: #{quotes(:tomacura).mark_up_amt}"
  end

  test "acura tax should be 976.952948" do
    assert_equal(0.97695295e3, (quotes(:tomacura).tax_amt))
    puts "tax: #{quotes(:tomacura).tax_amt}"

  end

  test "acura total price should be 23969.78895" do
    assert_equal(0.2369678895e5, (quotes(:tomacura).total_amt))
    puts "total: #{quotes(:tomacura).total_amt}"
  end

  test "acura total price minus down payment should be 18988" do
    assert_equal(0.2169678895e5, (quotes(:tomacura).finance_amt))
    puts "finance: #{quotes(:tomacura).finance_amt}"
  end

  test "acura term should be 5" do
    assert_equal(5, (quotes(:tomacura).term))
    puts "term: #{quotes(:tomacura).term}"
  end

  test "acura interest rate should be 8%" do
    assert_equal(0.08, (quotes(:tomacura).interest_rate))
    puts "interest rate: #{quotes(:tomacura).interest_rate}"
  end

  test "number of payments should return 60" do
    assert_equal(60, (quotes(:tomacura).number_payments))
    puts "number of payments: #{quotes(:tomacura).number_payments}"
  end

  test "interest per pay period should be .00066667" do
    assert_equal(0.667e-2, (quotes(:tomacura).i_rate))
    puts "interest per period: #{quotes(:tomacura).i_rate}"
  end

  test "acura ammoritization numerator should be 215.64971" do
    assert_equal(0.21564971e3, (quotes(:tomacura).ammoritization_numerator))
    puts "Ammortization numerator: #{quotes(:tomacura).ammoritization_numerator}"
  end

  test "acura ammoritization denominator should be .49014" do
    assert_equal(0.49014, (quotes(:tomacura).ammoritization_denominator))
    puts "ammoritization_denominator: #{quotes(:tomacura).ammoritization_denominator}"
  end

  test "ammortization payments should be 439.97574" do
    assert_equal(0.43997574e3, quotes(:tomacura).ammortization_payments)
    puts "ammortization payments: #{quotes(:tomacura).ammortization_payments}"
  end


end
