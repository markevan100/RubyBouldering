gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'personclassfinal'

class VampireTest < Minitest::Test
  def test_it_can_exist
    josh = Person.new("Josh", "Thompson", 1989)
  
    assert josh
  end
  
  def test_it_has_a_name
    josh = Person.new("Josh", "Thompson", 1989)
    assert_equal "Josh", josh.f_name
  end
  
  def test_it_has_a_last_name
    josh = Person.new("Josh", "Thompson", 1989)


    assert_equal "Thompson", josh.l_name
  end
  
  def test_it_has_a_birthday
    josh = Person.new("Josh", "Thompson", 1989)
    
    assert_equal 1989, josh.b_year
  end
  
  def test_how_old_in_2020
    josh = Person.new("Josh", "Thompson", 1989)
    
    assert_equal 31, josh.how_old(2020)
  end
    
  def test_which_older_returns_the_older_person
    josh = Person.new("Josh", "Thompson", 1989)
    kristi = Person.new("Kristi", "Thompson", 1990)
    
    results = kristi.which_older(josh)
    assert_equal "Josh is older", results
  end
  
  def test_person_youngest
    josh = Person.new("Josh", "Thompson", 1989)
    katy = Person.new("Katy", "Wellington", 1991)
    kristi = Person.new("Kristi", "Thompson", 1990)
    mark = Person.new("Mark", "Modak", 1985)
    
    assert_equal "Katy", Person.youngest
  end
  
  def test_all_persons
    josh = Person.new("Josh", "Thompson", 1989)
    katy = Person.new("Katy", "Wellington", 1991)
    kristi = Person.new("Kristi", "Thompson", 1990)
    mark = Person.new("Mark", "Modak", 1985)
    
    assert_equal 4, Person.all.count
    assert_instance_of Person, Person.all.first
    assert_includes Person.all, josh
  end
end