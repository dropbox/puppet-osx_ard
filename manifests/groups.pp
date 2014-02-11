# Ensure ARD groups are present
class osx_ard::groups {
  $ard_admin_group    = $osx_ard::ard_admin_group
  $ard_interact_group = $osx_ard::ard_interact_group
  $ard_manage_group   = $osx_ard::ard_manage_group
  $ard_reports_group  = $osx_ard::ard_reports_group

  group { $ard_admin_group :    gid => '420', }
  group { $ard_interact_group : gid => '421', }
  group { $ard_manage_group :   gid => '422', }
  group { $ard_reports_group :  gid => '423', }

}