# class ProductSerializer

#     def self.serializer(product)
#         serial_product = '{'
#         serial_product += '"id": ' + product.id.to_s + ', '
#         serial_product += '"name": "' + product.name + '", '
#         serial_product += '"price": "' + product.price.to_s + '", '
#         serial_product += '"inventory": "' + product.inventory.to_s + '", '
#         serial_product += '"description": "' + product.description + '"'
#         serial_product += '}'
       
#     end

# end
# class ProductSerializer
#     def self.serialize(product)
#       serialized_product = '{'
  
#       serialized_product += '"id": ' + product.id.to_s + ', '
#       serialized_product += '"name": "' + product.name + '", '
#       serialized_product += '"description": "' + product.description + '", '
#       serialized_product += '"inventory": ' + product.inventory.to_s + ', '
#       serialized_product += '"price": "' + product.price.to_s + '"'
  
#       serialized_product += '}'
#     end
#   end

class ProductSerializer
    def self.serialize(product)
      serialized_product = '{'
  
      serialized_product += '"id": ' + product.id.to_s + ', '
      serialized_product += '"name": "' + product.name + '", '
      serialized_product += '"description": "' + product.description + '", '
      serialized_product += '"inventory": ' + product.inventory.to_s + ', '
      serialized_product += '"price": "' + product.price.to_s + '"'
  
      serialized_product += '}'
    end
  end
  