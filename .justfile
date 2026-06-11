version := "0.1.1"
TYPST_ROOT := env('PWD')
TYPST_FONT_PATHS := env('PWD') / "template" / "fonts"
INSTALL_PATH := env('HOME') / "Library" / "Application Support" / "typst" / "packages" / "preview" / "kdl-unofficial-template" / version

[working-directory:  "./template/main/"]
default:
  pwd
  typst compile main.typ --font-path {{TYPST_FONT_PATHS}} --root {{TYPST_ROOT}}

cleanup:
  rm -rf "{{INSTALL_PATH}}"

cd:
  cd {{INSTALL_PATH}}

install:
  mkdir -p "{{INSTALL_PATH}}"
  cp -R * "{{INSTALL_PATH}}"
