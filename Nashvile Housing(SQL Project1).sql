--SELECT TOP (1000) [UniqueID ]
--      ,[ParcelID]
--      ,[LandUse]
--      ,[PropertyAddress]
--      ,[SaleDate]
--      ,[SalePrice]
--      ,[LegalReference]
--      ,[SoldAsVacant]
--      ,[OwnerName]
--      ,[OwnerAddress]
--      ,[Acreage]
--      ,[TaxDistrict]
--      ,[LandValue]
--      ,[BuildingValue]
--      ,[TotalValue]
--      ,[YearBuilt]
--      ,[Bedrooms]
--      ,[FullBath]
--      ,[HalfBath]
--  FROM [Portfolio Project].[dbo].[Sheet1$]
--)
  
  --Standardize Date Format

  Select SaleDateConverted, Convert(Date,SaleDate)
  From [Portfolio Project].dbo.NashvilleHousing

  Update NashvilleHousing
  Set SaleDate = Convert(Date, Saledate)

 
 Alter table NashvilleHousing
  Add SaledateConverted Date;

  Update NashvilleHousing
  Set SaleDateConverted = CONVERT(Date,SaleDate)

  -----------------------------------------------------------------------------------------------------------------------------------------------
  --Populate Property Address data

  Select *
  From [Portfolio Project].dbo.NashvilleHousing
  --Where PropertyAddress is NULL
  order by ParcelID

   Select a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, ISNULL(a.propertyAddress, b.PropertyAddress)
  From [Portfolio Project].dbo.NashvilleHousing A
  Join [Portfolio Project].dbo.NashvilleHousing B
  on a.ParcelID = b.ParcelID
  AND a.[UniqueID ] <> b.[UniqueID ]
  Where a.PropertyAddress is null

  Update a
  SET PropertyAddress = ISNULL(a.propertyAddress, b.PropertyAddress)
  From [Portfolio Project].dbo.NashvilleHousing A
  Join [Portfolio Project].dbo.NashvilleHousing B
  on a.ParcelID = b.ParcelID
  AND a.[UniqueID ] <> b.[UniqueID ]

  --Breaking out  address into indivuidal columns (Address, city, state)

  
 Select  PropertyAddress
  From [Portfolio Project].dbo.NashvilleHousing
  --Where PropertyAddress is NULL
  --order by ParcelID
 
  SELECT
  SUBSTRING(PropertyAddress, 1, CHARINDEX(',', Propertyaddress) -1 ) as address
  , SUBSTRING(PropertyAddress,  CHARINDEX(',', Propertyaddress) +1 , LEN(PropertyAddress)) as address
  
   From [Portfolio Project].dbo.NashvilleHousing

   Alter table NashvilleHousing
  Add PropertySplitAddress NVARCHAR(255);

  Update NashvilleHousing
  Set PropertySplitAddress = SUBSTRING(PropertyAddress, 1, CHARINDEX(',', Propertyaddress) -1 ) 


  Alter table NashvilleHousing
  Add PropertySplitCity1 NVARCHAR(255);

  Update NashvilleHousing
  Set PropertySplitCity1 = SUBSTRING(PropertyAddress,  CHARINDEX(',', Propertyaddress) +1 , LEN(PropertyAddress)) 

 SELECT*

 from [Portfolio Project].dbo.NashvilleHousing




 SELECT OwnerAddress
 FROM [Portfolio Project].dbo.NashvilleHousing

 Select
 PARSENAME(Replace(OwnerAddress, ',', '.'),3)
 ,PARSENAME(Replace(OwnerAddress, ',', '.'),2)
 ,PARSENAME(Replace(OwnerAddress, ',', '.'),1)
 From [Portfolio Project].dbo.NashvilleHousing


 
 
 Alter table NashvilleHousing
  Add OwnerSplitAddress NVARCHAR(255);

  Update NashvilleHousing
  Set OwnerSplitAddress = PARSENAME(Replace(OwnerAddress, ',', '.'),3)


   Alter table NashvilleHousing
  Add  OwnerSplitCity1 NVARCHAR(255);

 Update NashvilleHousing
  Set OwnerSplitCity1 = PARSENAME(Replace(OwnerAddress, ',', '.'),2)

  Alter table NashvilleHousing
  Add OwnerSplitState NVARCHAR(255);

  Update NashvilleHousing
  Set OwnerSplitState = PARSENAME(Replace(OwnerAddress, ',', '.'),1) 


  Select*
  From [Portfolio Project].dbo.NashvilleHousing



  --Change y and N to YES and NO in "Sold as Vacant" field

  Select Distinct(SoldASVacant), COUNT(SoldAsVacant)
  from [Portfolio Project].dbo.NashvilleHousing
  Group by SoldAsVacant
  Order by 2


  Select SoldasVacant
  , CASE when SoldAsVacant = 'Y' then 'Yes'
		 When SoldAsVacant = 'N' Then 'No'
		 ELSE SoldAsVacant
		 END
From [Portfolio Project].dbo.NashvilleHousing

Update NashvilleHousing
SET SoldAsVacant = CASE when SoldAsVacant = 'Y' then 'Yes'
		 When SoldAsVacant = 'N' Then 'No'
		 ELSE SoldAsVacant
		 END


--Remove the dupes

WITH RowNumCTE AS(
Select *,
	ROW_NUMBER() OVER (
	PARTITION BY ParcelID,
				 PropertyAddress,
				 SalePrice,
				 SaleDate,
				 LegalReference
				 Order by
					UniqueID
					) row_num

From [Portfolio Project].dbo.NashvilleHousing
--order by ParcelID
)
Select *
From RowNumCTE
Where row_num > 1
Order by PropertyAddress




Select *
From [Portfolio Project].dbo.NashvilleHousing


--DELETE UNUSED COLUMS

Select *
From [Portfolio Project].dbo.NashvilleHousing


ALTER TABLE [Portfolio Project].dbo.NashvilleHousing
DROP COLUMN OwnerAddress, TaxDistrict, PropertyAddress 

ALTER TABLE [Portfolio Project].dbo.NashvilleHousing
DROP COLUMN SaleDate