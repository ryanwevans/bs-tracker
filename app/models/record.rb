class Record < ApplicationRecord
    belongs_to :user

    def self.sorted_desc
        order(date: :desc, time: :desc)
        # sort_by{ |t| [t.date, t.time] }
    end
end
