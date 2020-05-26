# This file was generated by GoReleaser. DO NOT EDIT.
class UpdateDockerTags < Formula
  desc "CLI to update Docker tag image versions"
  homepage "https://github.com/slimsag/update-docker-tags"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ggilmore/update-docker-tags/releases/download/0.1.0/update-docker-tags_0.1.0_Darwin_x86_64.tar.gz"
    sha256 "e15a980f965324dfa42f4093e3b1661492cb2844db1e4cd1ac52a54096bec80c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ggilmore/update-docker-tags/releases/download/0.1.0/update-docker-tags_0.1.0_Linux_x86_64.tar.gz"
      sha256 "bd02311b262e03684e8fc9b1e7debd7cf6d3cb2ce389c3bc40930d60a220fb4a"
    end
  end
  
  depends_on "go"

  def install
    bin.install "update-docker-tags"
  end

  test do
    system "#{bin}/update-docker-tags --help"
  end
end
