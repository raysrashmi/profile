class Profile
  attr_accessor :name,:image_name
  def initialize(name,image_name)
    @name  = name
    @image_url = image_name
  end
  All = [
         Profile.new('Rashmi Yadav','rays.jpg'),
         Profile.new('Arun Agrawal', 'http://mustachify.me/?src=https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash4/473379_10150749120579954_560559953_11735450_888061565_o.jpg'),
         Profile.new('Karan Arora', 'http://mustachify.me/?src=https://fbcdn-sphotos-a.akamaihd.net/hphotos-ak-ash4/327253_2395817469805_1682037004_1547810_280897014_o.jpg'),
         Profile.new('Richa Saksena', 'richa.jpg')
       ]
end