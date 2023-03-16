#!/bin/bash
# Set the directory containing the images
IMAGES_DIR="/mnt/c/Users/mirsad.mehanovic.GRM/Documents/MentorshipProgram/week-3/script_execution_evidence/chapter-16/"

# Loop through all the images in the directory
for image in $IMAGES_DIR/*.png; do
  # Get the filename without the extension
  filename=$(basename "$image" .png)
  # Get the filename without the chapter prefix, eq c13, c14, c15, c16
  alt_text=${filename:3}
  # Generate the Markdown code for the image with title for the each image and alt text
  title=${alt_text^}
  echo $title
  echo "![$alt_text](script_execution_evidence/chapter-16/$filename.png)"
  echo
done