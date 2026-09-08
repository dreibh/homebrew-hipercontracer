class Mbuffer < Formula
  desc "Tool for buffering data streams"
  homepage "https://www.maier-komor.de/mbuffer.html"
  url "https://www.maier-komor.de/software/mbuffer/mbuffer-20260511.tgz"
  sha256 "13bab36f39408f7a08fb368913290ad0f117c934bab602094e18fcc123ec5783"
  license "GPL-3.0-or-later"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mbuffer --version 2>&1")
  end
end
