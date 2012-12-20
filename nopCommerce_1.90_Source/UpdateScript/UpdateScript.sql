  --- 20/12/2012 
  -- add column [ShippingAndTerms] and History to Nop_ProductLocalized and [Nop_Product]  
  
  
  Alter table dbo.Nop_ProductLocalized
add [ShippingAndTerms] nvarchar(max) not null default ''
  Alter table dbo.Nop_ProductLocalized
add [History] nvarchar(max) not null default ''
  Alter table dbo.[Nop_Product] 
add [ShippingAndTerms] nvarchar(max) not null default ''
  Alter table dbo.[Nop_Product]
add [History] nvarchar(max) not null default ''