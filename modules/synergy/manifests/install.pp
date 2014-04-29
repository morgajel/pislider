class synergy::install {
    package { "synergy":
        ensure =>present,
    }

  file { '/home/pi/synergize':
    ensure  => file,
    owner   => pi,
    group   => pi,
    mode    => 755,
    source => "puppet:///modules/synergy/synergize",
    require => Class["vim::install"],
    }
}
