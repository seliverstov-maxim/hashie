require "test_helper"

class MashTest < TestCase
  def setup
    @mash = Hashie::Mash.new
  end

  def test_mash_should_have_no_name
    mash = Hashie::Mash.new
    assert !mash.name?
    assert_nil mash.name
    mash.name= "test"
    assert_equal "test", mash.name
    raise mash.inspect
    assert mash.name?
  end
end
