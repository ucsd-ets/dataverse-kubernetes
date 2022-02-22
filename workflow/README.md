1. add `- ../../workflow/k8s` to bases in `/personas/dsmlp/kustomization.yaml`
5. in cm_files replace the dummy files(file1,file2,page) with your actual files.
6. add elements to kustomization.yaml for each file (after line 12)
7. add elements to deployment.yaml (after line 36)
1. go to `cd flask`
8. change FLASK_ENV to `/app/<flask_server_file.py>`
1. add package requirements for your application to requirements.txt
2. run `docker build . -t <username>/<image_name>:<version num>` (username on dockerhub)
3. run `docker push <username>/<image_name>:<version num>`
9. replace `put_your_image_here` in deployment.yaml(line 22) with `<username>/<image_name>:<version num>`
10. go to `/personas/dsmlp`
11. run `kubectl apply -k .`
12. if it has issues, try running `kubectl delete -k .` before `kubectl apply -k .`. This will shut down dataverse so look for other causes of issues first