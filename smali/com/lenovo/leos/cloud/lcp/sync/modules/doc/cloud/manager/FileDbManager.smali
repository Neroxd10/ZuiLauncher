.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/manager/FileDbManager;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAll(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->deleteAll()I

    move-result p0

    return p0
.end method

.method public static getAll(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->getAll(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getLogCount(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->getLogCount()I

    move-result p0

    return p0
.end method

.method public static save(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileInfoDao;->addFileInfo(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/dao/FileDbInfo;

    return-void
.end method
