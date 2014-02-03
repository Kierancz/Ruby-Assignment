class Numeric
  @@currencies = {'dollar' => 1.0, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
 
  def method_missing(method_id)
    singular_currency = to_singular(method_id)
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end
 
  def in(currency)
    singular_currency = to_singular(currency)
    if @@currencies.has_key?(singular_currency)
      self / @@currencies[singular_currency]
    else
      super
    end
  end
 
  private
 
  def to_singular(word)
    word.to_s.gsub( /s$/, '')
  end
end

p "Testing Numeric class..."
p 5.dollars.in(:euros)
p 10.euros.in(:rupees)
p 10.rupees.in(:euro)
