#!/bin/bash
rm -r _build
sphinx-autobuild --ignore ".git/*" . _build
