class DarwinPhotos < Formula
  desc "CLI tool for exploring and exporting from macOS Photos library"
  homepage "https://github.com/cleanexit0/darwin-photos"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.1.4/darwin-photos_v#{version}_darwin_amd64.tar.gz"
      sha256 "4e1b2cc9f0a2fc9fd11191c2694486dcfabfc41429b14b6b51fd802403df6893"
    end

    on_arm do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.1.4/darwin-photos_v#{version}_darwin_arm64.tar.gz"
      sha256 "REPLACE_ARM64_SHA256"
    end
  end

  def install
    bin.install "darwin-photos"
  end

  test do
    system "#{bin}/darwin-photos", "--help"
  end
end
