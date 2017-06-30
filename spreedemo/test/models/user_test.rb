class User < ApplicationRecord

 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders, class_name: "Spree::Order"

  after_create :create_session

    def create_session
     session[:spree_user_signup] = true
    end
    def last_incomplete_spree_order
        #spree_orders.incomplete.where(user_id: self.id).order('created_at DESC').first
    end

    def set_login
      # for now force login to be same as email, eventually we will make this configurable, etc.
      self.login ||= email if email
    end
end