Use MAS_LOL
Use MAS_LOL;
Select SHH.SalesOrderNo, SFA.SFAccountID, RTRIM(IsNull(SHH.BillToAddress1,'')) + RTRIM(IsNull(SHH.BillToAddress2,'')) + RTRIM(IsNull(SHH.BillToAddress3,'')) as BillToStreetAddress, SHH.BillToCity,
SHH.BillToState, SHH.BillToZipCode, SHH.BillToCountryCode, ISNULL(SH.OrderStatus,SHH.OrderStatus) as OrderStatus, IsNull(SH.OrderType,'S') as OrderType, SHH.CustomerPONo, SHH.OrderDate, 
RTRIM(IsNull(SHH.ShipToAddress1,'')) + RTRIM(IsNull(SHH.ShipToAddress2,'')) + RTRIM(IsNull(SHH.ShipToAddress3,'')) as ShipToStreetAddress, SHH.ShipToCity,
SHH.ShipToState, SHH.ShipToZipCode, SHH.ShipToCountryCode, SHH.UDF_ORD_REF_1 as DWRRef, SH.ShipExpireDate, (SELECT TOP 1 AR.ShipDate FROM AR_InvoiceHistoryHeader AR WHERE AR.SalesOrderNo = SHH.SalesOrderNo ORDER BY ShipDate DESC) as ShipDate , SHH.ShipVia,
SHH.UDF_ADJUSTED_SHIP_DATE, SHH.UDF_DELIVERY_CONTACT as DeliveryContact, SHH.UDF_DELIVERY_NOTE as DeliveryNote, SHH.UDF_DELIVERY_PHONE as DeliveryPhone,
CASE SHH.UDF_ASAP  WHEN 'N' THEN 0 WHEN 'Y' THEN 1 ELSE 0 END as ASAP, CASE SHH.UDF_DONT_SHIP_EARLY WHEN 'N' THEN 0 WHEN 'Y' THEN 1 ELSE 0 END as DONTSHIPEARLY, (SHH.TaxableSubjectToDiscount + SHH.NonTaxableSubjectToDiscount ) as AmtSubjectDiscount,
SHH.DiscountRate, SHH.DiscountAmt, SHH.TaxableAmt, SHH.NonTaxableAmt, SHH.FreightAmt, SHH.PaymentType, SHH.DepositAmt, SHH.SalesTaxAmt, SHH.UDF_TOTAL_PIECES as TotalPieces,
SHH.TermsCode, SHH.DateUpdated, SHH.TimeUpdated, ISNULL(SHH.UDF_PRIORITY,'STANDARD') as UDF_PRIORITY, '01s4x000002m1xvAAA' as PriceBookID
from SO_SalesOrderHistoryHeader SHH left join SO_SalesOrderHeader SH on SH.SalesOrderNo = SHH.SalesOrderNo left join SAGE_SF.dbo.tblSageToAccountsSF SFA
on SHH.CustomerNo =  SFA.SageCustomerNo
WHERE  SHH.OrderStatus NOT IN ('X','Q','Z')  and year(SHH.OrderDate) >= 2019 and SFAccountID is null
ORDER BY OrderStatus