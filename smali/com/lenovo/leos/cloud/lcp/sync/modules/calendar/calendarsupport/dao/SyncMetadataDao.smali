.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/SyncMetadataDao;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract deleteAll()I
.end method

.method public abstract deleteById(J)V
.end method

.method public abstract getTableState()I
.end method

.method public abstract getTotalCount()I
.end method

.method public abstract insert(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;)J
.end method

.method public abstract queryAllSyncList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryByUserName(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/calendarsupport/dao/vo/SyncMetadata;)I
.end method
