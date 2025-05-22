.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/ContactMetadataManager;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract checkBackup()Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/service/BackupResult;
.end method

.method public abstract checkNeedBackup()Z
.end method

.method public abstract checkPrepareLocal()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end method
