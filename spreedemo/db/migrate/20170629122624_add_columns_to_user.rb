class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column "users", :email, :string
    add_column "users", :login_count, :integer
    add_column "users", :login, :string
    add_column "users", :openid_identifier, :string
    add_column "users", :failed_login_count, :integer
  end
end
