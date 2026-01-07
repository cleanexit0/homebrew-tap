class DarwinPhotos < Formula
  desc "CLI tool for exploring and exporting from macOS Photos library"
  homepage "https://github.com/cleanexit0/darwin-photos"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.1.0/darwin-photos_v#{version}_darwin_amd64.tar.gz"
      sha256 "c5f2b568f2d8d79ca521fa51bc50035f2c94109bf4516c88c4bfe31bdf5cf42e"
    end

    on_arm do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.1.0/darwin-photos_v#{version}_darwin_arm64.tar.gz"
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
