# Image Processing in Matlab
Basic concepts of Image processing with examples in Matlab

# Content
1. Intensity Transformations
2. Image Filtering in the Spatial Domain
3. Edge detection

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