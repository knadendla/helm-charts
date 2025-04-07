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

{{- if not .Values.environment.name }}
  {{ fail "Value 'environment.name' is required" }}
{{- end }}


{{- end -}}
