# Project Setup

Run scripts to quicken the DDev and Platform.sh setup with minimal configuations
for a standard Drupal project.

## Instructions

Run the shell scripts in this sequence to bootstrap the project, do not forget
to make sure the execute permission is set on the shell files. These files
are best ran from the project root directory.

1. Create a project in Platform.sh's user interface, and retrieve the project
id that it assigns.
2. Paste the project id into the platformsh-setup.config.yml file, where youy
see "PASTE PROJECT ID HERE" and keep the double quotes.
3. $ ./scripts/bash/ddev-setup.sh
4. $ ./scripts/bash/platformsh-setup.sh
