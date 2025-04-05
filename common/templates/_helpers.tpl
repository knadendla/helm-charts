{{/*
Common helper functions for label generation, naming, and more.

Usage: {{ include "common.standardLabels" . }}
*/}}

{{- define "common.standardLabels" -}}
app.kubernetes.io/name: "default-service"
app.kubernetes.io/instance: "{{ .Release.Name }}"
app.kubernetes.io/version: "{{ .Chart.AppVersion }}"
app.kubernetes.io/component: "svc"
app.kubernetes.io/managed-by: "Helm"
environment: "dev"
{{- end -}}

{{/* Additional helper to create resource names with proper naming convention */}}
{{- define "common.fullname" -}}
{{- $name := default .Chart.Name .Values.application.applicationName -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
