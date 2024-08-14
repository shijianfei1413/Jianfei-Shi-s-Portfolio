# Predictive Analysis Competition Project (PAC)

## Overview

This project was part of a Predictive Analysis Competition (PAC) aimed at predicting the popularity rating of songs using auditory features. The dataset provided contained approximately 20,000 popular songs, each with various features such as track duration, explicitness, key, and tempo.

## Goal

The objective was to build a predictive model to estimate the song popularity ratings. The model was evaluated based on Root Mean Squared Error (RMSE) on a hidden test set, with the competition hosted on Kaggle.

## Methodology

### 1. Data Exploration and Preparation

- **Data Cleaning**: 
  - Used `sum(is.na(songs))` from the `dplyr` library to identify and handle missing values.
  - Applied data type transformations for specific variables (e.g., `as.numeric(track_duration)`, `as.factor(mode)`).

- **Feature Selection**:
  - Focused on key predictors such as `track_duration`, `track_explicit`, `key`, and `tempo`.
  - Emphasized selecting variables that could effectively serve as indicators for song ratings.

- **Data Splitting**:
  - Split the data into a 70:30 ratio using the `createDataPartition` function and set the seed to 1031 for reproducibility.

### 2. Model Building and Tuning

- **Model Selection**:
  - Explored multiple models including Linear Regression and Boosting models.
  - The Boosting model (`gbm` library) was chosen for its ability to sequentially grow trees based on previous ones, leading to more accurate predictions.

- **Hyperparameter Tuning**:
  - Tuned model parameters for optimal performance, focusing on reducing the RMSE.

### 3. Evaluation and Results

- **Final Model**:
  - The Boosting model achieved the best performance with the lowest RMSE on the test set.
  - The model's success was attributed to its effective handling of dependent variables and sequential tree-building approach.

- **Challenges**:
  - Difficulty in incorporating categorical variables like `performer` and `genre` into the model without causing mismatches with the scoring dataset.
  - Issues with the `ranger` function leading to unexpected column outputs and difficulties in finding the "rating" variable.

- **Improvements**:
  - Future iterations could benefit from a multimodal prediction approach, integrating more dimensions (e.g., product branding, aesthetics).
  - The model has potential applications in marketing and strategic decision-making, particularly in predicting consumer preferences.

## Deliverables

- **Predictions**: Multiple submissions were made on Kaggle, with continuous improvements leading to the final model.
- **Presentation**: Summarized the project’s successes, challenges, and potential improvements (see `PAC Slide - Jianfei Shi.pptx`).
- **Report**: A detailed report documenting the analysis process, including both successful and unsuccessful modeling attempts (see `PAC Report - Jianfei Shi.txt`).

## Files

- `model13.R`: R script containing the code for data cleaning, model building, and evaluation.
- `PAC Report - Jianfei Shi.txt`: Comprehensive report on the project, including methodology, results, and reflections.
- `PAC Slide - Jianfei Shi.pptx`: Presentation slide summarizing the project's key points.

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

This project was completed under the guidance of David Shilane. The data was curated specifically for the PAC and is intended solely for educational use in this course.
