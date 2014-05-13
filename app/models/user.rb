class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_attached_file :profile_pic, styles: { thumbnail: "80*80>"}
   validates_attachment_content_type :profile_pic, :content_type => %w(image/jpeg image/jpg image/png)
end
