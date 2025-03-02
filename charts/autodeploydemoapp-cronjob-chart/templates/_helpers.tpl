{{- define "autodeploydemoapp.cronjob.fullname" -}}
{{- printf "%s-%s" .Release.Name "cronjob" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
