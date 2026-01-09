class DarwinPhotos < Formula
  desc "CLI tool for exploring and exporting from macOS Photos library"
  homepage "https://github.com/cleanexit0/darwin-photos"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.1.5/darwin-photos_v#{version}_darwin_amd64.tar.gz"
      sha256 "02391d51c3c6ea8caafbd9c98c1b1517a903f64a8bb2160a68a601f665ae7a46"
    end

    on_arm do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.1.5/darwin-photos_v#{version}_darwin_arm64.tar.gz"
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
