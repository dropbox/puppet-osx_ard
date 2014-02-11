# Kickstart ARD
class osx_ard::kickstart::enable {
  $kickstart = $osx_ard::kickstart

  exec { 'Kickstart ARD' :
    command => "${kickstart} -activate -configure -allowAccessFor -specifiedUsers",
    unless  => '/bin/cat /etc/RemoteManagement.launchd | /usr/bin/grep -q enabled',
  }

}