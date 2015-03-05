class VendorAlbum < ActiveRecord::Base
  has_many :pictures, :dependent => :destroy
  accepts_nested_attributes_for :pictures

  has_attached_file :logo,
  :storage => :s3,
  :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
  # :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
  :path => '/:class/:id/:style/:filename',
  # :url => "/system/:attachment/:id/:basename_:style.:extension",
  :url =>':s3_domain_url',


  :styles => {
    :admin    => ['100x100#',  :jpg, :quality => 70],
    :thumb    => ['300x250#',  :jpg, :quality => 70],
    :preview  => ['500x500#',  :jpg, :quality => 70]
  },

  :convert_options => {
    :admin    => '-set colorspace sRGB -strip',
    :thumb    => '-set colorspace sRGB -strip',
    :preview  => '-set colorspace sRGB -strip'
  }

  validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]



  def s3_credentials
    {:bucket => ENV['AWS_BUCKET'], :access_key_id => ENV["access_key_id"], :secret_access_key => ENV["secret_access_key"]}
  end

end
