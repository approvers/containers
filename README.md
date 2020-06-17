# containers
![Deployer](https://github.com/approvers/containers/workflows/Deployer/badge.svg)  
Docker / Podman containers hosted on the shared server.

## Usage
1. Clone & Create a new branch.
1. Create a directory with your project's name.
1. Place your `docker-compose.yml` into the directory.
1. Create a pull request and wait for the review.

### Using secrets as environment variables
1. Define `[directory]` the name of the directory that you placed docker-compose.yml into.
1. Define `[DIRECTORY]` the `[directory]` that is converted to uppercase characters.
1. Ensure the name of the environment variable is `[DIRECTORY]_FOO_BAR`.
1. Add the variable as a [secret](https://github.com/approvers/containers/settings/secrets) .
1. Add it to `jobs.steps[1].env` in `.github/workflows/deployer.yml` .
1. Use in `docker-compose.yml` .
