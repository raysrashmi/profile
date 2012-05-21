class Profile < NanoStore::Model
  attribute :name
  attribute :image_name
  attribute :email
  
  
  def initialize(name,image_name,email)
    @name  = name
    @image_name = image_name
    @email =  email
  end
  
  All = [
         Profile.new('Rashmi Yadav','rays.jpg','rays@example.com'),
         Profile.new('Arun Agrawal', 'arun.jpg','arun@example.com'),
         Profile.new('Karan Arora', 'karan.jpg','karan@example.com'),
         Profile.new('Richa Saksena', 'richa.jpg','richa@example.com')
       ]
end
