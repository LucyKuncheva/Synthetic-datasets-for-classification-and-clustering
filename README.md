# Synthetic datasets for classification and clustering

This repository contains MATLAB code for generating 2D and 3D synthetic/toy/artificial datasets. The datasets have been previously used in various publications, mostly for rapid testing of classification and clustering methods. A sample of the datasets is also provided (`GeneratedData.zip`)

In addition, we provide an interactive tool for generating a 2D dataset manually (`ManualDataCreation.m`).

## Contents

Currently there are 52 datasets: 47 two-dimensional sets and 5 three-dimensional sets. 

- _Names._ The datasets are named either as the version in the respective publication (if given) or based on the appearance. Since it is nearly impossible to trace the publication where a given dataset, or a similar one, appears for the first time, we are not providing reference sources. The only exception is [1], from which we sourced two vintage datasets (aggregation and gestalt). 

- _Number of points._ Some of the datasets have integer coordinates, which means that they lie on a 2D grid. Since the number of points of these datasets cannot be changed, these datasets are termed **fixed**. For the rest of the datasets, the number of points is a variable _L_, which can be modified in the script generating the data, `TesterData.m`. The sample datasets were generated with _L_ = 500.

- _Class proportions._
The class proportions have been determined to keep original appearance of the dataset, unless a detailed description was provided in one of the sources. Where not specified, we opted for equal proportions.

- _Code._ The code is a stand-alone MATLAB library for generating all 52 datasets. It consists of 11 functions and a script (`TesterData.m`). The dependency tree is shown below.

<img height="350" src="Dependencies.png" />

The script needs the two text files in folder DataFromLiterature: 
`Aggregartion_Safraz19.txt` and `GestaltClusters_Safraz19.txt`,
which were reproduced from [1].



## Deatasets

<img height="200" src="aggregation.png" /><img height="200" src="aligned_bananas.png" /><img height="200" src="arcs.png" /><img height="200" src="balls_and_baguettes.png" /><img height="200" src="bars.png" /><img height="200" src="boat.png" /><img height="200" src="cigar.png" /><img height="200" src="circle_2_rectangles.png" /><img height="200" src="circle_and_3_gaussians.png" /><img height="200" src="concentric_circles_3.png" /><img height="200" src="enclosure.png" /><img height="200" src="filled_circle.png" /><img height="200" src="filled_circle_2.png" /><img height="200" src="flower.png" /><img height="200" src="four_corners_clear.png" /><img height="200" src="four_corners_noise.png" /><img height="200" src="four_lines.png" /><img height="200" src="gaussians_1_big_2_small.png" /><img height="200" src="gaussians_3_touching.png" /><img height="200" src="gaussians_5_compact.png" /><img height="200" src="gaussians_5_unequal.png" /><img height="200" src="gestalt.png" /><img height="200" src="half_rings.png" /><img height="200" src="happy_wave.png" /><img height="200" src="orange.png" /><img height="200" src="petals.png" /><img height="200" src="random1.png" /><img height="200" src="random2.png" /><img height="200" src="random3.png" /><img height="200" src="randomised_normal.png" /><img height="200" src="randomised_triangle.png" /><img height="200" src="saturn.png" /><img height="200" src="sixteen_blocks.png" /><img height="200" src="spirals.png" /><img height="200" src="stormclouds.png" /><img height="200" src="t_and_u.png" /><img height="200" src="ten_spherical.png" /><img height="200" src="three_by_three.png" /><img height="200" src="three_circles.png" /><img height="200" src="two_diamonds.png" /><img height="200" src="two_u.png" /><img height="200" src="wingnut.png" /><img height="200" src="worms.png" /><img height="200" src="xor.png" /><img height="200" src="xor_big_and_small.png" /><img height="200" src="xor_different_cardinalities.png" /><img height="200" src="yin_yang.png" /><img height="200" src="atom.png" /><img height="200" src="chainlink.png" /><img height="200" src="hepta.png" /><img height="200" src="tetra.png" /><img height="200" src="torus_and_rod.png" />



## References

[[1]. Sarfraz, S., Sharma, V., & Stiefelhagen, R. (2019). Efficient parameter-free clustering using first neighbor relations. In Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition (pp. 8934-8943).] (https://openaccess.thecvf.com/content_CVPR_2019/papers/Sarfraz_Efficient_Parameter-Free_Clustering_Using_First_Neighbor_Relations_CVPR_2019_paper.pdf)

