class AddUserDefaultColumns < ActiveRecord::Migration[5.0]
  def change
  	# t.string   "crypted_password",          limit: 128
   #      t.string   "salt",                      limit: 128
   #      t.string   "email"
   #      t.string   "remember_token"
   #      t.string   "remember_token_expires_at"
   #      t.string   "persistence_token"
   #      t.string   "single_access_token"
   #      t.string   "perishable_token"
   #      t.integer  "login_count",                              default: 0, null: false
   #      t.integer  "failed_login_count",                       default: 0, null: false
   #      t.datetime "last_request_at"
   #      t.datetime "current_login_at"
   #      t.datetime "last_login_at"
   #      t.string   "current_login_ip"
   #      t.string   "last_login_ip"
   #      t.string   "login"
   #      t.integer  "ship_address_id"
   #      t.integer  "bill_address_id"
   #      t.datetime "created_at",                                              null: false
   #      t.datetime "updated_at",                                              null: false
   #      t.string   "openid_identifier"

    add_column "users", :remember_token, :string
    add_column "users", :remember_token_expires_at, :string
    add_column "users", :persistence_token, :string
    add_column "users", :single_access_token, :string
    add_column "users", :perishable_token, :string

    
    
    add_column "users", :deleted_at, :datetime
    

  end
end
