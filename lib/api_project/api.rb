class Api

    
    def get_data
        response = RestClient.get ("http://www.recipepuppy.com/api/?i=onions,garlic&q=omelet&p=3%22")
        api_response  = JSON.parse(response.body)
        api_response.each do |puppy|
            Food.new(
             puppy["title"],
             puppy["ingredients"]
             )
            
        end
        #binding.pry 
        
    end 

    
    
end 