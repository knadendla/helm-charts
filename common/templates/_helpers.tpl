{{/*
Common helper functions for label generation, naming, and more.

Usage: {{ include "common.standardLabels" . }}
*/}}

{{- define "common.standardLabels" -}}
app.kubernetes.io/name: {{ default "unknown-app" .Values.application.cmdb.applicationName | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/component: {{ .Values.application.type | lower | replace "service" "svc" | quote }}
app.kubernetes.io/managed-by: "Helm"
environment: {{ .Values.environment.name | quote }}
cluster-id: {{ .Values.environment.clusterId | quote }}
sdlc-environment: {{ .Values.environment.sdlcEnviroment | quote }}
application-id: {{ .Values.application.cmdb.applicationID | quote }}
{{- end -}}

{{/* Additional helper to create resource names with proper naming convention */}}
{{- define "common.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
