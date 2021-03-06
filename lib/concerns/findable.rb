module Concerns::Findable
    
    #class methods without 'self'

        def find_by_name(name)
            self.all.detect do |a|
                a.name == name 
            end
        end
    
        def find_or_create_by_name(name)
            find_by_name(name) || create(name)
        end
end
