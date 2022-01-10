{{- define "dataverse-chart.ingress.labels" -}}
app.kubernetes.io/name: ingress
app.kubernetes.io/version: "1.1"
app.kubernetes.io/component: ingress
app.kubernetes.io/part-of: dataverse
app.kubernetes.io/managed-by: kubectl
{{- end }}

{{- define "dataverse-chart.namespace.labels" -}}
openpolicyagent.org/webhook: ignore
{{- end }}