class DarwinPhotos < Formula
  desc "CLI tool for exploring and exporting from macOS Photos library"
  homepage "https://github.com/cleanexit0/darwin-photos"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.1.7/darwin-photos_v#{version}_darwin_amd64.tar.gz"
      sha256 "194a9b78310a5796019b2bb906397ef2baf633cb849b8ffaa1853956ab1620db"
    end

    on_arm do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.1.7/darwin-photos_v#{version}_darwin_arm64.tar.gz"
      sha256 "2a381f8ea56f903df1bcac4a2a8dd25b62a7a98740caee16574e204f3fc622ef"
    end
  end

  def install
    bin.install "darwin-photos"
  end

  test do
    system "#{bin}/darwin-photos", "--help"
  end
end
