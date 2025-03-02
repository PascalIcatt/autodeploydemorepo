{{- define "autodeploydemoapp.fullname" -}}
{{- printf "%s" .Release.Name -}}
{{- end -}}

{{- define "autodeploydemoapp.webapi.name" -}}
{{- printf "%s-webapi" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}