# Common Helm Chart Library

The **common** chart is a Helm library chart that provides shared templates, helper functions, and validations. It is designed to be used as a dependency by other application charts (e.g., MongoDB, Kafka, MyApp) to ensure consistency across deployments.

## Features

- **Shared Templates:**  
  Provides common resource templates for Deployments, Services, Ingress, CronJobs, and more.

- **Helper Functions:**  
  - **Label Standardization:** Automatically generate labels using environment and application metadata.  
  - **Resource Naming:** Create consistent resource names using helper functions like `common.fullname`.  
  - **Validation:** Validate required values before rendering resources via helper functions in `_validation.tpl`.

- **Istio Support:**  
  Includes templates to support Istio resources such as VirtualService, DestinationRule, and RequestAuthentication with options for JWT and mutual TLS (mTLS).

- **Secret Management:**  
  Supports different secret providers (Kubernetes Secrets, Conjur, AWS Secrets Manager) through templated configuration.

## Directory Structure

