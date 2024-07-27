{{/* 
Defining Common labels 
*/}}
{{- define "commonLabels" -}}
application: webserver
managed-by: sre
{{- end -}}

{{/* 
Defining images volume 
*/}}
{{- define "imageVolume" -}}
volumes:
  - name: image-vol
    configMap:
    name: image-config
    items:
      - key: image_level
        path: image_level
{{- end -}}