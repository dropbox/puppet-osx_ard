# Module to Manage Apple Remote Desktop
class osx_ard (
  $kickstart          = '/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart',
  $ard_admin_group    = 'com.apple.local.ard_admin',
  $ard_interact_group = 'com.apple.local.ard_interact',
  $ard_manage_group   = 'com.apple.local.ard_manage',
  $ard_reports_group  = 'com.apple.local.ard_reports',
  $admin_users        = undef,
  $admin_groups       = ['admin'],
  $interact_users     = undef,
  $interact_groups    = undef,
  $manage_users       = undef,
  $manage_groups      = undef,
  $reports_users      = undef,
  $reports_groups     = undef,
  ) {

  class{'osx_ard::groups': } ->
  class{'osx_ard::user_access': } ->
  class{'osx_ard::group_access': } ->
  class{'osx_ard::kickstart::directorylogins': } ->
  class{'osx_ard::kickstart::enable': } ->
  class{'osx_ard::kickstart::restart': } ->
  Class['osx_ard']

}