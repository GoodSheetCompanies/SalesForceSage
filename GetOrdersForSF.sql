Use MAS_LOL;
Select TOP 1000 SHH.SalesOrderNo, SFA.SFAccountID, RTRIM(IsNull(SHH.BillToAddress1,'')) + RTRIM(IsNull(SHH.BillToAddress2,'')) + RTRIM(IsNull(SHH.BillToAddress3,'')) as BillToStreetAddress, SHH.BillToCity,
SHH.BillToState, SHH.BillToZipCode, SHH.BillToCountryCode, ISNULL(SH.OrderStatus,SHH.OrderStatus) as OrderStatus, IsNull(SH.OrderType,'S') as OrderType, SHH.CustomerPONo, SHH.OrderDate, 
RTRIM(IsNull(SHH.ShipToAddress1,'')) + RTRIM(IsNull(SHH.ShipToAddress2,'')) + RTRIM(IsNull(SHH.ShipToAddress3,'')) as ShipToStreetAddress, SHH.ShipToCity,
SHH.ShipToState, SHH.ShipToZipCode, SHH.ShipToCountryCode, SHH.UDF_ORD_REF_1 as DWRRef, SH.ShipExpireDate, AR.ShipDate, SHH.ShipVia,
SHH.UDF_ADJUSTED_SHIP_DATE, SHH.UDF_DELIVERY_CONTACT as DeliveryContact, SHH.UDF_DELIVERY_NOTE as DeliveryNote, SHH.UDF_DELIVERY_PHONE as DeliveryPhone,
CASE SHH.UDF_ASAP  WHEN 'N' THEN 0 WHEN 'Y' THEN 1 ELSE 0 END as ASAP, CASE SHH.UDF_DONT_SHIP_EARLY WHEN 'N' THEN 0 WHEN 'Y' THEN 1 ELSE 0 END as DONTSHIPEARLY, (SHH.TaxableSubjectToDiscount + SHH.NonTaxableSubjectToDiscount ) as AmtSubjectDiscount,
SHH.DiscountRate, SHH.DiscountAmt, SHH.TaxableAmt, SHH.NonTaxableAmt, SHH.FreightAmt, SHH.PaymentType, SHH.DepositAmt, SHH.SalesTaxAmt, SHH.UDF_TOTAL_PIECES as TotalPieces,
SHH.TermsCode, SHH.DateUpdated, SHH.TimeUpdated, SHH.UDF_PRIORITY
from SO_SalesOrderHistoryHeader SHH left join SO_SalesOrderHeader SH on SH.SalesOrderNo = SHH.SalesOrderNo inner join SAGE_SF.dbo.tblSageToAccountsSF SFA
on SHH.CustomerNo =  SFA.SageCustomerNo left join AR_InvoiceHistoryHeader AR on AR.SalesOrderNo = SHH.SalesOrderNo
Where SHH.OrderStatus Not In ('X','Q','Z') and SHH.UDF_PRIORITY <> 'STANDARD'
ORDER BY SHH.OrderDate DESC