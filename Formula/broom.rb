class Broom < Formula
  desc "Sweep your dev machine clean — guided TUI for reclaiming disk space"
  homepage "https://github.com/okolilemuel/broom"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/okolilemuel/broom/releases/download/v0.1.0/broom-darwin-arm64"
      sha256 "b20e972b5763572f1eda4d6af5faa3347dae2ffc4f692b819f06ca7bbe548723"
    end
    on_intel do
      url "https://github.com/okolilemuel/broom/releases/download/v0.1.0/broom-darwin-amd64"
      sha256 "63d303574464a208185048cc5b5026ae2be08280a11d4cea0fa3bb6d72f95291"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/okolilemuel/broom/releases/download/v0.1.0/broom-linux-arm64"
      sha256 "f4edbf594771b03a914e0301d3943e8d67e8784ede1d84bea3312bd99b54fb47"
    end
    on_intel do
      url "https://github.com/okolilemuel/broom/releases/download/v0.1.0/broom-linux-amd64"
      sha256 "1a530bf80965c759452ae714e7649f32d79ad2a1cdf32002d498691be01f24de"
    end
  end

  def install
    bin.install stable.url.split("/").last => "broom"
  end

  test do
    assert_match "broom #{version}", shell_output("#{bin}/broom --version")
  end
end
