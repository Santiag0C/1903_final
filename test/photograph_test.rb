require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'
require './lib/artist'
class PhotographTest < Minitest::Test
  def setup
    @attributes = {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "4",
      year: "1954" }
  end
  def test_it_exists
    photograph = Photograph.new(@attributes)
    assert_instance_of Photograph, photograph
  end
  def test_id
    photograph = Photograph.new(@attributes)
    assert_equal "1", photograph.id
  end
  def test_name
    photograph = Photograph.new(@attributes)
    assert_equal "Rue Mouffetard, Paris (Boy with Bottles)", photograph.name
  end
  def test_artist_id
    photograph = Photograph.new(@attributes)
    assert_equal "4", photograph.artist_id
  end
  def test_year
    photograph = Photograph.new(@attributes)
    assert_equal "1954", photograph.year
  end
end
