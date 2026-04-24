class Crux < Formula
  desc "DevEx and operations CLI for everyday workflows"
  homepage "https://github.com/lowkeyliesmyth/crux"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lowkeyliesmyth/crux/releases/download/#{version}/crux-#{version}-darwin-arm64.tar.gz"
      sha256 "f04021b9de33af1d254179b75a269abf9290e87e682bd9ac178a55d51c38fab8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lowkeyliesmyth/crux/releases/download/#{version}/crux-#{version}-linux-arm64.tar.gz"
      sha256 "5f2f93c1665f8f5bb41afc4f7c78c8f68c55f2430ee12693fecc2792169c6dae"
    end
    on_intel do
      url "https://github.com/lowkeyliesmyth/crux/releases/download/#{version}/crux-#{version}-linux-x86_64.tar.gz"
      sha256 "3d592fbd969f4a08f399ef4bfe147b55559879877935e75fb5b1c78965242d16"
    end
  end

  def install
    bin.install "crux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/crux version")
  end
end
