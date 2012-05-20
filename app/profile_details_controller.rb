class ProfileDetails < UIViewController
  def showDetailsForProfile(profile)
    navigationItem.title = profile.name

  end
end