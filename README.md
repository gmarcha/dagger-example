# dagger-example

A simple example to use dagger.

## Requirements

- `make`[^1],
- `go`[^2] (>= 1.20).

## Usage

- Run CI in a Docker container locally with command contained in `Makefile`,
- Run CI in a Kubernetes cluster with a job scheduler,
- Run CI in a cloud-hosted environment with [Github Actions](https://docs.dagger.io/145912/ci#github-actions), [Gitlab CI](https://docs.dagger.io/145912/ci#gitlab-ci) or [Circle CI](https://docs.dagger.io/145912/ci#circleci).

## Goals

Dagger is a "programmable CI/CD engine that runs your pipelines in containers"[^3]. This tool allows developers to write CI pipelines directly using the Go, Javascript or Python programming languages. This capability is achieved through the interaction of the dagger-engine with [buildkit](https://github.com/moby/buildkit) under the hood.

Dagger offers an interesting alternative approach to build [OCI](https://github.com/opencontainers/image-spec) container images, distinct from the traditional build method based on a Dockerfile. Each image layer is build programmatically, allowing for fine-grained control over the build process. Furthermore, Dagger constructs an internal dependency graph to execute steps in parallel whenever possible.

This design enables running pipelines locally for developement or testing purposes. Other CI tools typically require running pipelines within their platform, often providing limited local debugging capabilities.

## Documentation

- Dagger [documentation](https://docs.dagger.io/).
- Dagger [quickstart](https://docs.dagger.io/quickstart).
- Dagger [Go SDK](https://docs.dagger.io/sdk/go/959738/get-started).
- Dagger [multi-build](https://docs.dagger.io/sdk/go/959738/get-started#step-5-create-a-multi-build-pipeline)

## Author

[@gmarcha](https://github.com/gmarcha)

## License

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

[^1]: use `sudo apt install make`, `sudo dnf install make`, or build from [source](https://ftp.gnu.org/gnu/make/) for non-managed distros.
[^2]: see [instructions](https://go.dev/doc/install) from offical documentation.
[^3]: see [presentation](https://docs.dagger.io/) from official documentation.
