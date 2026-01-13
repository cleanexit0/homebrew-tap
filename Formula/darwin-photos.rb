class DarwinPhotos < Formula
  desc "CLI tool for exploring and exporting from macOS Photos library"
  homepage "https://github.com/cleanexit0/darwin-photos"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.2.1/darwin-photos_v#{version}_darwin_amd64.tar.gz"
      sha256 "c881f45f0e2e35902703bb8186ac7e68f4af7b11ccb4b00a5cb71e65d407cbaf"
    end

    on_arm do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.2.1/darwin-photos_v#{version}_darwin_arm64.tar.gz"
      sha256 "f87b6efb85f0b8322cb5a3e9c5a523cefc9bcecbb56f4d0e4d8715852cf13ec2"
    end
  end

  def install
    bin.install "darwin-photos"
  end

  test do
    system "#{bin}/darwin-photos", "--help"
  end
end
