# Predictive Analysis Competition Project

## Overview

This project was part of a predictive analysis competition, where the objective was to predict the popularity rating of songs using various auditory features. The dataset provided contained approximately 20,000 popular songs, each with a variety of features such as track duration, explicitness, key, and tempo.

## Project Goal

The goal of this project was to build a predictive model to estimate the popularity rating of songs. The model was evaluated based on Root Mean Squared Error (RMSE) on a hidden test set. The competition was hosted on Kaggle, and participants were ranked on a leaderboard based on the performance of their models.

## Methodology

### 1. Data Exploration and Preparation

- **Data Cleaning**: Handled missing values and ensured data consistency.
- **Feature Engineering**: Explored different transformations of the variables to improve model performance.
- **Data Splitting**: The data was split into training and test sets using a 70:30 ratio to validate the model performance.

### 2. Model Building and Tuning

- **Model Selection**: Different models such as Linear Regression, Gradient Boosting, and Random Forest were explored.
- **Hyperparameter Tuning**: Models were fine-tuned to improve performance. Grid search and cross-validation techniques were used to find the best parameters.
- **Boosting Model**: The final model was built using a boosting technique from the `gbm` library, which provided the best results in terms of RMSE.

### 3. Evaluation

- **Model Comparison**: Various models were compared based on their RMSE.
- **Error Analysis**: Analyzed the errors to understand where the model performed well and where it struggled.

## Results

- **Final Model**: The final model was a Gradient Boosting model which achieved the lowest RMSE on the test set.
- **Kaggle Submission**: Multiple submissions were made to Kaggle to optimize and refine the model. The final RMSE achieved was [insert RMSE here].

## Challenges and Improvements

- **Challenges**:
  - Handling categorical variables such as performer and genre.
  - Managing data mismatches between training and scoring datasets.
- **Improvements**:
  - Exploring multimodal prediction by incorporating additional dimensions of data.
  - Applying the model to different datasets and industries such as marketing and strategic decision-making.

## Conclusion

This project provided valuable insights into the predictive modeling process, from data exploration to model tuning and evaluation. The model developed has potential applications in real-life scenarios, including marketing campaigns and strategic business decisions.

## Files

- `model13.R`: R script containing the code for data cleaning, model building, and evaluation.
- `PAC Report - Jianfei Shi.txt`: Detailed report on the project, including methodology, results, and reflections.
- `PAC Slide - Jianfei Shi.pptx`: Presentation slide summarizing the project’s successes, challenges, and potential improvements.

## How to Use

1. **Clone the Repository**:
    ```bash
    git clone [repository_url]
    ```
2. **Run the R Script**:
    ```r
    source("model13.R")
    ```
3. **Review the Report**: Open `PAC Report - Jianfei Shi.txt` for a detailed analysis.
4. **View the Presentation**: Open `PAC Slide - Jianfei Shi.pptx` to see a summary of the project.

## Acknowledgements

This project was completed as part of a predictive analysis competition. Special thanks to the course instructors for their guidance and support.
