# Docker-Asp.Net-App-.Net-Framework-4.5-
Build Docker with simple asp.net application (target framewrok .net 4.5)

HƯỚNG DẪN BUILD DOCKER 
1.	Target Framework
-	Framework sử dụng là .Net Framework version 4.5
-	Sử dụng image của docker là mcr.microsoft.com/windows/servercore:lts2019
 
 
Hình 1: Base Image của.NET Framework

2.	Cách build
-	Nguyên tắc hoạt động của docker:
 
Hình 2: Nguyên lý hoạt động của Docker

-	Các bước xây dựng (không khuyến khích sử dụng generate docker của Visual studio 2019):

o	Bước 1: Xây dựng dockerfile và .dockerignore

+ Xây dựng cấu trúc cây thư mục: dockerfile và .dockerignore phải đồng cấp với Project.sln
 
Hình 3: Cây thư mục của Project

+ Nội dung dockerfile:
 
Hình 4: Nội dung Dockerfile

+ Nội dung .dockerignore:
 
Hình 5: Nội dung .dockerignore

o	Bước 2: Build docker image dựa trên dockerfile

+ Sau khi xây dựng xong dockerfile và .dockerignore thì chạy lệnh để build docker image (“-t <existing repository” là gắn thẻ docker image build được với repository có sẵn nên có hay không cũng được không bắt buộc):
 
 
Hình 6: Build docker image

•	Lưu ý: phải có dấu “.” ở cuối lệnh để kết thúc câu lệnh

+ Chạy lệnh sau để kiểm tra xem danh sách các image
 
 
Hình 7: Kiểm tra các danh sách docker image

+ Push docker image lên docker hub 
 
•	Ví dụ: docker push quocthang2011/webapplication4
 
Hình 8: Push docker image lên repositoy của DockerHub
dockerhubID: 
 
Hình 9: Docker Hub ID (User)
reponame:
 
Hình 10: Repository trên Docker Hub

o	Bước 3: Chạy docker container

+ Pull image mà ta đã push lên Docker Hub (vào máy mà ta muốn chạy docker):
 
 
Hình 11: Pull image từ Docker Hub

+ Kiểm tra các container đang chạy bằng lệnh: 
  
 
Hình 12: Kiểm tra danh sách các container đang chạy

+ Chạy lệnh run để chạy container (chạy trên localhost):
 
•	--rm: sẽ remove đi những container tương tự tồn tại 

•	-p: publish port của container lên máy chủ

•	quocthang2011/webapplication: tên của image
 
3.	Triển khai Docker trên Google Cloud Platform
Cập nhật sau…..
4.	Triển khai Docker Cluster trên Kubernetes Cluster
Cập nhật sau…..
 
	REFERENCES
1.	https://github.com/microsoft/dotnet-framework-docker/
2.	https://blog.sixeyed.com/understanding-microsofts-docker-images-for-net-apps/
3.	https://docs.docker.com/engine/reference/run/

