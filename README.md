# Optoelectronic-design
MATLAB was used for programming to grayscale the original image to obtain a calculated aperture
## Purpose of the Competition
1.调校具备激光器、会聚透镜、光纤的光学系统,使得激光光源与光纤的耦合
效率最高,即通过光路调整使得光纤输出的光强最大。   
2.通过探测器采集光纤输出的出射光场分布图像,依据现场抽签确定的能量
占比值(60%～90％间的某个值),测量计算出该能量占比时的光场出射角度。
## Optical path diagram
![image](https://github.com/DavidJhon2020/Optoelectronic-design/assets/74477314/721daf0c-6073-4db5-aa31-1f6be9cbc6b6)
## Main content and performance
1.读取test图像，将其灰度化，再二值化，得到二值分割图  
2.进行圆检测，对连通域求半径和边缘  
3.最后对灰度图进行掩膜，求取能量
4.使用由组委会提供的包含点状激光器、显微物镜、光纤(两端接头均为FC接口）、Cmos。激光器、显微物镜、光纤接头均含调整架机构进行光路搭建  
5.得出最后的出射角度
## Competition certificate
![星火](https://github.com/DavidJhon2020/Optoelectronic-design/assets/74477314/5fe15086-dbd2-4cf9-ae59-c9852620e884)
