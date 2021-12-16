class City < ApplicationRecord
    def self.search(search)
        if search 
            city = City.find_by(name: search)
            if city
                self.where(["name LIKE ? or state LIKE ?","%#{search}%"])
            else
                City.all
            end
        else
            City.all
     end 
end
