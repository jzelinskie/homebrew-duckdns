require "formula"

class Duckdns < Formula
  homepage "http://jzelinskie.com/homebrew-duckdns"
  url "https://github.com/jzelinskie/homebrew-duckdns/archive/1.0.tar.gz"
  sha1 "e44316847fcacb88995a39769d1ac5bdaad1bc9a"

  def install
    bin.install 'duckdns'
  end

  test do
    system "#{bin}/duckdns"
  end

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{opt_bin}/duckdns</string>
      </array>
      <key>StartInterval</key>
      <integer>300</integer>
      <key>RunAtLoad</key>
      <true/>
    </dict>
    </plist>
    EOS
  end
end

