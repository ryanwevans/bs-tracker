class Record < ApplicationRecord
    belongs_to :user

    def self.sorted_desc
        order(date: :desc)
    end
end
