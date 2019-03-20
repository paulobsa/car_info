require 'test_helper'

class CarTest < ActiveSupport::TestCase
  test 'relation belongs_to manufacturer' do
    assert cars(:uno).manufacturer
  end

  test 'enum transmission MT' do
    assert_equal cars(:uno).transmission, 'MT'
  end

  test 'enum transmission AT' do
    assert_equal cars(:a3).transmission, 'AT'
  end

  test 'manufacturer required' do
    assert_not cars(:manufactrer_blank).valid?
  end

  test 'model required' do
    assert_not cars(:model_blank).valid?
  end

  test 'lauch date required' do
    assert_not cars(:launch_date_blank).valid?
  end

  test 'transmission required' do
    assert_not cars(:transmission_blank).valid?
  end
end
