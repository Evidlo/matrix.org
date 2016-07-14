#!/bin/sh

set -e

cd `dirname $0`
jekyll build
python add_anchors.py _site/guides/faq.html >tmp && mv tmp _site/guides/faq.html
python add_anchors.py _site/projects/try-matrix-now.html >tmp && mv tmp _site/projects/try-matrix-now.html
cp css/docs_overrides.css _site/css
[ -h _site/guides/css ] ||  ln -s ../css _site/guides/