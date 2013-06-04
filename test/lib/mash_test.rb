require "test_helper"

class MashTest < TestCase
  def setup
    @mash = Hashie::Mash.new
  end

  def test_mash_should_have_no_name
    mash = Hashie::Mash.new
    assert_equal mash.name?, false
    assert_equal mash.name, nil
  end

  def test_mash_should_have_name
    mash = Hashie::Mash.new("test")
    assert mash.name?
    assert_equal mash.name, "test"
  end

  def test_should_inspect
    @mash.inspect
  end

  def test_should_get_author
    assert @mash.author, @mash.class
  end

end
