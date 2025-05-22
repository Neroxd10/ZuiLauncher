.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;
.source ""


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "mobile_geolocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;",
        ">;"
    }
.end annotation


# instance fields
.field public geolocation:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "goelocation"
    .end annotation
.end field

.field public msisdn:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "msisdn"
        unique = true
    .end annotation
.end field

.field public operator:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "operator"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;
    .locals 2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;->msisdn:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;->msisdn:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;->geolocation:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;->geolocation:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;->operator:Ljava/lang/String;

    iput-object p0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;->clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;

    move-result-object p0

    return-object p0
.end method
