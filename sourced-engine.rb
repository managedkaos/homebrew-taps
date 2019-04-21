class SourcedEngine < Formula
  desc "Language-agnostic analysis of your source code and git history."
  homepage "https://docs.sourced.tech/engine"
  url "https://github.com/src-d/engine/releases/download/v0.12.0/engine_v0.12.0_darwin_amd64.tar.gz"
  sha256 "a51b89428f13786ea5b6983764333a08d5fafc9b8fb51c1ce45c51f40b8d43e7"

  def install
    bin.install "srcd"
  end

  test do
    system "#{bin}/srcd version"
    system "#{bin}/srcd init"
    system "#{bin}/srcd stop"
  end
end
