# Image Processing in Matlab
Basic concepts of Image processing with examples in Matlab

# Content
1. Intensity Transformations
2. Image Filtering in the Spatial Domain
3. Edge detection
4. Image Filtering in frequency domain
5. Image restoration
6. Image segmenation
7. Morphology

# 1. Intensity Transformations

1. histogram.m - Generatate histogram for grayscale image
2. histogram_color_image.m - Generate histogram for color image
3. rgb_histogram.m - Function for generating color image histogram
4. pixel_value_filter.m  - Filtering image by pixel value
5. filter_by_value.m - Detecting background by color
6. pixel_transformation.m - Function for chaging pixel value based on Look-up table (LUT)
7. pixel_lut_exp - Exponentional function aproximated with LUT
8. pixel_lut_log - Log function aproximated with LUT
9. pixel_lut_gama - Power function aproximated with LUT
10. histogram_equalization - Histogram equalization
11. adaptive_histogram - Adaptive histogram equalization
12. rgb_histogram_euqalization.m - Histogram equalization on color images

# 2. Image Filtering in the Spatial Domain

Examples:
1. noise.m - Add noise to the image
2. mean_filter.m - Mean filter in spatial domain
3. median_filter.m - Median filter in spatial domain
4. order_statistic_filtering.m - Order-statistic filtering in spatial domain
5. gaussian_filter.m - Gaussian filtering in spatial domain

# 3. Edge detection

Examples
1. first_order_edge_detection.m - Edge detection using kernel aproximation of first order deviation
2. second_odred_edge_detection.m - Edge detection using kernel aproximation of second order deviation 
3. zero_crossing_edge_detector.m - LoG filter
4. edge_emphasise.m - Emphasasing edges using LoG filter

# 4. Image Filtering in frequency domain
TO implement image filtering in frequnecy domain it is required to follow steps listed below:
1. Read image (imread());
2. Obtain the Fourier transform **F** of the image
3. Generate the filter function **H**, the same size as the image
4. Multiply the transformer image by the filter **G = H .\* F**
5. Optain inverse FFT of the **G** 
6. Scale the output image

Examples
1. fft_image.m - Generate fft for an image.
2. ideal_lp_filter.m - Ideal low pass filter
3. ideal_hp_filter.m - Ideal high pass filter
4. butterworth_lp_filter.m - Butterworth low pass filter
5. butterworth_hp_filter.m - Butterworth high pass filter
6. gauss_lp_filter.m - Gauss low pass filter
7. gauss_hp_filter.m - Gauss high pass filter

# 5. Image restoration

Examplse
1. periodic_noise.m - Add periodic noise to the image
2. filtering_periodic_noise.m - Remove periodic noise using band stop filter
3. inverse_filtering.m - Inverse filtering
4. inverse_filtering_constrained_division.m - Inverse filtering with constrained_division
5. inverse_filtering_lp_filter - Inverse filtering with low pass filter
6. *Add motion debluring*
7. *Add Wiener filtering*

# 6. Image segmenation
1. threshold.m - Segmenation using manual threshold value.
2. histogram_approximation - Approximate histogram with polynomial function
3. otsu.m - Otsu's method 
4. *Add entropy classsification*
5. *Add isodata algorithm*

# 7. Morphology
1. erosion.m - Erosion operation
2. dilatation.m - Dilatation operation
3. opening.m - Opening operation
4. closing.m - Closing operation
5. *hit_or_miss_transformation.m* - Not working like intended
6. opening_by_reconstruction.m