class Employee < ApplicationRecord
    belongs_to :dog

    def whole_name
        self.first_name + ' ' + self.last_name
    end
end
