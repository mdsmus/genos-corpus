#!/bin/sh

lilypond --ps $1.ly && gv $1.ps
