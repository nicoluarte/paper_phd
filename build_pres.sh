#!/bin/bash
while :
do
  sleep 5
  pandoc presentation.md -t beamer -o presentation.pdf
done

