require "test_helper"

class MashTest < TestCase
  def setup
    @mash = Hashie::Mash.new
  end

  def test_mash_should_return_nil
    assert_nil @mash.name
  end

  def test_mash_should_return_false
    assert !@mash.name?
  end

  def test_mash_setter
    @mash.name = "test"
    assert_equal "test", @mash.name
    assert @mash.name?
  end
end
