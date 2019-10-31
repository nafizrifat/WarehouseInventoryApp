﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DIGISYSS.Entities
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class RetailSalesManagementEntities : DbContext
    {
        public RetailSalesManagementEntities()
            : base("name=RetailSalesManagementEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<InvAddress> InvAddresses { get; set; }
        public virtual DbSet<InvCategory> InvCategories { get; set; }
        public virtual DbSet<InvCityList> InvCityLists { get; set; }
        public virtual DbSet<InvColor> InvColors { get; set; }
        public virtual DbSet<InvDiscount> InvDiscounts { get; set; }
        public virtual DbSet<InvDistrictList> InvDistrictLists { get; set; }
        public virtual DbSet<InvFactory> InvFactories { get; set; }
        public virtual DbSet<InvGroup> InvGroups { get; set; }
        public virtual DbSet<InvItem> InvItems { get; set; }
        public virtual DbSet<InvOutlet> InvOutlets { get; set; }
        public virtual DbSet<InvOutletInvoiceDetail> InvOutletInvoiceDetails { get; set; }
        public virtual DbSet<InvOutletInvoiceHistory> InvOutletInvoiceHistories { get; set; }
        public virtual DbSet<InvOutletInvoiceMaster> InvOutletInvoiceMasters { get; set; }
        public virtual DbSet<InvOutletPODetail> InvOutletPODetails { get; set; }
        public virtual DbSet<InvOutletPOInvoiceMaster> InvOutletPOInvoiceMasters { get; set; }
        public virtual DbSet<InvOutletPOMaster> InvOutletPOMasters { get; set; }
        public virtual DbSet<InvOutletPOReturnDetail> InvOutletPOReturnDetails { get; set; }
        public virtual DbSet<InvOutletPOReturnMaster> InvOutletPOReturnMasters { get; set; }
        public virtual DbSet<InvOutletStock> InvOutletStocks { get; set; }
        public virtual DbSet<InvOutletWarrentyRepair> InvOutletWarrentyRepairs { get; set; }
        public virtual DbSet<InvPackageDetail> InvPackageDetails { get; set; }
        public virtual DbSet<InvPackageMaster> InvPackageMasters { get; set; }
        public virtual DbSet<InvProduct> InvProducts { get; set; }
        public virtual DbSet<InvProductPrice> InvProductPrices { get; set; }
        public virtual DbSet<InvProductPurchase> InvProductPurchases { get; set; }
        public virtual DbSet<InvProductWarrenty> InvProductWarrenties { get; set; }
        public virtual DbSet<InvSize> InvSizes { get; set; }
        public virtual DbSet<InvSupplier> InvSuppliers { get; set; }
        public virtual DbSet<InvTax> InvTaxes { get; set; }
        public virtual DbSet<InvUoM> InvUoMs { get; set; }
        public virtual DbSet<InvWarehouse> InvWarehouses { get; set; }
        public virtual DbSet<InvWarehousePODetail> InvWarehousePODetails { get; set; }
        public virtual DbSet<InvWarehousePOInvoiceDetail> InvWarehousePOInvoiceDetails { get; set; }
        public virtual DbSet<InvWarehousePOInvoiceMaster> InvWarehousePOInvoiceMasters { get; set; }
        public virtual DbSet<InvWarehousePOItemReceived> InvWarehousePOItemReceiveds { get; set; }
        public virtual DbSet<InvWarehousePOMaster> InvWarehousePOMasters { get; set; }
        public virtual DbSet<InvWarehouseStock> InvWarehouseStocks { get; set; }
        public virtual DbSet<InvWarrentyPeriod> InvWarrentyPeriods { get; set; }
        public virtual DbSet<TestStudent> TestStudents { get; set; }
        public virtual DbSet<TestStudentAddress> TestStudentAddresses { get; set; }
        public virtual DbSet<TestStudentHistory> TestStudentHistories { get; set; }
        public virtual DbSet<InvOutletPOInvoiceDetail> InvOutletPOInvoiceDetails { get; set; }
    
        public virtual ObjectResult<Nullable<int>> spTempo(Nullable<int> num)
        {
            var numParameter = num.HasValue ?
                new ObjectParameter("num", num) :
                new ObjectParameter("num", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("spTempo", numParameter);
        }
    
        public virtual ObjectResult<spSaleInvoice_Result> spSaleInvoice(Nullable<int> outletSaleInvoiceNo)
        {
            var outletSaleInvoiceNoParameter = outletSaleInvoiceNo.HasValue ?
                new ObjectParameter("OutletSaleInvoiceNo", outletSaleInvoiceNo) :
                new ObjectParameter("OutletSaleInvoiceNo", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<spSaleInvoice_Result>("spSaleInvoice", outletSaleInvoiceNoParameter);
        }
    }
}