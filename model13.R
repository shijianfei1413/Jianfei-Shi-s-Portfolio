#Read data
songs = read.csv('/Users/sterben/Documents/apan5200/PAC/Competition Data/analysisData.csv')
scoringData = read.csv('/Users/sterben/Documents/apan5200/PAC/Competition Data/scoringData.csv')

#split the data
library(caret)
set.seed(1031)
split = createDataPartition(y = songs$rating, p = 0.7, list = F, groups = 200)
train = songs[split, ]
test = songs[-split, ]

#model
install.packages("gbm")
library(gbm)
set.seed(1031)
boost = gbm(rating ~ id + track_duration + danceability + energy +
              key + loudness + mode + speechiness + acousticness + instrumentalness +
              liveness + valence + tempo + time_signature, data = train, distribution = "gaussian", n.trees = 100,
            interaction.depth = 3, shrinkage = 0.081)
pred13 = predict(boost, newdata = scoringData, n.trees = 100)

#submissions from prediction
submissionFile = data.frame(id = scoringData$id, rating = pred13)
write.csv(submissionFile, 'model13_submission.csv',row.names = F)