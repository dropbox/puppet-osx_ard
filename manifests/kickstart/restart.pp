# Reload ARD Config using Kickstart
class osx_ard::kickstart::restart{
  $kickstart = $osx_ard::kickstart

  exec { 'Kickstart Reload ARD Config' :
    command     => "${kickstart} -activate -configure -access -on -restart -agent",
    refreshonly => true,
  }

}