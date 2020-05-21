#!/bin/bash
sed -n '/<html/,/<\/html>/p' scanout.html.tmp > scanout.html
