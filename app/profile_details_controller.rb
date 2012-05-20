class ProfileDetailsController < UIViewController
  def showDetailsForProfile(profile)
    navigationItem.title = profile.name
    view.backgroundColor = UIColor.whiteColor
    image = UIImageView.alloc.init
    image.image = UIImage.imageNamed(profile.image_name)
    image.frame = CGRectMake(0, 0, 150, 100)
    #image.transform = CGAffineTransformInvert(1)
    email = UILabel.alloc.init
    email.frame = CGRectMake(0, 100, 250, 100)
    email.text = profile.email
    view.addSubview(image)
    view.addSubview(email)
  end
end
