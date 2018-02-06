# Color Transfer Between Images

This project is the implementation of the paper [_Color Transfer
between Images_](http://www.cs.utah.edu/~shirley/papers/ColorTransfer.pdf) by Erik Reinhard, Michael Ashikhmin, Bruce Gooch and Peter Shirley.
### Concept
----------------------------
One of the most common tasks in image processing is to alter an image’s color. This paper describes a method for a more general form of color correction that borrows one image’s color characteristics from another.

### Algorithm
---

The procedure is as follows:
#### Conversion from RGB to ℓαβ color space.
Convert RGB color space to **ℓαβ** color space beacause of its **decorrelataion** between channels. The ℓ axis represents an achromatic channel, while the α and β channels are chromatic yellow–blue and red–green opponent channels. 

#### Statistics and color correction
First, we subtract the **mean** from the data points on each channel respectively:

![image](http://www.sciweavers.org/tex2img.php?eq=%24%5Cell%5E%2A%20%3D%20%5Cell%20-%20%5Clangle%20%5Cell%20%5Crangle%5C%5C%0A%5Calpha%5E%2A%20%3D%20%5Calpha%20-%20%5Clangle%20%5Calpha%20%5Crangle%5C%5C%20%5C%5C%0A%5Cbeta%5E%2A%20%3D%20%5Cbeta%20-%20%5Clangle%20%5Cbeta%20%5Crangle%5C%5C&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=0)

Then, we scale the data points comprising the synthetic image by factors determined by the respective standard deviations:


![img](http://www.sciweavers.org/tex2img.php?eq=%5Cell%5E%7B%27%7D%3D%5Cfrac%7B%5Csigma_t%5E%7B%5Cell%7D%7D%7B%5Csigma_s%5E%7B%5Cell%7D%7D%5Cell%5E%2A%5C%5C%20%5C%5C%20%5C%5C%0A%5Calpha%5E%7B%27%7D%3D%5Cfrac%7B%5Csigma_t%5E%7B%5Calpha%7D%7D%7B%5Csigma_s%5E%7B%5Calpha%7D%7D%5Calpha%5E%2A%5C%5C%20%5C%5C%20%5C%5C%0A%5Cbeta%5E%7B%27%7D%3D%5Cfrac%7B%5Csigma_t%5E%7B%5Cbeta%7D%7D%7B%5Csigma_s%5E%7B%5Cbeta%7D%7D%5Cbeta%5E2A&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=0)

 Finally, we convert the result back to **RGB**.
 
#### Results
---
![alt result](color_transfer_result.jpg)

#### Usage
---
This code is written in **MATLAB**. Change the source and target image in source and target variable respectively in the 3<sup>rd</sup> and 4<sup>th</sup> line of ***color_transfer_built.m*** file.

