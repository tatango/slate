## Public API Documentation

This project contains all documentation for the Public API. You can find the documentation at [developers.tatango.com](https://developers.tatango.com).

## Making Changes to the Documentation

All documentation is centralized in `source/index.html.md`. Please make changes only to this file within the project.

## Deploying Changes

To deploy your changes to `developers.tatango.com`, ensure Docker is installed on your machine.

### Building the Slate Image

Build the Slate Docker image with the following command:

```bash
docker build -t slate .
```

### Deploying

To deploy the changes, use your SSH configuration. We use GitHub for deployment:

```bash
docker run -v /path/to/your/.ssh:/root/.ssh:ro slate
```

## Disclaimer

⚠️ **Warning:** Always open a Pull Request (PR) to the `master` branch! Ensure you change the base branch to `tatango/slate`. Otherwise, you might accidentally make changes to the original repository instead of our fork.
