.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;
.source ""


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "choice_image_info"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final FLAG_FALSE:I = 0x0

.field public static final FLAG_TRUE:I = 0x1

.field public static final MEDIA_TYPE_IMAGE:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x1


# instance fields
.field public bucketDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "album_name"
    .end annotation
.end field

.field public bucketId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "album_id"
    .end annotation
.end field

.field public cacheKey:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "cache_key"
    .end annotation
.end field

.field public dataPath:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "data_path"
    .end annotation
.end field

.field public downUrl:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "down_url"
    .end annotation
.end field

.field public flag:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "flag"
    .end annotation
.end field

.field public imageId:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "image_id"
    .end annotation
.end field

.field public isBackup:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "is_backup"
    .end annotation
.end field

.field public mediaType:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "media_type"
    .end annotation
.end field

.field public originalAdlerKey:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "original_alder_key"
    .end annotation
.end field

.field public size:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "size"
    .end annotation
.end field

.field public syncCacheKey:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "sync_cache_key"
    .end annotation
.end field

.field public thumbnail:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "thumbnail"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/persist/DBModel;-><init>()V

    return-void
.end method

.method public static convertTo(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;
    .locals 3

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->mediaType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;-><init>()V

    :goto_0
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->imageId:J

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->size:J

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->size:J

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->dataPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->downUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->downUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->bucketId:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketId:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->thumbnail:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->thumbnail:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->bucketDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketDisplayName:Ljava/lang/String;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->isBackup:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackup:I

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->cacheKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->cacheKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->syncCacheKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->syncCacheKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->originalAdlerKey:Ljava/lang/String;

    iput-object p0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->originalAdlerKey:Ljava/lang/String;

    return-object v0
.end method

.method public static convertfrom(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;
    .locals 3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;-><init>()V

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->imageId:J

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->size:J

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->size:J

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->dataPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->downUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->downUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketId:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->bucketId:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->thumbnail:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->thumbnail:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->bucketDisplayName:Ljava/lang/String;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackup:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->isBackup:I

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->cacheKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->cacheKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->syncCacheKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->syncCacheKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->originalAdlerKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->originalAdlerKey:Ljava/lang/String;

    instance-of p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput p0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->mediaType:I

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;
    .locals 3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;-><init>()V

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->imageId:J

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->imageId:J

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->size:J

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->size:J

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->dataPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->dataPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->downUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->downUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->bucketId:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->bucketId:Ljava/lang/String;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->mediaType:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->mediaType:I

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->thumbnail:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->thumbnail:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->bucketDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->bucketDisplayName:Ljava/lang/String;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->isBackup:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->isBackup:I

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->cacheKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->cacheKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->syncCacheKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->syncCacheKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->originalAdlerKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->originalAdlerKey:Ljava/lang/String;

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->flag:I

    iput p0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->flag:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;->clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/DBImageInfo;

    move-result-object p0

    return-object p0
.end method
