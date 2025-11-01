#read CSV file
WorldFert <- read.csv("FertilizerConsumption_FilteredData.csv", header=TRUE, sep=",")
head(WorldFert)

Countries <- c("Austria", "Germany", "France", "Poland", "SlovakRepublic", "Hungary", "Switzerland", "Czechia", "Netherlands", "Belgium")
Years <- c("2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022", "2023")


#Fertilizer Consumption (FC) kg/ha
Austria_FC <- c(130.8759, 148.7207, 137.795, 141.0312, 133.15, 118.5088, 137.9713, 128.2593, 97.41836, 106.4162)
Germany_FC <- c(217.6957, 202.2739, 197.2283, 178.1189, 166.4811, 174.0987, 163.242, 130.141, 116.8701, 128.5755)
France_FC <- c(168.4267, 170.4009, 163.1391, 177.6248, 170.9708, 157.7226, 179.5401, 171.652, 130.6186, 131.3228)
Poland_FC <- c(164.0007, 174.0975, 189.6909, 190.3915, 173.0766, 176.5084, 155.0673, 156.061, 160.6807, 155.6008)
SlovakRepublic_FC <- c(116.4788, 112.9911, 125.7624, 121.6873, 129.3019, 129.1787, 129.812, 134.494, 118.9025, 106.3213)
Hungary_FC <- c(112.7082, 114.1475, 138.173, 152.3787, 150.8589, 145.9856, 162.6167, 165.4918, 108.3258, 89.5253)
Switzerland_FC <- c(208.4009, 208.9314, 212.1093, 199.8875, 187.7938, 163.4276, 175.1294, 177.1865, 132.5975, 142.6968)
Czechia_FC <- c(162.6573, 192.3137, 196.3834, 182.4207, 174.3607, 165.6915, 144.2165, 148.6243, 152.1399, 113.4345)
Netherlands_FC <- c(247.8526, 266.8052, 291.6858, 290.5583, 274.2693, 273.8018, 276.614, 273.2552, 240.2659, 238.0198)
Belgium_FC <- c(304.0306, 305.478, 275.0542, 269.7356, 266.7612, 265.8833, 257.6437, 252.754, 198.2734, 191.6623)

#Wheat Production (WP) kg/ha
Austria_WP <- c(5921.7, 5696.2, 6253.4, 4871.2, 4645.3, 5737.2, 5923.4, 5529.9, 5795.2, 6187.7)
Germany_WP <- c(8629.6, 8087.7, 7640.9, 7644.3, 6673.7, 7396.4, 7819.5, 7301.5, 7577.3, 7431.8)
France_WP <- c(7353.0, 7800.8, 5289.6, 7253.8, 6768.0, 7742.8, 6677.6, 6928.4, 6996.7, 7201.6)
Poland_WP <- c(4972.1, 4574.4, 4580.2, 4877.3, 3987.1, 4303.5, 5234.2, 4975.3, 5239.4, 5280.0)
SlovakRepublic_WP <- c(5464.0, 5509.8, 5843.4, 4738.6, 4779.6, 4766.6, 5511.3, 5609.0, 4975.0, 6123.0)
Hungary_WP <- c(4728.8, 5179.6, 5365.4, 5428.7, 5124.4, 5294.9, 5468.0, 5925.4, 4448.1, 5642.3)
Switzerland_WP <- c(6348.9, 5988.2, 4370.5, 6094.0, 5830.1, 5751.4, 6218.6, 5139.5, 5465.7, 5139.7)
Czechia_WP <- c(6510.4, 6355.9, 6495.9, 5670.5, 5389.6, 5732.5, 6138.9, 6321.4, 6072.7, 6435.1)
Netherlands_WP <- c(9169.8, 9125.5, 7983.2, 9093.5, 8614.7, 9378.1, 8556.0, 8018.0, 9393.1, 8467.0)
Belgium_WP <- c(9412.9, 10015.2, 6787.1, 8617.4, 8492.3, 9336.4, 8946.3, 7788.4, 9057.4, 8424.7)

#Fertilizer Consumption (FC) Matrix
FertilizerConsumption <- rbind(Austria_FC, Germany_FC, France_FC, Poland_FC, SlovakRepublic_FC, Hungary_FC, Switzerland_FC, Czechia_FC, Netherlands_FC, Belgium_FC)
rm(Austria_FC, Germany_FC, France_FC, Poland_FC, SlovakRepublic_FC, Hungary_FC, Switzerland_FC, Czechia_FC, Netherlands_FC, Belgium_FC)
rownames(FertilizerConsumption) <- Countries
colnames(FertilizerConsumption) <- Years

#Wheat Production (WP) matrix
WheatProduction <- rbind(Austria_WP, Germany_WP, France_WP, Poland_WP, SlovakRepublic_WP, Hungary_WP, Switzerland_WP, Czechia_WP, Netherlands_WP, Belgium_WP)
rm(Austria_WP, Germany_WP, France_WP, Poland_WP, SlovakRepublic_WP, Hungary_WP, Switzerland_WP, Czechia_WP, Netherlands_WP, Belgium_WP)
rownames(WheatProduction) <-Countries
colnames(WheatProduction) <- Years


matplot(t(FertilizerConsumption), type="o", pch=16:25, col=c(1:8))
