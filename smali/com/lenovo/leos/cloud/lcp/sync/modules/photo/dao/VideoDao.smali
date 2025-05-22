.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract batchUpdateImage(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAlbumByTimeline(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
.end method

.method public abstract getAlbumStatistics()[I
.end method

.method public abstract getAllVideoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFailedVideoListByAlbumKey(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInvalidModifiedDateVideoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNewMediaObject()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;
.end method

.method public abstract getNewTimelineAlbumList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNewVideoByTimeLine(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimelineAlbumList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
.end method

.method public abstract getVideoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoListByTimeline(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoThumbnailPath(J)Ljava/lang/String;
.end method
