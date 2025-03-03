{{- define "autodeploydemoapp.cronjob.fullname" -}}
{{- printf "%s-%s" .Release.Name "cronjob" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "autodeploydemoapp.cronjob.appsettings" -}}
{{ toYaml .Values.appsettings | nindent 2 }}
{{- end }}
