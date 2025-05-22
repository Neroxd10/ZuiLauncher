.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;


# static fields
.field private static final e:Ljava/lang/String;

.field private static final f:Landroid/net/Uri;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

.field private c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/DeviceUtil;->isEnglishLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Other"

    goto :goto_0

    :cond_0
    const-string v0, "\u5176\u4ed6"

    :goto_0
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->e:Ljava/lang/String;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "mime_type"

    const-string v3, "title"

    const-string v4, "_data"

    const-string v5, "datetaken"

    const-string v6, "bucket_display_name"

    const-string v7, "bucket_id"

    const-string v8, "date_added"

    const-string v9, "date_modified"

    const-string v10, "description"

    const-string v11, "_display_name"

    const-string v12, "isprivate"

    const-string v13, "latitude"

    const-string v14, "longitude"

    const-string v15, "mini_thumb_magic"

    const-string v16, "orientation"

    const-string v17, "picasa_id"

    const-string v18, "_size"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "image_id"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->d:Ljava/util/Map;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;

    return-void
.end method

.method private a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceImageIds()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getUnchoiceImageIds()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x2c

    const-string v1, ")"

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_id IN ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_id NOT IN ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    return-object v3
.end method

.method private b(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_a

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move-object v4, v3

    move v5, v2

    move v6, v5

    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-direct {p0, p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v7

    const-string v8, ""

    if-eqz v3, :cond_4

    iget-object v9, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketId:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v9, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    iget-object v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v3, v9, v11

    if-lez v3, :cond_3

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iput-object v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v7, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-object v4, v7

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iput-object v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v7, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->imagesList:Ljava/util/LinkedList;

    if-eqz v3, :cond_5

    invoke-virtual {v1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setImagesCount(I)V

    invoke-virtual {v1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setTotalImageCount(I)V

    invoke-virtual {v1, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setBackupImagesCount(I)V

    move v5, v2

    move v6, v5

    :cond_5
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;-><init>()V

    iget-object v3, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketId:Ljava/lang/String;

    iput-object v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    iget-object v3, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketDisplayName:Ljava/lang/String;

    iput-object v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    iget-object v3, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iput-object v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v7, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setImagesList(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v4, v7

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v6, v6, 0x1

    :cond_7
    iget-object v3, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    if-eqz v1, :cond_9

    iget-object p0, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->imagesList:Ljava/util/LinkedList;

    if-eqz p0, :cond_9

    invoke-virtual {v1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setImagesCount(I)V

    invoke-virtual {v1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setTotalImageCount(I)V

    invoke-virtual {v1, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setBackupImagesCount(I)V

    :cond_9
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_a
    return-void
.end method

.method private c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;
    .locals 5

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->mimeType:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->title:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateTaken:J

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketDisplayName:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketId:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateAdd:J

    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->description:Ljava/lang/String;

    const/16 v3, 0xf

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->orientation:J

    const/16 v3, 0x11

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->size:J

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getLocalCacheKey(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getAdlerCrcCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->cacheKey:Ljava/lang/String;

    iget-object p1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->buildUniqueCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->syncCacheKey:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getPhotoLocalUID(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->getByUidCached(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;

    move-result-object v3

    if-eqz v3, :cond_1

    iget p1, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->isBackup:I

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v1, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->originalAdler:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->originalAdlerKey:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->buildUniqueKey(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/mock/PrivateDBProvider;->getImageSid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v3, 0x0

    cmp-long p0, p0, v3

    if-eqz p0, :cond_4

    :cond_3
    iput v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackup:I

    :cond_4
    return-object v0
.end method

.method private d(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;Landroid/database/Cursor;)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "lastBackupPhotoDate"

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v7

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    const-string v11, "yyyyMMdd"

    invoke-direct {v9, v11, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_8

    move-object/from16 v10, p0

    invoke-direct {v10, v1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v12, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    cmp-long v12, v12, v7

    if-lez v12, :cond_2

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->tipMediaList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/16 v13, 0xa

    if-ge v12, v13, :cond_2

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->tipMediaList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v12, Ljava/util/Date;

    iget-wide v5, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    mul-long/2addr v5, v14

    invoke-direct {v12, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    const-string v12, ""

    if-nez v6, :cond_3

    new-instance v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/TimelineAlbum;

    invoke-direct {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/TimelineAlbum;-><init>()V

    iput-object v5, v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    iput-object v5, v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    iget-object v13, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iput-object v13, v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v11, v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-wide v13, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    iget-object v15, v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    cmp-long v13, v13, v17

    if-lez v13, :cond_4

    iget-object v13, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iput-object v13, v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v11, v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    :cond_4
    :goto_1
    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getTotalImageCount()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v6, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setTotalImageCount(I)V

    iget-wide v12, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    cmp-long v12, v12, v7

    if-lez v12, :cond_5

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getImagesCount()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v6, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setImagesCount(I)V

    :cond_5
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    if-nez v12, :cond_6

    new-instance v12, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    invoke-direct {v12, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)V

    invoke-interface {v3, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-wide/16 v5, 0x0

    cmp-long v13, v7, v5

    if-lez v13, :cond_7

    iget-wide v13, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    cmp-long v13, v13, v7

    if-lez v13, :cond_0

    invoke-virtual {v12, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->chooseImage(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x2

    invoke-virtual {v12, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->setChooserMode(I)V

    goto/16 :goto_0

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->chooserList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    iget v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->mediaCount:I

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceCount()I

    move-result v3

    add-int/2addr v4, v3

    iput v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->mediaCount:I

    goto :goto_2

    :cond_9
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    :cond_a
    return-void
.end method

.method private e(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;-><init>()V

    const-string v1, "-1"

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, p2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v5

    iget-wide v6, v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    iget-object v8, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v1, v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-object v1, v5

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v1, v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-object v1, v5

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setImagesCount(I)V

    invoke-virtual {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setTotalImageCount(I)V

    invoke-virtual {v0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setBackupImagesCount(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void
.end method

.method private f(Landroid/database/Cursor;Z)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "yyyyMMdd"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x0

    move-object v6, v4

    move-object v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_9

    move-object/from16 v10, p0

    invoke-direct {v10, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v11

    if-nez p2, :cond_0

    invoke-virtual {v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    new-instance v12, Ljava/util/Date;

    iget-wide v13, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    if-eqz v6, :cond_5

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v5, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    iget-object v12, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v5, v5, v16

    if-lez v5, :cond_4

    invoke-virtual {v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iput-object v5, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v11, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-object v7, v11

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v2

    move-object/from16 v16, v3

    iget-wide v2, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v6, v2

    move-object/from16 v16, v3

    invoke-virtual {v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iput-object v2, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v11, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    goto :goto_2

    :cond_5
    :goto_1
    move-object v6, v2

    move-object/from16 v16, v3

    if-eqz v4, :cond_6

    iget-object v2, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->imagesList:Ljava/util/LinkedList;

    if-eqz v2, :cond_6

    invoke-virtual {v4, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setImagesCount(I)V

    invoke-virtual {v4, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setTotalImageCount(I)V

    invoke-virtual {v4, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setBackupImagesCount(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_6
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/TimelineAlbum;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/TimelineAlbum;-><init>()V

    iput-object v13, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    iput-object v13, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    iget-object v3, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iput-object v3, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v11, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    iput-object v12, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/TimelineAlbum;->timeline:Ljava/util/Date;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setImagesList(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v2

    :goto_2
    move-object v7, v11

    :cond_7
    :goto_3
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v9, v9, 0x1

    :cond_8
    move-object v2, v6

    move-object v6, v13

    move-object/from16 v3, v16

    goto/16 :goto_0

    :cond_9
    if-eqz v4, :cond_a

    iget-object v2, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->imagesList:Ljava/util/LinkedList;

    if-eqz v2, :cond_a

    invoke-virtual {v4, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setImagesCount(I)V

    invoke-virtual {v4, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setTotalImageCount(I)V

    invoke-virtual {v4, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setBackupImagesCount(I)V

    :cond_a
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_b
    return-object v1
.end method

.method private g(ZLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            "II)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, " AND "

    const-string v3, "_size > 10240"

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz p1, :cond_2

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;

    invoke-direct {p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bucket_display_name in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' )  AND _data not like \'%LesyncDownload%\' AND "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date_modified > "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->startTime:J

    invoke-virtual {p3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "date_modified"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->endTime:J

    invoke-virtual {p3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date_modified desc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "-1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bucket_display_name not in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' )  AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "date_modified desc"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;-><init>()V

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bucket_id= ? AND "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const/4 p1, 0x1

    new-array v8, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v8, p1

    const-string v9, "date_modified desc"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object p2

    :cond_6
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;-><init>()V

    :goto_3
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    if-nez p5, :cond_a

    return-object v0

    :cond_a
    add-int/2addr p5, p4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p5, p0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p5

    :cond_b
    invoke-interface {v0, p4, p5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private h(ZLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            "II)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "-1"

    if-nez p1, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "bucket_id= ? AND _size > 10240"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "_size > 10240"

    :goto_1
    const-string v3, ""

    if-lez p5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Limit "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " Offset "

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-direct {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string p5, " AND "

    if-nez p4, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v7, v2

    if-eqz p1, :cond_4

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;

    invoke-direct {p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bucket_display_name in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' )  AND _data not like \'%LesyncDownload%\' AND "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "date_modified > "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->startTime:J

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "date_modified"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " < "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->endTime:J

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date_modified desc"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p3, "date_modified desc "

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const/4 v8, 0x0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const/4 p1, 0x1

    new-array v8, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v8, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_7

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v0
.end method

.method private i()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->d:Ljava/util/Map;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->h:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->d:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method private j(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl$a;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private k(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V
    .locals 0

    iput-object p1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketId:Ljava/lang/String;

    iput-object p1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketDisplayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public batchDeleteImage(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            ">;)I"
        }
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public batchUpdateImage(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public createAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public deleteAlbum(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "bucket_id = ?"

    invoke-virtual {p0, v0, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method public deleteAlbum(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "bucket_id IN (?)"

    invoke-virtual {p0, v1, p1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_2

    move v0, v2

    :cond_2
    :goto_1
    return v0
.end method

.method public deleteImage(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Z
    .locals 8

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    iget-wide v6, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v5, v7

    const-string v4, "_id = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    new-array v2, v0, [Ljava/lang/String;

    iget-wide v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v7

    const-string p1, "_id = ?"

    invoke-virtual {p0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v7

    :goto_0
    return v0
.end method

.method public deleteImages(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public forceGetImageThumbnailPath(Ljava/lang/Long;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->h:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const-string v4, "image_id = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->d:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAlbumByAlbumKey(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "-1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v6, "bucket_display_name not in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' ) AND _size > 10240"

    const-string v8, "date_modified desc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->e(Ljava/util/List;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    aput-object p1, v7, v2

    const-string v6, "bucket_id= ? AND _size > 10240"

    const-string v8, "date_modified desc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->b(Ljava/util/List;Landroid/database/Cursor;)V

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getAlbumByTimeline(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;

    invoke-direct {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date_modified > "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->startTime:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " AND "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "date_modified"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " < "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->endTime:J

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bucket_display_name in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' )  AND _data not like \'%LesyncDownload%\' AND _size > 10240"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date_modified desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getAlbumList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->getBaseAlbumList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const-string v5, "bucket_display_name not in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' ) AND _size > 10240"

    const/4 v6, 0x0

    const-string v7, "bucket_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->b(Ljava/util/List;Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->i()V

    return-object v0
.end method

.method public getAlbumStatistics()[I
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const-string v4, "_size > 10240"

    const/4 v5, 0x0

    const-string v6, "bucket_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    aput v2, v0, v1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0
.end method

.method public getAllImageList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const-string v5, "_size > 10240"

    const/4 v6, 0x0

    const-string v7, "bucket_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public getAllImageList(II)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-lez p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Offset "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const/4 v5, 0x0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v4, "_size > 10240"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method public getBaseAlbumList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const-string v5, "bucket_display_name in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' )  AND _size > 10240"

    const/4 v6, 0x0

    const-string v7, "bucket_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->b(Ljava/util/List;Landroid/database/Cursor;)V

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->j(Ljava/util/List;)V

    return-object v0
.end method

.method public getFailedAlbumList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->getChoosers()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->clearUselessImages()V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->clearUselessImage(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object v3

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceCount()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setImagesCount(I)V

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->cleanImage()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->delete(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->signRemove(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->notifyRemove()V

    return-object v1
.end method

.method public getFailedImageListByAlbumKey(Ljava/lang/String;ZII)Ljava/util/List;
    .locals 7
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

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->getChooser(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g(ZLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;II)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->h(ZLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;II)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->i()V

    return-object p1
.end method

.method public getImageListByAlbumKey(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->getImageListByAlbumKey(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImageListByAlbumKey(Ljava/lang/String;II)Ljava/util/List;
    .locals 8
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

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "-1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v5, "bucket_display_name not in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' ) AND _size > 10240"

    const-string v7, "date_modified desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v3

    iput-object v1, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketId:Ljava/lang/String;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->e:Ljava/lang/String;

    iput-object v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketDisplayName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    const-string v5, "bucket_id= ? AND _size > 10240"

    const-string v7, "date_modified desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->i()V

    add-int p0, p2, p3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lt p0, p1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    :cond_4
    if-nez p3, :cond_5

    return-object v0

    :cond_5
    invoke-interface {v0, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImageListByAlbumKeySorted(Ljava/lang/String;II)Ljava/util/List;
    .locals 8
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

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "-1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v5, "bucket_display_name not in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' ) AND _size > 10240"

    const-string v7, "date_modified desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v3

    iput-object v1, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketId:Ljava/lang/String;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->e:Ljava/lang/String;

    iput-object v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketDisplayName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;-><init>()V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    const-string v5, "bucket_id= ? AND _size > 10240"

    const-string v7, "date_modified desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;-><init>()V

    :goto_2
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->i()V

    add-int p0, p2, p3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lt p0, p1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    :cond_5
    if-nez p3, :cond_6

    return-object v0

    :cond_6
    invoke-interface {v0, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImageListByIds(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id in ( "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "bucket_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->i()V

    return-object v0
.end method

.method public getImageListByTimeline(Ljava/lang/String;II)Ljava/util/List;
    .locals 9
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

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date_modified > "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->startTime:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "date_modified"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " < "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->endTime:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bucket_display_name in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' )  AND _data not like \'%LesyncDownload%\' AND _size > 10240"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date_modified desc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->k(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->i()V

    add-int p0, p2, p3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p0, p1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    :cond_3
    if-nez p3, :cond_4

    return-object v1

    :cond_4
    invoke-interface {v1, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImageListByTimelineSorted(Ljava/lang/String;II)Ljava/util/List;
    .locals 9
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

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date_modified > "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->startTime:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "date_modified"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " < "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->endTime:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bucket_display_name in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' )  AND _data not like \'%LesyncDownload%\' AND _size > 10240"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date_modified desc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->k(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;-><init>()V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->i()V

    add-int/2addr p3, p2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lt p3, p0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    :cond_3
    invoke-interface {v1, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImageSizeCount()J
    .locals 6

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    const-string p0, "sum(size)"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "_size > 10240"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v0
.end method

.method public getImageThumbnailMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->d:Ljava/util/Map;

    return-object p0
.end method

.method public getImageThumbnailPath(Ljava/lang/Long;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->h:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v6, 0x0

    const-string v4, "image_id = ?"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->d:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInvalidModifiedDateImageList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const-string v5, "(date_modified= 0 OR date_modified is null) AND _size > 10240"

    const/4 v6, 0x0

    const-string v7, "bucket_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public getNewImageByTimeLine(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "lastBackupPhotoDate"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;-><init>(Ljava/lang/String;)V

    const-string p1, "bucket_display_name in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' )  AND _data not like \'%LesyncDownload%\' AND _size > 10240"

    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND date_modified > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date_modified > "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->startTime:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "date_modified"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " < "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->endTime:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date_modified desc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->c(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->i()V

    return-object v1
.end method

.method public getNewMediaObject()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;
    .locals 8

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const-string v5, "bucket_display_name in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' )  AND _data not like \'%LesyncDownload%\' AND _size > 10240"

    const/4 v6, 0x0

    const-string v7, "date_modified desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->d(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public getNewTimelineAlbumList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    const-string v0, "lastBackupPhotoDate"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->readLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    const-string v1, "bucket_display_name in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' )  AND _data not like \'%LesyncDownload%\' AND _size > 10240"

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND date_modified > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v5, v1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "date_modified desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSimpleAlbumList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->getBaseAlbumList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const-string v5, "bucket_display_name not in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' ) AND _size > 10240"

    const/4 v6, 0x0

    const-string v7, "bucket_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->e(Ljava/util/List;Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->i()V

    return-object v0
.end method

.method public getTimelineAlbumList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->g:[Ljava/lang/String;

    const-string v4, "bucket_display_name in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' )  AND _data not like \'%LesyncDownload%\' AND _size > 10240"

    const/4 v5, 0x0

    const-string v6, "date_modified"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;->f(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public updateAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
