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

<img src="https://latex.codecogs.com/gif.latex?\ell^*&space;=&space;\ell&space;-&space;\langle&space;\ell&space;\rangle" title="\ell^* = \ell - \langle \ell \rangle" />

<img src="https://latex.codecogs.com/gif.latex?\alpha^*&space;=&space;\alpha&space;-&space;\langle&space;\alpha&space;\rangle" title="\alpha^* = \alpha - \langle \alpha \rangle" />

<img src="https://latex.codecogs.com/gif.latex?\beta^*&space;=&space;\beta&space;-&space;\langle&space;\beta&space;\rangle" title="\beta^* = \beta - \langle \beta \rangle" />

Then, we scale the data points comprising the synthetic image by factors determined by the respective standard deviations:

<img src="https://latex.codecogs.com/gif.latex?\large&space;\ell^{'}&space;=&space;\frac{\sigma^{\ell}_t}{\sigma^{\ell}_s}\ell^*" title="\large \ell^{'} = \frac{\sigma^l_t}{\sigma^l_s}\ell^*" />

<img src="https://latex.codecogs.com/gif.latex?\large&space;\alpha^{'}&space;=&space;\frac{\sigma^{\alpha}_t}{\sigma^{\alpha}_s}\alpha^*" title="\large \alpha^{'} = \frac{\sigma^{\alpha}_t}{\sigma^{\alpha}_s}\alpha^*" />

<img src="https://latex.codecogs.com/gif.latex?\large&space;\beta^{'}&space;=&space;\frac{\sigma^{\beta}_t}{\sigma^{\beta}_s}\beta^*" title="\large \beta^{'} = \frac{\sigma^{\beta}_t}{\sigma^{\beta}_s}\beta^*" />

Finally, we convert the result back to **RGB**.
### Results
---
![alt result](color_transfer_result.jpg)

### Usage
---
This code is written in **MATLAB**. Change the source and target image in source and target variable respectively in the 3<sup>rd</sup> and 4<sup>th</sup> line of ***color_transfer_built.m*** file.

