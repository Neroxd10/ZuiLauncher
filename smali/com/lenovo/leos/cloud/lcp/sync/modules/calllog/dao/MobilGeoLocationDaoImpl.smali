.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/MobilGeoLocationDaoImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/MobilGeoLocationDao;


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/MobilGeoLocationDaoImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    return-void
.end method


# virtual methods
.method public add(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/MobilGeoLocationDaoImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->save(Ljava/util/List;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "add MobileGeoLocationModel error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public deleteAll()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/MobilGeoLocationDaoImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->deleteAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public queryByMobile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/MobilGeoLocationDaoImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;

    const-string v1, "msisdn=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/CustomDBHelper;->querySingleBy(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;->geolocation:Ljava/lang/String;

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;->operator:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/MobileGeoLocationModel;->operator:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryByMobile error:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method
