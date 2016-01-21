class Chef < ActiveRecord::Base
    validates :chefname, presence: true, lengthh: {minimum: 3, maximum: 40 }
end    