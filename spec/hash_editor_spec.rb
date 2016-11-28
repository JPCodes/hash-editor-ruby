require('rspec')
require('hash_editor')

describe(MyHash) do
  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetchValue("kitten")).to(eq("cute"))
    end

    it("retrieves a stored value by its value") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetchKey("cute")).to(eq("kitten"))
    end

  end
end
