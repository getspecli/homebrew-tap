class Specli < Formula
  desc "Browser viewer/editor for spec-driven design artifacts"
  homepage "https://spec.li"
  version "0.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.3.9/specli_v0.3.9_darwin_arm64.tar.gz"
      sha256 "c24e05735ba5a6ff0eeb12cdbf21ddb9bfbe1ffaa7d4bebe1c86cd5c76dfde5c"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.3.9/specli_v0.3.9_darwin_amd64.tar.gz"
      sha256 "eca8ced10b476f1d1973dbe661c0fd56348f58fa08e4e0deda994004951349cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getspecli/specli/releases/download/v0.3.9/specli_v0.3.9_linux_arm64.tar.gz"
      sha256 "0bc873fcc3517eac7f66f9d52fdacfc08b4893560cfa918d32f639a3b125b2c0"
    end
    on_intel do
      url "https://github.com/getspecli/specli/releases/download/v0.3.9/specli_v0.3.9_linux_amd64.tar.gz"
      sha256 "7b8404031687a6a09b649019a59114d1fa57d424de84a03ddfe528bdc30ec0b2"
    end
  end

  def install
    bin.install "specli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/specli --version")
  end
end
