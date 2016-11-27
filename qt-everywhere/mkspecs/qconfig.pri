#configuration
CONFIG +=  no_mocdepend release stl qt_no_framework
QT_ARCH = arm
QT_EDITION = OpenSource
QT_CONFIG +=  minimal-config small-config medium-config large-config full-config qt3support embedded reduce_exports ipv6 clock-gettime clock-monotonic mremap getaddrinfo ipv6ifname getifaddrs inotify png no-tiff freetype zlib audio-backend script declarative release

#versioning
QT_VERSION = 4.7.0
QT_MAJOR_VERSION = 4
QT_MINOR_VERSION = 7
QT_PATCH_VERSION = 0

#namespaces
QT_LIBINFIX = 
QT_NAMESPACE = 
QT_NAMESPACE_MAC_CRC = 

QMAKE_RPATHDIR += "/qt-everywhere/lib"
