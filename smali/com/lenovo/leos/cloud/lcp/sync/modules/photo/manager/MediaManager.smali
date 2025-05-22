.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaManager"


# virtual methods
.method public abstract getAlbumByAlbumKey(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
.end method

.method public abstract getAlbumByTimeline(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
.end method

.method public abstract getAlbumList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMediaList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMediaList(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFailedAlbumList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFailedMediaListByAlbumKey(Ljava/lang/String;ZII)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZII)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract getMediaCount()[I
.end method

.method public abstract getMediaListByAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            "II)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaListByAlbumKey(Ljava/lang/String;IIZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaListByModifiedDate(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaListByTimeline(Ljava/lang/String;IIZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNewMediaByTimeLine(Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation
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
