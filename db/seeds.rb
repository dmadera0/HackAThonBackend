require 'rest-client'
require 'json'

Brewhouse.destroy_all
User.destroy_all

base_url = 'https://raw.githubusercontent.com/openbrewerydb/openbrewerydb/master/breweries.json'
data = RestClient.get base_url
parsed_data = JSON.parse(data)

parsed_data.map do |brewhouse|
    Brewhouse.create(name:  brewhouse["name"], city: brewhouse["city"], postal_code: brewhouse["postal_code"], url: brewhouse["website_url"], phone: brewhouse["phone"])
end 
