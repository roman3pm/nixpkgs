{
  lib,
  dash,
  editorconfig,
  fetchFromGitHub,
  nodejs,
  s,
  melpaBuild,
}:
melpaBuild {
  pname = "copilot";
  version = "0-unstable-2023-12-26";

  src = fetchFromGitHub {
    owner = "zerolfx";
    repo = "copilot.el";
    rev = "d4fa14cea818e041b4a536c5052cf6d28c7223d7";
    sha256 = "sha256-Tzs0Dawqa+OD0RSsf66ORbH6MdBp7BMXX7z+5UuNwq4=";
  };

  files = ''(:defaults "dist")'';

  packageRequires = [
    dash
    editorconfig
    s
  ];

  propagatedUserEnvPkgs = [ nodejs ];

  meta = {
    description = "Unofficial copilot plugin for Emacs";
    homepage = "https://github.com/zerolfx/copilot.el";
    license = lib.licenses.mit;
    platforms = [
      "x86_64-darwin"
      "x86_64-linux"
      "x86_64-windows"
    ];
  };
}
