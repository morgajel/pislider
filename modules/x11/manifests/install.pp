class x11::install {
    package { "x11-xserver-utils":
        ensure =>present,
    }
}
