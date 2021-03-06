(asdf:defsystem nuklear-blob
  :author "Pavel Korolev"
  :description "Nuklear IM GUI foreign library collection"
  :license "MIT"
  :defsystem-depends-on (:bodge-blobs-support)
  :depends-on (:glad-blob)
  :class :bodge-blob-system
  :libraries (((:darwin :x86-64) "libnuklear.dylib" "x86_64/")
              ((:darwin :x86) "libnuklear.dylib" "x86/")
              ((:unix (:not :darwin) :x86-64) "libnuklear.so" "x86_64/")
              ((:unix (:not :darwin) :x86) "libnuklear.so" "x86/")
              ((:windows :x86-64) "libnuklear.dll" "x86_64/")
              ((:windows :x86) "libnuklear.dll" "x86/"))
  :perform (asdf:load-op :before (o c)
                         #+darwin
                         (uiop:symbol-call :bodge-blobs-support 'link-system-foreign-libraries
                                           :nuklear-blob #+x86 "x86/" #+x86-64 "x86_64/")))
