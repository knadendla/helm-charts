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

{{- end -}}



{{- define "common.appLabels" -}}
app.kubernetes.io/type: {{ .Values.application.type | quote }}
app.kubernetes.io/application-id: {{ .Values.application.cmdb.applicationID | quote }}
app.kubernetes.io/application-name: {{ .Values.application.cmdb.applicationName | quote }}
app.kubernetes.io/application-version: {{ .Values.application.cmdb.applicationVersion | quote }}
{{- end -}}

{{- define "common.environmentLabels" -}}
environment: {{ .Values.environment | quote }}
sdlcEnvironment: {{ .Values.sdlcEnvironment| quote }}
clusterName: {{ .Values.clusterName | quote }}
{{- end -}}

{{- define "common.combinedLabels" -}}
{{ include "common.standardLabels" .}}
{{ include "common.appLabels" . }}
{{ include "common.environmentLabels" . }}
{{- end -}}


{{- define "common.combinedAppLabels" -}}
{{ include "common.appLabels" . }}
{{ include "common.environmentLabels" . }}
{{- end -}}



{{/* Additional helper to create resource names with proper naming convention */}}
{{- define "common.fullname" -}}
{{- $name := default .Chart.Name .Values.application.applicationName -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
