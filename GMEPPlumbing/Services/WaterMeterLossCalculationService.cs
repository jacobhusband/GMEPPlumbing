﻿using System;
using System.Linq;
using System.Text;

namespace GMEPPlumbing.Services
{
  public class WaterMeterLossCalculationService
  {
    private static readonly double[] WaterMeterBreakPoints = { 1, 1.5, 2, 3, 4, 6, 8, 10 };

    private static readonly double[] FlowGPMBreakPoints = {
            30, 35, 40, 45, 50, 56, 60, 65, 70, 75, 80, 85, 90, 96, 100, 110, 120, 130,
            140, 150, 160, 170, 180, 190, 200, 210, 220, 230, 240, 250, 260, 270, 280, 290, 300,
            310, 320, 330, 340, 360, 380, 400, 420, 440, 460, 480, 500, 550, 600,
            650, 700, 900, 1200, 1500, 2000, 2500
        };

    private static readonly double[,] PressureLossTable = {
            { 3.0, 0.9, 0.3, 0.0, 0.0, 0.0, 0.0, 0.0 },
            { 4.2, 1.3, 0.4, 0.2, 3.9, 2.4, 0.0, 0.0 },
            { 5.5, 1.7, 0.6, 0.3, 3.8, 2.5, 0.0, 0.0 },
            { 7.0, 2.3, 0.8, 0.3, 3.7, 2.6, 0.0, 0.0 },
            { 8.8, 2.8, 1.0, 0.4, 3.6, 2.7, 0.0, 0.0 },
            { 11.2, 3.6, 1.2, 0.5, 3.6, 2.8, 0.0, 0.0 },
            { 0.0, 4.2, 1.4, 0.6, 3.5, 2.9, 0.0, 0.0 },
            { 0.0, 5.0, 1.7, 0.7, 3.4, 3.0, 0.0, 0.0 },
            { 0.0, 6.0, 2.0, 0.8, 3.3, 3.1, 0.0, 0.0 },
            { 0.0, 6.8, 2.3, 0.9, 3.3, 3.2, 0.0, 0.0 },
            { 0.0, 8.0, 2.6, 1.0, 3.2, 3.2, 0.0, 0.0 },
            { 0.0, 9.0, 3.0, 1.2, 3.2, 3.3, 0.0, 0.0 },
            { 0.0, 10.0, 3.4, 1.3, 3.1, 3.4, 0.0, 0.0 },
            { 0.0, 11.5, 3.8, 1.4, 3.0, 3.4, 0.0, 0.0 },
            { 0.0, 12.7, 4.2, 1.4, 3.0, 3.5, 0.0, 0.0 },
            { 0.0, 0.0, 5.3, 1.7, 3.0, 3.6, 0.0, 0.0 },
            { 0.0, 0.0, 6.4, 2.0, 3.0, 3.6, 0.0, 0.0 },
            { 0.0, 0.0, 7.6, 2.3, 3.0, 3.7, 0.0, 0.0 },
            { 0.0, 0.0, 8.9, 2.6, 3.1, 3.7, 0.0, 0.0 },
            { 0.0, 0.0, 10.2, 3.0, 3.1, 3.7, 0.0, 0.0 },
            { 0.0, 0.0, 11.7, 3.3, 3.1, 3.7, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 3.6, 3.2, 3.8, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 3.8, 3.2, 3.8, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 4.3, 3.3, 3.8, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 4.8, 3.3, 3.8, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 5.4, 3.6, 3.8, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 6.0, 3.8, 3.7, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 4.1, 3.7, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 4.4, 3.7, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 4.6, 3.6, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 4.9, 3.6, 2.7, 2.2 },
            { 0.0, 0.0, 0.0, 0.0, 5.2, 3.5, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 5.4, 3.5, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 5.7, 3.4, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 6.0, 3.4, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 6.6, 3.2, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 7.2, 3.1, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 7.8, 3.0, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 7.8, 3.1, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 7.8, 3.0, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 8.5, 2.9, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 9.1, 2.8, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 0.0, 2.7, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 0.0, 2.8, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 0.0, 2.9, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 0.0, 3.2, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 0.0, 3.5, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 0.0, 4.3, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 0.0, 4.9, 3.2, 2.5 },
            { 0.0, 0.0, 0.0, 0.0, 0.0, 5.8, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 0.0, 6.7, 0.0, 0.0 },
            { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.5, 2.8 },
            { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.7, 2.9 },
            { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 3.0 },
            { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.3 },
            { 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.6 }
        };

    public (double? PressureLoss, string Message) CalculateWaterMeterLoss(double waterMeterSizeInch, double flowGPM)
    {
      int sizeIndex = Array.FindIndex(WaterMeterBreakPoints, x => x >= waterMeterSizeInch);
      int flowIndex = Array.FindIndex(FlowGPMBreakPoints, x => x >= flowGPM);

      if (sizeIndex == -1 || flowIndex == -1 || flowGPM > 2500)
      {
        return (null, "Input values are out of the acceptable range.");
      }

      double pressureLoss = PressureLossTable[flowIndex, sizeIndex];

      if (pressureLoss == 0.0)
      {
        string suitableSizes = GetSuitableMeterSizes(flowIndex);
        return (null, $"The current meter size is not suitable for this flow rate. Suitable meter sizes for {FlowGPMBreakPoints[flowIndex]} GPM: {suitableSizes} inches");
      }

      return (pressureLoss, "Calculation successful.");
    }

    private string GetSuitableMeterSizes(int flowIndex)
    {
      StringBuilder suitableSizes = new StringBuilder();
      for (int i = 0; i < WaterMeterBreakPoints.Length; i++)
      {
        if (PressureLossTable[flowIndex, i] > 0.0)
        {
          suitableSizes.Append(WaterMeterBreakPoints[i]).Append(", ");
        }
      }
      return suitableSizes.Length > 0 ? suitableSizes.ToString().TrimEnd(',', ' ') : "No suitable sizes found";
    }
  }
}