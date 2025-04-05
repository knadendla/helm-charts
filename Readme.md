helm-charts/
│
├── common/                        # Base/library chart with shared templates
│   ├── Chart.yaml
│   ├── values.yaml                # Default values
│   └── templates/
│       ├── _helpers.tpl           # Common helper functions
│       ├── _validation.tpl        # Validation helper functions
│       ├── _statefulset_helpers.tpl # StatefulSet vs Deployment logic
│       ├── configmap.yaml
│       ├── cronjob.yaml
│       ├── deployment.yaml
│       ├── hpa.yaml
│       ├── ingress.yaml
│       ├── istio.yaml
│       ├── request-authentication.yaml  # JWT auth for Istio
│       ├── authorization-policy.yaml    # Enhanced with JWT support
│       ├── pv.yaml
│       ├── pvc.yaml
│       ├── secrets.yaml
│       ├── service.yaml
│       ├── serviceaccount.yaml
│       ├── statefulset.yaml
│       └── certificate.yaml
│
├── mongodb/                       # MongoDB-specific chart
│   ├── Chart.yaml                 # Includes common as dependency
│   ├── values.yaml                # MongoDB-specific values
│   ├── values-with-istio.yaml     # Optional Istio configuration
│   └── README.md
│
├── myapp/                         # Application chart
│   ├── Chart.yaml                 # Includes common as dependency
│   ├── values.yaml                # Application-specific values
│   ├── values-with-istio.yaml     # Optional Istio configuration
│   ├── values-with-jwt.yaml       # Optional JWT configuration
│   └── README.md
│
└── docs/                          # Documentation
    ├── istio-guide.md             # Guide for using Istio
    └── jwt-testing-guide.md       # Guide for testing JWT authentication# helm-charts
