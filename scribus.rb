require 'formula'

class ScribusDownloadStrategy < SubversionDownloadStrategy
  def stage
    FileUtils.cp_r @clone.children, '.'
  end
end


class Scribus < Formula
  homepage 'http://wiki.scribus.net/canvas/Scribus_and_Homebrew'
  version '0.9'
  head 'svn://scribus.net//trunk/Scribus',
    # download a specific revision
    # use :revision => '######',
    :using => ScribusDownloadStrategy
  depends_on 'cmake' => :build
  depends_on 'little-cms2'
  depends_on 'qt5'
  depends_on 'cairo'
  depends_on 'jpeg'
  depends_on 'libtiff'
  depends_on 'fontconfig'
  depends_on 'openssl'
  depends_on 'pkg-config' => :build
  depends_on 'python'
  depends_on 'hunspell'
  depends_on 'homebrew/dupes/zlib'
  depends_on 'ghostscript' => :recommended
  depends_on 'graphicsmagick' => :recommended
  depends_on 'boost' => :recommended
  depends_on 'poppler' => :recommended
  depends_on 'podofo' => :recommended
  depends_on 'freetype' => :recommended
  depends_on 'librevenge' => :recommended       # Build import filters
  depends_on 'libwpg' => :recommended           # Importer: WordPerfect Graphics
  depends_on 'libvisio' => :recommended         # Importer: MS-Visio
  depends_on 'libmspub' => :recommended         # Importer: MS-Publisher
#  depends_on 'libcdr' => :recommended           # Importer: Corel Draw

   def install
    args = %W[
    -DBUILD_OSX_BUNDLE=1
    -DCMAKE_INSTALL_PREFIX:PATH=#{prefix}/Scribus.app/Contents/
    -DQT_PREFIX=#{Formula["qt5"].opt_prefix}
    -DWANT_HUNSPELL=1
    -DWITH_PODOFO=1
    -DWANT_GRAPHICSMAGICK=1
    -DWANT_SVNVERSION=1
    -DWANT_DEBUG=1
    ]
    # Other Options:
    # Enable Scripter2 with -DWANT_SCRIPTER2=1

    # ENV.libcxx if MacOS.version > :mountain_lion
    system "cmake", ".", *args
    system "make"
    system "make install"
  end
end
