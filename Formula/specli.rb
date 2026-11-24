class Specli < Formula
  desc "Browser viewer/editor for spec-driven design artifacts"
  homepage "https://spec.li"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.3.4/specli_v0.3.4_darwin_arm64.tar.gz"
      sha256 "dfc86d84f20b593d19ea14395c9451cd25e8965b33458c330453c6ce8cc5d21c"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.3.4/specli_v0.3.4_darwin_amd64.tar.gz"
      sha256 "4525772b7027b4912e516ff21bb581546b5cfc2289e8a2522d25748beb8b2a30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.3.4/specli_v0.3.4_linux_arm64.tar.gz"
      sha256 "c155d71e1ad8f56372dd8ef54925eb1c6e6bc214d0926100e89a53cdc6c71a0f"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.3.4/specli_v0.3.4_linux_amd64.tar.gz"
      sha256 "9676f0b86d4c68ddff2e86d2aa277d21c4bf2b17d95c1c9aa14591d09d3231c8"
    end
  end

  def install
    bin.install Dir["specli_*/specli"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/specli --version")
  end
end
