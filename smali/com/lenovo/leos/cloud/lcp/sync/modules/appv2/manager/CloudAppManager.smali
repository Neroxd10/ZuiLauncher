.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/AppManager;


# virtual methods
.method public abstract deleteAppDataList(Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppDeleteResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppDeleteResponse;"
        }
    .end annotation
.end method

.method public abstract deleteAppList(Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppDeleteResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppDeleteResponse;"
        }
    .end annotation
.end method

.method public abstract getCloudAppCount()I
.end method

.method public abstract getCloudAppDataCount()I
.end method

.method public abstract queryCheksumAppList(Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract queryCheksumLocalNewAppList(Ljava/util/List;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract queryCloudCustomAppDataDir()V
.end method

.method public abstract queryRestoreAppList(Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract queryRestoreAppList(ZZ)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Map<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;>;"
        }
    .end annotation
.end method
