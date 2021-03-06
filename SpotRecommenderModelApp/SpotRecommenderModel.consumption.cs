// This file was auto-generated by ML.NET Model Builder. 
using Microsoft.ML;
using Microsoft.ML.Data;
using System;
using System.Linq;
using System.IO;
using System.Collections.Generic;
namespace SpotRecommenderModelApp
{
    public partial class SpotRecommenderModel
    {
        /// <summary>
        /// model input class for SpotRecommenderModel.
        /// </summary>
        #region model input class
        public class ModelInput
        {
            [ColumnName(@"customer_id")]
            public float Customer_id { get; set; }

            [ColumnName(@"spot_id")]
            public float Spot_id { get; set; }

            [ColumnName(@"adults")]
            public float Adults { get; set; }

            [ColumnName(@"children")]
            public float Children { get; set; }

            [ColumnName(@"pets")]
            public float Pets { get; set; }

        }

        #endregion

        /// <summary>
        /// model output class for SpotRecommenderModel.
        /// </summary>
        #region model output class
        public class ModelOutput
        {
            public float Score { get; set; }
        }
        #endregion

        private static string MLNetModelPath = Path.GetFullPath("SpotRecommenderModel.zip");

        public static readonly Lazy<PredictionEngine<ModelInput, ModelOutput>> PredictEngine = new Lazy<PredictionEngine<ModelInput, ModelOutput>>(() => CreatePredictEngine(), true);

        /// <summary>
        /// Use this method to predict on <see cref="ModelInput"/>.
        /// </summary>
        /// <param name="input">model input.</param>
        /// <returns><seealso cref=" ModelOutput"/></returns>
        public static ModelOutput Predict(ModelInput input)
        {
            var predEngine = PredictEngine.Value;
            return predEngine.Predict(input);
        }

        private static PredictionEngine<ModelInput, ModelOutput> CreatePredictEngine()
        {
            var mlContext = new MLContext();
            ITransformer mlModel = mlContext.Model.Load(MLNetModelPath, out var _);
            return mlContext.Model.CreatePredictionEngine<ModelInput, ModelOutput>(mlModel);
        }
    }
}
