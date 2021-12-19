# MPG_Analysis
## Linear Regression to Predict MPG
Ground clearance and Vehicle Length are the most likely to provide a nonrandom amount of variance because the t value is greater than 5 and significantly higher than the rest. The most likely random value is AWD because it’s the only amount that is negative.
The slope of the linear model is not zero because the p-value for the entire dataset is so low. 
The linear model isn’t perfect at predicting prototypes because the r value is 0.71, meaning that over half of the dataset will fit the model we have created. I would strongly consider reevaluating the dataset to find a way to improve the model prior to implementing a mass production of certain vehicles. 
 ![image](https://user-images.githubusercontent.com/89363928/146662069-096d4848-4e60-4928-bc09-b32de97048ab.png)


## Summary Statistics on Suspension Coils
The design specifications for the suspension coils state that the variance of the coils must not exceed 100 pounds per square inch. For all the data points in the first ‘total_summary’ section the PSI is within range. In the ‘lot summary’ Lots 1 & 2 are also within range; however, Lot 3 has a PSI at 170 which greatly exceeds the design specifications. Lot 3 is also skewing the entire data set because the PSI variance is significantly larger than Lot 1 & 2.

![image](https://user-images.githubusercontent.com/89363928/146662076-e7f73bd2-aaa5-40c1-86a7-0a9e2a88a92d.png)
![image](https://user-images.githubusercontent.com/89363928/146662078-c1a78252-efd9-4e7d-ac88-333c7bfa4975.png)

 

## T-Tests on Suspension Coils
The mean of the entire sample is only 1498.78 so we cannot reject the hypothesis that the sample is based on random chance. 
 ![image](https://user-images.githubusercontent.com/89363928/146662081-d3d74f6e-5e5a-4e80-84a4-b3a8d0a72b39.png)

For lot one and lot two we cannot reject the null hypothesis since the pvalues compared to the mean of the samples do not provide a large enough gap in significance levels. For lot three, there seems to be a larger gap leading us to reject the null hypothesis.
![image](https://user-images.githubusercontent.com/89363928/146662082-ab4c7805-7b05-407e-b9bf-c13c00e1e8b4.png)


## Study Design: MechaCar vs Competition
Depending on the demographic this company is targeting I would have to say that crash test ratings are not only important to the consumer but important to the producer as well. The result of fatal crashes due to poor design is almost impossible to quantify because not only would it damage sales but long-term reputation of the manufacturer.
	I would test the crash test ratings against the NHTSA’s guidelines to make sure that not only do we meet their standards but hopefully we can exceed their standards as well. For example, if the guideline requires the minimum value to be 3.5, see if the producer can meet a 4.0 rating and then compare that to other manufacturers as well. Data for the last two to five years should be collected. 
	Null Hypothesis – high crash test ratings (greater than 4) lead to more sales
	Alternative – crash test ratings do not affect sales volumes
	I would review the bell curve of the data to see if there is a normal distribution in the data set. There should be no extreme values on either side creating a skew since the crash test ratings only go from zero to five. I would then select a sample of data a run a linear regression model to determine if there is a positive correlation between the data points. I would also complete a t-test to see if the p-value and significance level have a large discrepancy prior to rejecting one of the options above.

