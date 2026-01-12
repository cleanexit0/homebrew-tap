class DarwinPhotos < Formula
  desc "CLI tool for exploring and exporting from macOS Photos library"
  homepage "https://github.com/cleanexit0/darwin-photos"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.1.8/darwin-photos_v#{version}_darwin_amd64.tar.gz"
      sha256 "6495b5041d4d8c973bb1fc9e2fe5bcfafb5111ea06a7f934482113e720736416"
    end

    on_arm do
      url "https://github.com/cleanexit0/darwin-photos/releases/download/v0.1.8/darwin-photos_v#{version}_darwin_arm64.tar.gz"
      sha256 "50f6dea3dcdaf6576859eb1f98a3224fe00095a17a36b66f90bcb640d6c2e120"
    end
  end

  def install
    bin.install "darwin-photos"
  end

  test do
    system "#{bin}/darwin-photos", "--help"
  end
end
