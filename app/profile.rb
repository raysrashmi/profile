class Profile
  attr_accessor :name,:image_name
  def initialize(name,image_name)
    @name  = name
    @image_url = image_name
  end
  All = [
         Profile.new('Rashmi Yadav','rays.jpg'),
         Profile.new('Arun Agrawal', 'arun.jpg'),
         Profile.new('Karan Arora', 'karan.jpg'),
         Profile.new('Richa Saksena', 'richa.jpg')
       ]
end