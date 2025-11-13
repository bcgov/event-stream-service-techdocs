[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](./LICENSE)

# Event Stream Service - Technical Documentation

Technical documentation repository to be hosted in Backstage.
The main code repo these techdocs refer to is: [https://github.com/bcgov/event-stream-service](https://github.com/bcgov/event-stream-service)

## Technical Details

- Markdown: format for the files in the `/docs` directory
- GitHub Workflow: runs on repository `push` to publish the documentation to Backstage (can be run manually if needed)

## Documentation

The documentation files are stored in the `/docs` directory of this repository. It is deployed to:

- Backstage dev: https://dev.developer.gov.bc.ca/docs
- Backstage prod: https://developer.gov.bc.ca/docs [TODO]

<!--
## Security
-->
<!--- Authentication, Authorization, Policies, etc --->

## Files in this repository

<!--- Use Tree to generate the file structure, try `tree -I '<excluded_paths>' -d -L 3`--->

    .devcontainer/             - DevContainer configuration for local development
    .github/                   - Workflow to publish documentation on push
    docs/                      - Documentation Root
    scripts/                   - Utility scripts (link checking, etc.)
    catalog-info.yml           - Backstage configuration file
    CODE-OF-CONDUCT.md         - Code of Conduct
    CONTRIBUTING.md            - Contributing Guidelines
    LICENSE                    - License
    mkdocs.yml                 - Documentation definition, including left nav
    patcher.py                 - Custom MkDocs patcher (referenced in mkdocs.yml)
    requirements.txt           - Python dependencies for additional MkDocs plugins

<!--
## Getting Started
-->
<!--- setup env vars, secrets, instructions... --->

## Deployment (Local Development)

### Developer Workstation Requirements/Setup

This repository includes a DevContainer configuration for local development and testing. You can build and verify the documentation locally before pushing changes.

#### Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running
- [Visual Studio Code](https://code.visualstudio.com/) with the [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

#### Setup Steps

1. **Open in DevContainer:**
   - Open this repository in VS Code
   - Press `F1` and select `Dev Containers: Reopen in Container`
   - Wait for the container to build (first time may take a few minutes)

2. **Build the Documentation:**
   ```bash
   mkdocs build
   ```
   This generates the static site in the `site/` directory.

3. **Serve Locally (with live reload):**
   ```bash
   mkdocs serve --dev-addr=0.0.0.0:8000
   ```
   The documentation will be available at `http://localhost:8000` and will automatically reload when you make changes.

4. **Check for Broken Links:**
   ```bash
   ./scripts/check-links.sh
   ```
   This script builds the docs and validates links using `htmltest`, matching the CI validation tool to ensure consistency.

#### Application Specific Setup

The DevContainer uses the official `spotify/techdocs` Docker image, which includes:
- MkDocs with TechDocs core plugin
- All necessary dependencies for building Backstage TechDocs

Additional plugins and extensions (`ezlinks`, `mkpatcher`) are automatically installed via `requirements.txt` when the container is created. The `htmltest` link validation tool is also installed to match CI validation.

<!--
## Deployment (OpenShift)
-->
<!--- Best to include details in a openshift/README.md --->

## Getting Help or Reporting an Issue

<!--- Example below, modify accordingly --->

To report bugs/issues/feature requests, please file an [issue](../../issues).

## How to Contribute

<!--- Example below, modify accordingly --->

If you would like to contribute, please see our [CONTRIBUTING](./CONTRIBUTING.md) guidelines.

Please note that this project is released with a [Contributor Code of Conduct](./CODE_OF_CONDUCT.md).
By participating in this project you agree to abide by its terms.

## License

<!--- Example below, modify accordingly --->

    Copyright 2018 Province of British Columbia

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
