{ buildGoModule
, fetchFromGitHub
, lib
}:

buildGoModule rec {
  pname = "teler";
  version = "1.1.1";

  src = fetchFromGitHub {
    owner = "kitabisa";
    repo = "teler";
    rev = "v${version}";
    sha256 = "sha256-FZG23j7LUwfJ0dSbU4xW0YyCKJxOjVf1uqkuGlrwnqs=";
  };

  vendorSha256 = "sha256-KvUnDInUqFW7FypgsppIBQZKNu6HVsEeHtGwdqYtoys=";

  # test require internet access
  doCheck = false;

  meta = with lib; {
    description = "Real-time HTTP Intrusion Detection";
    longDescription = ''
      teler is an real-time intrusion detection and threat alert
      based on web log that runs in a terminal with resources that
      we collect and provide by the community.
    '';
    homepage = "https://github.com/kitabisa/teler";
    license = licenses.asl20;
    maintainers = with maintainers; [ fab ];
  };
}
