{{/*
Validation functions to ensure required values are provided.
Usage: {{ include "common.validation" . }}
*/}}

{{- define "common.validation" -}}
{{- if not .Values.application.cmdb.applicationID }}
  {{ fail "Value 'application.cmdb.applicationID' is required" }}
{{- end }}

{{- if not .Values.application.cmdb.applicationName }}
  {{ fail "Value 'application.cmdb.applicationName' is required" }}
{{- end }}

{{- if not .Values.environment }}
  {{ fail "Value 'environment' is required" }}
{{- end }}

{{- if not .Values.sdlcEnvironment }}
  {{ fail "Value 'sdlcEnvironment' is required" }}
{{- end }}

{{- if not .Values.clusterName }}
  {{ fail "Value 'clusterName' is required" }}
{{- end }}

{{- end -}}
