class User < ActiveRecord::Base

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider 
      user.uid      = auth.uid
      user.name     = auth.info.name

      if user.uid == ENV["admin_uid"]
        user.admin = true
      else
        user.admin = false
      end

      user.save

    end
  end
  
end
