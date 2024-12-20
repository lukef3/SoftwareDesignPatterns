﻿using System.Data;
using ToolSYS.Data;
using ToolSYS.Entities;

namespace ToolSYS.Business.Services
{
    public interface IRateService
    {
        void AddRate(Rate rate);
        void UpdateRate(Rate rate);
        Rate GetRateByCategoryCode(string categoryCode);
        DataSet GetAllCategories();
    }

    public class RateService : IRateService
    {
        private readonly IRateData _rateData;

        public RateService(IRateData rateData)
        {
            _rateData = rateData;
        }

        public void AddRate(Rate rate)
        {
            ValidateRate(rate, isUpdate: false);
            _rateData.AddRate(rate);
        }

        public void UpdateRate(Rate rate)
        {
            ValidateRate(rate, isUpdate: true);
            _rateData.UpdateRate(rate);
        }

        public Rate GetRateByCategoryCode(string categoryCode)
        {
            if (string.IsNullOrEmpty(categoryCode))
                throw new ArgumentException("Category Code is required.");

            return _rateData.GetRateByCategoryCode(categoryCode);
        }

        public DataSet GetAllCategories()
        {
            return _rateData.GetAllCategories();
        }

        private void ValidateRate(Rate rate, bool isUpdate)
        {
            if (string.IsNullOrEmpty(rate.categoryCode) || rate.categoryCode.Length != 2)
                throw new ArgumentException("Category Code must be exactly 2 characters long.");

            if (string.IsNullOrEmpty(rate.categoryDesc) || rate.categoryDesc.Length > 30)
                throw new ArgumentException("Category Description must be between 1 and 30 characters.");

            if (rate.rate <= 0)
                throw new ArgumentException("Rate must be greater than 0.");

            if (!rate.categoryCode.All(char.IsLetter))
                throw new ArgumentException("Category Code must consist of letters only.");

            if (!isUpdate && _rateData.DoesCategoryCodeExist(rate.categoryCode))
                throw new ArgumentException("A category with this code already exists.");
        }
    }
}
