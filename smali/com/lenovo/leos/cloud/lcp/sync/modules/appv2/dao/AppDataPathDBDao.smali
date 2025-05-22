.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/dao/AppDataPathDBDao;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract deleteAll()V
.end method

.method public abstract deleteByList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteByPackageName(Ljava/lang/String;)V
.end method

.method public abstract deleteByPackageName([Ljava/lang/String;)V
.end method

.method public abstract getAppDataPathDbInfo(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataPathDbInfo;
.end method

.method public abstract getAppDataPathDbInfo(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataPathDbInfo;
.end method

.method public abstract getAppDataPathDbInfo(Ljava/util/List;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataPathDbInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppDataPathDbInfo([Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataPathDbInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageDataPath(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;)Ljava/lang/String;
.end method

.method public abstract getPackageDataPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPackageDataPath(Ljava/util/List;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageDataPath([Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataPathDbInfo;)V
.end method

.method public abstract insert(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppDataPathDbInfo;",
            ">;)V"
        }
    .end annotation
.end method
