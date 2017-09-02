class User < ApplicationRecord
	 # mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   mount_uploader :image, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :messages
        has_many :conversations, foreign_key: :sender_id

     
   def online?
    if current_sign_in_at.present? 
      last_sign_out_at.present? ? current_sign_in_at > last_sign_out_at : true
    else
      false
    end
  end


def self.find_for_database_authentication(conditions={})
  find_by(username: conditions[:email]) || find_by(email: conditions[:email])
end


def filename
  if original_filename
    if model && model.read_attribute(:image).present? #or whatever you call your column
      model.read_attribute(:image)
    else
      # create new filename however you're doing it
    end
  end
end
end
