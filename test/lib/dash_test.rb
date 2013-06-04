require "test_helper"

class DashTest < TestCase
  def setup
    @dash = Person.new(name: "Name")
  end

  def test_should_get_property
    assert_equal "Name", @dash[:name]
    assert_equal "Name", @dash.name
  end

  def test_dash_should_set_property
  end

  def test_dash_should_return_property

  end
end
