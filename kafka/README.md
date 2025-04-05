# Kafka Helm Chart

This chart deploys a simple Kafka instance using a Deployment and Service. It consumes the common library chart for shared templates, label generation, and validations.

## Prerequisites

- Kubernetes cluster
- Helm 3.x

## Installation

```bash
helm dependency update ./kafka
helm install kafka ./kafka
