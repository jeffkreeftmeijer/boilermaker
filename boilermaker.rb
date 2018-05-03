class Boilermaker < Formula
  desc "🥃🍺 Elixir app packaged with Distillery and installed with Homebrew"
  homepage "https://github.com/jeffkreeftmeijer/boilermaker"
  url "https://github.com/jeffkreeftmeijer/boilermaker/archive/0.1.0.tar.gz"
  sha256 "91ede75ead8637b0f00c2a04a28441787a357f3e66ba37078b8b39118dbb8254"

  depends_on "erlang" => :build
  depends_on "elixir" => :build

  def install
    system "mix local.hex --force"
    system "mix deps.get"
    system "MIX_ENV=prod mix release --executable"

    bin.install "_build/prod/rel/boilermaker/bin/boilermaker.run" => "boilermaker"
  end

  test do
    system "boilermaker"
  end
end
