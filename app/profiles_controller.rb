class ProfilesController < UITableViewController

  def viewDidLoad
    navigationItem.title = "Profiles"
  end

  def tableView(tableView, numberOfRowsInSection:section)
  Profile::All.size
  end

  CELLID = 'CellIdentifier'
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
  cell = tableView.dequeueReusableCellWithIdentifier(CELLID) || begin
    cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CELLID)
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton
    #cell.selectionStyle = UITableViewCellSelectionStyleBlue
    cell
  end
  profile = Profile::All[indexPath.row]
  cell.textLabel.text = profile.name
  cell
  end

  def tableView(tableView, didSelectRowAtIndexPath:indexPath)

  profile = Profile::All[indexPath.row]
  @detail_controller||= ProfileDetails_controller.alloc.init
  navigationController.pushViewController(@detail_controller, animated:true)
  tableView.deselectRowAtIndexPath(indexPath, animated:true)
  end



end