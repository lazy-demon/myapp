{ pkgs, ... }: {
  channel = "stable-23.11"; # "stable-23.11" or "unstable"
  packages = [
    pkgs.flutter
    pkgs.jdk17
    pkgs.docker
  ];
  services.docker.enable = true;
  idx.extensions = [ ];
  idx.workspace.onStart = {
    compose = "cd slash_server && docker compose up --build --detach";
  };

  idx.previews = {
    enable = true;
    previews = [
      # {
      #   cwd = "slash_server";
      #   command = [ "dart" "bin/main.dart" "--apply-migrations" ];
      #   id = "web";
      #   manager = "web";
      # }
      # {
      #     command = ["cd" "slash_flutter" "&&" "flutter" "run" "--machine" "-d" "web-server" "--web-hostname" "0.0.0.0" "--web-port" "$PORT"];
      #     id = "web";
      #     manager = "flutter";
      # }
      # {
      #     command = ["flutter" "run" "--machine" "-d" "android" "-d" "localhost:5555"];
      #     id = "android";
      #     manager = "flutter";
      # }
      # {
      #     id = "ios";
      #     manager = "ios";
      # }
    ];
  };
}
