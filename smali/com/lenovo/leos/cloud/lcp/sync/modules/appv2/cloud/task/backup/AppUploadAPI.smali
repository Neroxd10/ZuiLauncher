.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadAPI;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadAPI;
    .locals 1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadAPI;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadAPI;-><init>()V

    return-object v0
.end method


# virtual methods
.method public upload(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;"
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;->getInstance(Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;->writeObject(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->createFailFuture(Ljava/lang/Exception;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object p0

    return-object p0
.end method
