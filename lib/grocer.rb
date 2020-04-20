def find_item_by_name_in_collection(name, collection)
  res = nil
  collection.each {|e| 
    res = e if e[:item] == name
    break if res != nil
  }
  return res
end

def consolidate_cart(cart)
  res = []
  item_names = cart.map {|e| e[:item]}.uniq
  item_names.each {|name|
    items = cart.select {|i| i[:item] == name}
    items[0][:count] = items.count
    res.append(items[0])
  }
  return res
end
p consolidate_cart([
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
])


  