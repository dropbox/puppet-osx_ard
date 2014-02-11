# Set Group Permissions for Apple Remote Desktop
class osx_ard::group_access {
  $ard_admin_group    = $osx_ard::ard_admin_group
  $ard_interact_group = $osx_ard::ard_interact_group
  $ard_manage_group   = $osx_ard::ard_manage_group
  $ard_reports_group  = $osx_ard::ard_reports_group
  $admin_groups       = $osx_ard::admin_groups
  $interact_groups    = $osx_ard::interact_groups
  $manage_groups      = $osx_ard::manage_groups
  $reports_groups     = $osx_ard::reports_groups

  if $admin_groups {
    $unique_admin_groups    = prefix($admin_groups, "${ard_admin_group}:")
    osx_utils::add_group_to_group { $unique_admin_groups :
      destination_group => $ard_admin_group,
    }
  }

  if $interact_groups {
    $unique_interact_groups    = prefix($interact_groups, "${ard_interact_group}:")
    osx_utils::add_group_to_group { $unique_interact_groups :
      destination_group => $ard_interact_group,
    }
  }

  if $manage_groups {
    $unique_manage_groups   = prefix($manage_groups, "${ard_manage_group}:")
    osx_utils::add_group_to_group { $unique_manage_groups :
      destination_group => $ard_manage_group,
    }
  }

  if $reports_groups {
    $unique_reports_groups  = prefix($reports_groups, "${ard_reports_group}:")
    osx_utils::add_group_to_group { $unique_reports_groups :
      destination_group => $reports_groups,
    }
  }

}