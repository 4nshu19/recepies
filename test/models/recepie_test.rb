require 'test_helper'

class RecepieTest < ActiveSupport::TestCase
    
    def setup
         @recepie = Recepie.new(name: "malai kofta", summary: "malai kofta is a veg dish and it has kofta",
                                 description: "take malai, add kofta to it, and cook for 10 minutes. add salf if needed");
    
    end
    
    test "recepie must be valid" do
        assert @recepie.valid?
    end    

    test "name should be present" do
        @recepie.name = " "
        assert_not @recepie.valid?
    end

    test "name length should not be too long" do
        @recepie.name = "a" * 101
        assert_not @recepie.valid?
    end

    test "name length should not be too short" do
        @recepie.name = "aaaa"
        assert_not @recepie.valid?
    end

    test "summary must be present" do
         @recepie.summary = " "
        assert_not @recepie.valid?
    end

    test "summary length should not be too long" do
        @recepie.summary = "a" * 151
        assert_not @recepie.valid?
    end
    
    test "summary length should not be too short" do
        @recepie.summary = "a" * 9
        assert_not @recepie.valid?
    end
  
    test "description must be present" do
        @recepie.description = " "
        assert_not @recepie.valid?
    end
    
   

    test "description should not be too short" do
        @recepie.description = "a" * 19 
        assert_not @recepie.valid?
    end
end  