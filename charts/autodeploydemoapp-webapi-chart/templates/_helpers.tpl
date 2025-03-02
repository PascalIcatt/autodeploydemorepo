{{- define "autodeploydemoapp.webapi.fullname" -}}
{{- printf "%s-%s" .Release.Name "webapi" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "autodeploydemoapp.webapi.name" -}}
{{- printf "%s-webapi" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}