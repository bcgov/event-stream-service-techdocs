[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](./LICENSE)

# Event Stream Service - Technical Documentation

Technical documentation repository to be hosted in Backstage.
The main code repo these techdocs refer to is: [https://github.com/bcgov/event-stream-service](https://github.com/bcgov/event-stream-service)  

## Technical Details

- Markdown: format for the files in the `/docs` directory
- GitHub Workflow: runs on repository `push` to publish the documentation to Backstage (can be run manually if needed)

> **NOTE**: _Currently_ the GitHub Action deploys to Backstage dev but does not deploy to Backstage prod. This will be changed once the documentation is ready for use by the community. Look for the logic in `production` in the GitHub Workflow.

<!--
## Third-Party Products/Libraries used and the licenses they are covered by
-->
<!--- product/library and path to the LICENSE --->
<!--- Example: <library_name> - [![GitHub](<shield_icon_link>)](<path_to_library_LICENSE>) --->

## Project Status

- [x] Development
- [ ] Production/Maintenance

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

    .github/                   - Workflow to publish documentation on push
    docs/                      - Documentation Root
    catalog-info.yml           - Backstage configuration file
    CODE-OF-CONDUCT.md         - Code of Conduct
    CONTRIBUTING.md            - Contributing Guidelines
    LICENSE                    - License
    mkdocs.yml                 - Documentation definition, including left nav

<!--
## Getting Started
-->
<!--- setup env vars, secrets, instructions... --->

## Deployment (Local Development)

- Developer Workstation Requirements/Setup: TDB - may be able to preview locally before pushing to the repo.
<!--- instruction on Minishift/Docker/Other services.. --->

- Application Specific Setup: TBD
<!--- instruction on setup local environment and dependencies.. --->

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
