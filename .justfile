TYPST_ROOT := "$PWD"
TYPST_FONT_PATHS := "$TYPST_ROOT/template/fonts"
INSTALL_PATH := "${HOME}" / "Library" / "Application Support" / "typst" / "packages" / "preview" / "kdl-unofficial-template" / "0.1.0"

[working-directory:  "template"]
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
