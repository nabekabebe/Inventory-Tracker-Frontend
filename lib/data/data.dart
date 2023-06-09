import 'package:inventory_tracker/presentation/screens/Home/widgets/BarChartWrapper.dart';

List<String> names = [
  "Knee-Hi",
  "Kill shot 2"
      "Air jordan",
  "STRUT",
  "Turn Heads",
  "Catwalk",
  "Stiletto",
  "Solina",
  "Trekist",
  "Air jordan"
];

Map<int, ChartData> annualData = {
  1: ChartData("Jan", 15800),
  2: ChartData("Feb", 6800, true),
  3: ChartData("Mar", 11020),
  4: ChartData("Apr", 30450),
  5: ChartData("May", 10550),
  6: ChartData("Jun", 36050),
  7: ChartData("Jul", 4850),
  8: ChartData("Aug", 13050),
  9: ChartData("Sep", 450),
  10: ChartData("Oct", 30250),
  11: ChartData("Nov", 11500),
  12: ChartData("Dec", 40880),
};

Map<int, ChartData> monthlyData = {
  1: ChartData("01", 1580),
  2: ChartData("02", 680, true),
  3: ChartData("03", 1120),
  4: ChartData("04", 3450),
  5: ChartData("05", 1550),
  6: ChartData("06", 3650),
  7: ChartData("07", 4850),
  8: ChartData("08", 1350),
  9: ChartData("09", 450),
  10: ChartData("10", 3250),
  11: ChartData("11", 1150),
  12: ChartData("12", 4880),
  13: ChartData("13", 1580),
  14: ChartData("14", 680),
  15: ChartData("15", 1120),
  16: ChartData("16", 3450),
  17: ChartData("17", 1550),
  18: ChartData("18", 3650),
  19: ChartData("19", 4850),
  20: ChartData("20", 1350),
  21: ChartData("21", 450),
  22: ChartData("22", 3250),
  23: ChartData("23", 1150),
  24: ChartData("24", 4880),
  25: ChartData("25", 1580),
  26: ChartData("26", 680),
  27: ChartData("27", 1120),
  28: ChartData("28", 3450),
  29: ChartData("29", 1550),
  30: ChartData("30", 3650),
};

Map<int, ChartData> weeklyData = {
  1: ChartData("Mon", 580),
  2: ChartData("Tue", 881, true),
  3: ChartData("Wed", 790),
  4: ChartData("Thu", 1145),
  5: ChartData("Fri", 55),
  6: ChartData("Sat", 350),
  7: ChartData("Sun", 185),
};
