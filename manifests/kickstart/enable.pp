# Kickstart ARD
class osx_ard::kickstart::enable {
  $kickstart = $osx_ard::kickstart

  if $::macosx_productversion_major >= "10.11" {
	  exec { 'Kickstart ARD' :
	    command => "${kickstart} -activate -configure -allowAccessFor -specifiedUsers",
	    unless  => '/bin/cat /Library/Application\ Support/Apple/Remote\ Desktop/RemoteManagement.launchd | /usr/bin/grep -q enabled',
	  }
	}
	else {
	  exec { 'Kickstart ARD' :
	    command => "${kickstart} -activate -configure -allowAccessFor -specifiedUsers",
	    unless  => '/bin/cat /etc/RemoteManagement.launchd | /usr/bin/grep -q enabled',
	  }
	}

}
