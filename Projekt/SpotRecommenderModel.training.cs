﻿// This file was auto-generated by ML.NET Model Builder. 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.ML.Data;
using Microsoft.ML.Trainers;
using Microsoft.ML;

namespace Projekt
{
    public partial class SpotRecommenderModel
    {
        public static ITransformer RetrainPipeline(MLContext context, IDataView trainData)
        {
            var pipeline = BuildPipeline(context);
            var model = pipeline.Fit(trainData);

            return model;
        }

        /// <summary>
        /// build the pipeline that is used from model builder. Use this function to retrain model.
        /// </summary>
        /// <param name="mlContext"></param>
        /// <returns></returns>
        public static IEstimator<ITransformer> BuildPipeline(MLContext mlContext)
        {
            // Data process configuration with pipeline data transformations
            var pipeline = mlContext.Transforms.Categorical.OneHotHashEncoding(new []{new InputOutputColumnPair(@"children", @"children"),new InputOutputColumnPair(@"pets", @"pets")})      
                                    .Append(mlContext.Transforms.Conversion.MapValueToKey(@"customer_id", @"customer_id"))      
                                    .Append(mlContext.Transforms.Conversion.MapValueToKey(@"adults", @"adults"))      
                                    .Append(mlContext.Recommendation().Trainers.MatrixFactorization(approximationRank:128,numberOfIterations:20,learningRate:0.01F,labelColumnName:@"spot_id",matrixColumnIndexColumnName:@"customer_id",matrixRowIndexColumnName:@"adults"));

            return pipeline;
        }
    }
}
