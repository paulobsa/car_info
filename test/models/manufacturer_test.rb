require 'test_helper'

class ManufacturerTest < ActiveSupport::TestCase
  test 'relations has_many cars' do
    assert manufacturers(:fiat).cars.size, 1
  end

  test 'name required' do
    assert_not manufacturers(:name_blank).valid?
  end

  test 'foundation required' do
    assert_not manufacturers(:foundation_blank).valid?
  end

  test 'country required' do
    assert_not manufacturers(:country_blank).valid?
  end

  test 'city required' do
    assert_not manufacturers(:city_blank).valid?
  end
end
