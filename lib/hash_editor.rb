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

  define_method(:myFetchValue) do |key_search|
    key_val_array = self.instance_variable_get(:@hash_array)

    key_val_array.each do |param|
      param.each do |param_in|
        if param_in == key_search
          @result = param[1]
        end
      end
    end
    @result
  end

  define_method(:myFetchKey) do |value_search|
    key_val_array = self.instance_variable_get(:@hash_array)

    key_val_array.each do |param|
      param.each do |param_in|
        if param_in == value_search
          @result = param[0]
        end
      end
    end
    @result
  end

end
