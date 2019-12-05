require "pry"

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  bg = 0 
  while bg < collection.length do 
  
    if name == collection[bg][:item]
      return collection[bg]
    end 
    bg += 1 
  end
  
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
 # binding.pry
  hg = 0 
  box1= []
  while hg < cart.length do 
    jack_in = find_item_by_name_in_collection(cart[hg][:item], box1)
    if jack_in != nil 
      jack_in[:count] += 1 
    else 
      jack_in = {:item => cart[hg][:item], :price => cart[hg][:price], :clearance => cart[hg][:clearance]} 
    end
    hg += 1 
  end
  return box 
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
