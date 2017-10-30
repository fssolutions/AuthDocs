#!/bin/bash
make html
sphinx-autobuild --ignore ".git/*" . _build
