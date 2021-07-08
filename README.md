# Docker-Asp.Net-App-.Net-Framework-4.5-
Build Docker with simple asp.net application (target framewrok .net 4.5)

HƯỚNG DẪN BUILD DOCKER 
1.	Target Framework
-	Framework sử dụng là .Net Framework version 4.5
-	Sử dụng image của docker là mcr.microsoft.com/windows/servercore:lts2019
 
 ![image](https://user-images.githubusercontent.com/49808778/124849258-a20ac480-dfc8-11eb-862d-4b24d575743e.png)

Hình 1: Base Image của.NET Framework

2.	Cách build
-	Nguyên tắc hoạt động của docker:
 
 ![image](https://user-images.githubusercontent.com/49808778/124849273-a7680f00-dfc8-11eb-8265-584b83404f47.png)

Hình 2: Nguyên lý hoạt động của Docker

-	Các bước xây dựng (không khuyến khích sử dụng generate docker của Visual studio 2019):

o	Bước 1: Xây dựng dockerfile và .dockerignore

+ Xây dựng cấu trúc cây thư mục: dockerfile và .dockerignore phải đồng cấp với Project.sln
 
 ![image](https://user-images.githubusercontent.com/49808778/124849292-acc55980-dfc8-11eb-9067-c8cc9254c7df.png)

Hình 3: Cây thư mục của Project

+ Nội dung dockerfile:
 
 ![image](https://user-images.githubusercontent.com/49808778/124849330-c23a8380-dfc8-11eb-8488-20e045fcfe1c.png)

Hình 4: Nội dung Dockerfile

+ Nội dung .dockerignore:
 
 ![image](https://user-images.githubusercontent.com/49808778/124849342-c8306480-dfc8-11eb-83fe-e28345dbd678.png)

Hình 5: Nội dung .dockerignore

o	Bước 2: Build docker image dựa trên dockerfile

+ Sau khi xây dựng xong dockerfile và .dockerignore thì chạy lệnh để build docker image (“-t <existing repository” là gắn thẻ docker image build được với repository có sẵn nên có hay không cũng được không bắt buộc):
 
 
 ![image](https://user-images.githubusercontent.com/49808778/124849356-d1213600-dfc8-11eb-88e8-7bb5b7811205.png)

Hình 6: Build docker image

•	Lưu ý: phải có dấu “.” ở cuối lệnh để kết thúc câu lệnh

+ Chạy lệnh sau để kiểm tra xem danh sách các image
 
 ![image](https://user-images.githubusercontent.com/49808778/124849365-d7171700-dfc8-11eb-88e9-d4bae107c64a.png)

Hình 7: Kiểm tra các danh sách docker image

+ Push docker image lên docker hub 
 
•	Ví dụ: docker push quocthang2011/webapplication4
 
 ![image](https://user-images.githubusercontent.com/49808778/124849378-dda58e80-dfc8-11eb-9f27-cd3e498590dd.png)

Hình 8: Push docker image lên repositoy của DockerHub
dockerhubID: 
 
 ![image](https://user-images.githubusercontent.com/49808778/124849385-e1d1ac00-dfc8-11eb-9e2c-07e989ace787.png)

Hình 9: Docker Hub ID (User)
reponame:
 
 ![image](https://user-images.githubusercontent.com/49808778/124849392-e4340600-dfc8-11eb-820b-4ae5a3b15ef1.png)

Hình 10: Repository trên Docker Hub

o	Bước 3: Chạy docker container

+ Pull image mà ta đã push lên Docker Hub (vào máy mà ta muốn chạy docker):
 
 ![image](https://user-images.githubusercontent.com/49808778/124849405-e8f8ba00-dfc8-11eb-87ee-98cfc84a6c1c.png)

Hình 11: Pull image từ Docker Hub

+ Kiểm tra các container đang chạy bằng lệnh: 
  
 ![image](https://user-images.githubusercontent.com/49808778/124849417-eeee9b00-dfc8-11eb-9464-364d8e4eba18.png)

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

