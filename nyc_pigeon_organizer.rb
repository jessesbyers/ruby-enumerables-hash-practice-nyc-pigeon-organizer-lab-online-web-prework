#require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key, attributes|
    attributes.each do |sub_attributes, array|
      array.each do |names|
        if new_hash[names] == nil
          new_hash[names] = {}
        end
        if new_hash[names].include? data[key][attributes][array]
          new_hash[names][attributes]
        end
      end
    end
  end
    new_hash
#    binding_pry
  end


  #        if new_hash[names] == nil
  #          new_hash = {names => values}
  #        end

#    value.each do |attributes, array|
#      array.each do |names|

#        if




# #require 'pry'
#
# def nyc_pigeon_organizer(data)
#   name_hash = {}
#   data.each do |attributes, values|
#     values.each do |value, array|
#       array.each do |name|
#
#         if name_hash[name] == nil
#           name_hash[name] = {}
#           name_hash[name][attributes] = []
#
#         else
#           name_hash[name][attributes]
#
#
#         end
#       end
#     end
#   end
#
# name_hash.each do |name, values|
#   values.each do |hashvalue, array|
#     data.each do |attributes, values|
#       values.each do |value, array|
#         array.each do |element|
#
#           if element == name && hashvalue && attributes
#             name_hash[name][hashvalue] << values
#           end
#         end
#       end
#     end
#   end
# end
# name_hash
# #binding.pry
# end


#problem: when I pull up name_hash, it is structured correctly to start then includes names in an array under each attribute:

# need a conditional to check whether a name in the array matches the name key for the hash.
#if true, keep that attribute (empty hash or delete hash),
#  if false get rid of that attribute

#{"Theo"=>
#  {:color=>
#    [{:purple=>["Theo", "Peter Jr.", "Lucky"],
#      :grey=>["Theo", "Peter Jr.", "Ms. K"],
#      :white=>["Queenie", "Andrew", "Ms. K", "Alex"],
#      :brown=>["Queenie", "Alex"]},
#     {:purple=>["Theo", "Peter Jr.", "Lucky"],
#      :grey=>["Theo", "Peter Jr.", "Ms. K"],
#      :white=>["Queenie", "Andrew", "Ms. K", "Alex"],
#      :brown=>["Queenie", "Alex"]},
#     {:male=>["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#      :female=>["Queenie", "Ms. K"]},
