class MyHash
  define_method(:initialize) do
    myNew()
  end

  define_method(:myNew) do
   @hash_array = []
  end

  define_method(:myStore) do |key, value|
    @hash_array.push([key, value])
  end

  define_method(:myFetch) do |key_search|
    key_val_array = self.instance_variable_get(:@hash_array)

    key_val_array.each do |param|
      puts "first each"
      param.each do |param_in|
        puts "second each"
        if param_in == key_search
          puts "if statement"
        end
      end
    end

  end

end

test_hash = MyHash.new()
test_hash.myStore("kitten", "cute")
test_hash.myStore("doggy", "ugly")
test_hash.myStore("pup", "happy")
print test_hash.instance_variable_get(:@hash_array)
puts " "
puts test_hash.myFetch("kitten")
# puts test_hash.instance_of? MyHash # true
# puts test_hash.inspect.include?("kitten") # true
# puts test_hash.inspect.include?("cute") # true
