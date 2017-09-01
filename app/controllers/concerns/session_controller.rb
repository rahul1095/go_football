class SessionsController < Devise::SessionsController

  def destroy
    current_user.update_attribute(:last_sign_out_at, Time.now)
    super
  end
  
  def self.find_for_authentication(conditions)
  conditions = ["username = ? or email = ?", conditions[authentication_keys.first], conditions[authentication_keys.first]]
  # raise StandardError, conditions.inspect
  super
end

end