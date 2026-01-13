class DarwinPhotos < Formula
  desc "CLI tool for exploring and exporting from macOS Photos library"
  homepage "https://github.com/cleanexit0/darwin-photos"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.2.0/darwin-photos_v#{version}_darwin_amd64.tar.gz"
      sha256 "2407acd153fc5c3d7916dc577b5b4ef36502625c59bfa503504afbe8c7424804"
    end

    on_arm do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.2.0/darwin-photos_v#{version}_darwin_arm64.tar.gz"
      sha256 "0a6e4556f9af92da1f1a6504d58faa84f1f67ca3973d444d823e67bcb3ff69be"
    end
  end

  def install
    bin.install "darwin-photos"
  end

  test do
    system "#{bin}/darwin-photos", "--help"
  end
end
