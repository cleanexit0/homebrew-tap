class DarwinPhotos < Formula
  desc "CLI tool for exploring and exporting from macOS Photos library"
  homepage "https://github.com/cleanexit0/darwin-photos"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v#{version}/darwin-photos_v#{version}_darwin_amd64.tar.gz"
      sha256 "REPLACE_AMD64_SHA256"
    end

    on_arm do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v#{version}/darwin-photos_v#{version}_darwin_arm64.tar.gz"
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
