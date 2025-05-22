.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static I()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;-><init>()V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static newRawContactDao()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->I()Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPOptions;->backupSimCardContact()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/RawContactDaoImpl;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PhoneRawContactDaoImpl;-><init>()V

    return-object v0
.end method
