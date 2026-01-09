class DarwinPhotos < Formula
  desc "CLI tool for exploring and exporting from macOS Photos library"
  homepage "https://github.com/cleanexit0/darwin-photos"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.1.6/darwin-photos_v#{version}_darwin_amd64.tar.gz"
      sha256 "d675d76edfa7c0b117a0cf50f055cef062336445332b6277e48e8df0a46ba8e2"
    end

    on_arm do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.1.6/darwin-photos_v#{version}_darwin_arm64.tar.gz"
      sha256 "52eb07ff9be955ef152b96d1d616dee3f94eb14a688c9960eba172d71042cdf0"
    end
  end

  def install
    bin.install "darwin-photos"
  end

  test do
    system "#{bin}/darwin-photos", "--help"
  end
end
