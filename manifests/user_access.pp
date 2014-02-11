# Set User Permissions for Apple Remote Desktop
class osx_ard::user_access {
  $ard_admin_group    = $osx_ard::ard_admin_group
  $ard_interact_group = $osx_ard::ard_interact_group
  $ard_manage_group   = $osx_ard::ard_manage_group
  $ard_reports_group  = $osx_ard::ard_reports_group
  $admin_users        = $osx_ard::admin_users
  $interact_users     = $osx_ard::interact_users
  $manage_users       = $osx_ard::manage_users
  $reports_users      = $osx_ard::reports_users


  if $admin_users {
    $unique_admin_users = prefix($admin_users, "${ard_admin_group}:")
    osx_utils::add_user_to_group { $unique_admin_users :
      group => $ard_admin_group,
    }
  }

  if $interact_users {
    $unique_interact_users = prefix($interact_users, "${ard_interact_group}:")
    osx_utils::add_user_to_group { $unique_interact_users :
      group => $ard_interact_group,
    }
  }

  if $manage_users {
    $unique_manage_users = prefix($manage_users, "${ard_manage_group}:")
    osx_utils::add_user_to_group { $unique_manage_users :
      group => $ard_manage_group,
    }
  }

  if $reports_users {
    $unique_reports_users = prefix($reports_users, "${ard_reports_group}:")
    osx_utils::add_user_to_group { $unique_reports_users :
      group => $ard_reports_group,
    }
  }

}