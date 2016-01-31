class Chef < ActiveRecord::Base
    has_many :recepies
    before_save { self.email = email.downcase }
    validates :chefname, presence: true, length: { minimum: 3, maximum: 40 }
    #validates :email, presence: true, length: {maximum: 105},
    #                                    uniqueness: { case-sensitive: false},
    #                                    format: {with: VALID_EMAIL_REGEX }
    
end    