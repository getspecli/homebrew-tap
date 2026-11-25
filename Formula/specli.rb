class Specli < Formula
  desc "Browser viewer/editor for spec-driven design artifacts"
  homepage "https://spec.li"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.5.0/specli_v0.5.0_darwin_arm64.tar.gz"
      sha256 "dc9fd6de2f06ed515966dbbd6dadf959b1760b96768fe0acb9bd17e1dfa879d1"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.5.0/specli_v0.5.0_darwin_amd64.tar.gz"
      sha256 "616dc583705d1f04f058efa26e2a7a7bb2648943ef4850c9136d9dbfa3f0a20a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.5.0/specli_v0.5.0_linux_arm64.tar.gz"
      sha256 "98a94bc1edb73ad5be03a431d8b9d550a73c456d0cbd730a6b8ac3ea30c3c493"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.5.0/specli_v0.5.0_linux_amd64.tar.gz"
      sha256 "7dac2f6140c083b2ae602ae5ff02f9392cd420a1451eb60395de328360c9ce94"
    end
  end

  def install
    bin.install "specli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/specli --version")
  end
end
