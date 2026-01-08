class DarwinPhotos < Formula
  desc "CLI tool for exploring and exporting from macOS Photos library"
  homepage "https://github.com/cleanexit0/darwin-photos"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.1.3/darwin-photos_v#{version}_darwin_amd64.tar.gz"
      sha256 "6bb18f7e33a74cffb09eba369b7188f42e213f227ecb789c163706de0cc46a15"
    end

    on_arm do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.1.3/darwin-photos_v#{version}_darwin_arm64.tar.gz"
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
