#!/usr/bin/env bash
set -euo pipefail

# Carpeta donde se guardarán las imágenes
OUT_DIR="CSS_advanced/images"
mkdir -p "$OUT_DIR"

# Función para descargar
download(){
  url="$1"
  out="$2"
  echo "Downloading $out ..."
  curl -fL --retry 3 --retry-delay 2 -o "$out" "$url"
  ls -lh "$out"
}

# Reemplaza las URLs abajo por tus enlaces directos
download "TU_LINK_DE_IMAGEN_1" "$OUT_DIR/pic-about-01.jpg"
download "TU_LINK_DE_IMAGEN_2" "$OUT_DIR/pic-work-01.jpg"
download "TU_LINK_DE_IMAGEN_3" "$OUT_DIR/pic-work-02.jpg"
download "TU_LINK_DE_IMAGEN_4" "$OUT_DIR/pic-work-03.jpg"
download "TU_LINK_DE_IMAGEN_5" "$OUT_DIR/pic-article-01.jpg"
download "TU_LINK_DE_IMAGEN_6" "$OUT_DIR/pic-article-02.jpg"
download "TU_LINK_DE_IMAGEN_7" "$OUT_DIR/pic-article-03.jpg"
download "TU_LINK_DE_IMAGEN_8" "$OUT_DIR/pic-person-01.jpg"
download "TU_LINK_DE_IMAGEN_9" "$OUT_DIR/pic-person-02.jpg"
download "TU_LINK_DE_IMAGEN_10" "$OUT_DIR/pic-person-03.jpg"

echo "All done"
