{{/*
Helper functions for managing StatefulSet versus Deployment logic.
Usage:
  - To select the workload type: {{ include "common.workload" . }}
  - To append a workload-specific suffix to resource names: {{ include "common.resourceSuffix" . }}
*/}}

{{- define "common.workload" -}}
{{- if .Values.statefulset.enabled -}}
statefulset
{{- else -}}
deployment
{{- end -}}
{{- end -}}

{{- define "common.resourceSuffix" -}}
{{- if .Values.statefulset.enabled -}}
-ss
{{- else -}}
-dp
{{- end -}}
{{- end -}}
