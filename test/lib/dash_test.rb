require "test_helper"

class DashTest < TestCase
  def setup
    @dash = PersonDash.new(name: "Name")
  end

  def test_should_get_property
    assert_equal "Name", @dash[:name]
    assert_equal "Name", @dash.name
  end

  def test_dash_should_set_property
    @dash.email = "example@mail.ru"
    assert_equal "example@mail.ru", @dash.email
    assert_equal "example@mail.ru", @dash[:email]

    @dash[:name] = "example name"
    assert_equal "example name", @dash.name
    assert_equal "example name", @dash[:name]
  end

  def test_dash_argument_error
    assert_raises ArgumentError do
      dash = PersonDash.new
    end
  end
end
