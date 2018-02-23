(asdf:defsystem nuklear-blob
  :author "Pavel Korolev"
  :description "Nuklear IM GUI foreign library collection"
  :license "MIT"
  :defsystem-depends-on (:bodge-blobs-support)
  :depends-on (:bodge-glad)
  :class :bodge-blob-system
  :libraries (((:darwin :x86-64) "libnuklear.dylib.bodged" "x86_64/")
              ((:darwin :x86) "libnuklear.dylib.bodged" "x86/")
              ((:unix (:not :darwin) :x86-64) "libnuklear.so.bodged" "x86_64/")
              ((:unix (:not :darwin) :x86) "libnuklear.so.bodged" "x86/")
              ((:windows :x86-64) "libnuklear.dll.bodged" "x86_64/")
              ((:windows :x86) "libnuklear.dll.bodged" "x86/")))
