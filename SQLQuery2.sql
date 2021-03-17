SELECT ItemCode, ItemCodeDesc,  D.ExtendedDescriptionText, ProductLine, PriceCode, UDF_COLOR as Color, UDF_PRODUCT_DIMS as DIMS, UDF_BOXINFO as BoxInfo, 
UDF_WEIGHT as Weight, UDF_SHIP_WEIGHT as BoxWeight, UDF_SCHEDULEB as ScheduleB, InactiveItem,
CASE 
WHEN CI.DateUpdated > D.DateUpdated or D.DateUpdated is null THEN CI.DateUpdated 
WHEN D.DateUpdated > CI.DateUpdated THEN D.DateUpdated
WHEN D.DateUpdated = CI.DateUpdated and CI.TimeUpdated > D.TimeUpdated or D.TimeUpdated is null Then CI.DateUpdated
WHEN D.DateUpdated = CI.DateUpdated and CI.TimeUpdated < D.TimeUpdated THEN D.DateUpdated 
ELSE CI.DateUpdated
END DateUpdated,
CASE
WHEN CI.DateUpdated > D.DateUpdated or D.DateUpdated is null THEN CI.TimeUpdated
WHEN D.DateUpdated > CI.DateUpdated THEN D.TimeUpdated
WHEN D.DateUpdated = CI.DateUpdated and CI.TimeUpdated > D.TimeUpdated or D.TimeUpdated is null Then CI.TimeUpdated
WHEN D.DateUpdated = CI.DateUpdated and CI.TimeUpdated < D.TimeUpdated THEN D.TimeUpdated
ELSE CI.TimeUpdated
END TimeUpdated

FROM CI_Item CI left join CI_ExtendedDescription D on CI.ExtendedDescriptionKey = D.ExtendedDescriptionKey and CreationModuleCode = 'I/M' 
where ItemCode Like '%LC-LBC-CG%'
