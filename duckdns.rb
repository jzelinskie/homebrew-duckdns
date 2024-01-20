require "formula"

class Duckdns < Formula
  homepage "http://jzelinskie.com/homebrew-duckdns"
  url "https://github.com/jzelinskie/homebrew-duckdns/archive/1.0.tar.gz"
  sha256 "87108c4bafb4d5b9c66dfb3cd3efa9f0cb152981ef40d763a11230247d48484c"

  def install
    bin.install 'duckdns'
  end
  
  test do
    system "#{bin}/duckdns"
  end
  
  service do
    run [opt_bin/"duckdns"]
    run_type :interval
    interval 300
  end

end

