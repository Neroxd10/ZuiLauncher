.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:Landroid/net/Uri;

.field private static f:J

.field private static final g:Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

.field private c:Ljava/util/Map;
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
    .locals 17

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/DeviceUtil;->isEnglishLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Video"

    goto :goto_0

    :cond_0
    const-string v0, "\u89c6\u9891"

    :goto_0
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->d:Ljava/lang/String;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    const-wide/32 v0, 0x1f400000

    sput-wide v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->f:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket_display_name in (  \'Pictures\' ,\'pictures\' , \'Camera\',\'camera\', \'\u76f8\u673a\', \'\u76f8\u673a\u62cd\u6444\', \'Photo\', \'photo\', \'DCIM\' , \'dcim\' , \'Video\', \'video\' ) AND _data not like \'%LesyncDownload%\' AND _size < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g:Ljava/lang/String;

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

    const-string v16, "_size"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "video_id"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->c:Ljava/util/Map;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

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

.method private b(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;Landroid/database/Cursor;)V
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

    invoke-direct {v10, v1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

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

.method private c(Landroid/database/Cursor;Z)Ljava/util/List;
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

    invoke-direct {v10, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

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

.method private d(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

    move-result-object v3

    const-string v4, ""

    if-nez v0, :cond_1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;-><init>()V

    const-string v5, "-2"

    iput-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->d:Ljava/lang/String;

    iput-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    iget-object v5, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iput-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setImagesCount(I)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setTotalImageCount(I)V

    goto :goto_1

    :cond_1
    iget-wide v5, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    iget-object v7, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iput-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dateModified:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iput-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    :cond_5
    :goto_1
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setBackupImagesCount(I)V

    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v0
.end method

.method private e(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;
    .locals 5

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;-><init>()V

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

    if-nez p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getPhotoLocalUID(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->getByUidCached(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->isBackup:I

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->originalAdler:Ljava/lang/String;

    iput-object p0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->originalAdlerKey:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    iput v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackup:I

    :cond_2
    return-object v0
.end method

.method private f(ZLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g:Ljava/lang/String;

    move-object/from16 v4, p3

    invoke-direct {v0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, " AND "

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    move-object v10, v3

    if-eqz p1, :cond_2

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;

    invoke-direct {v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    sget-object v13, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date_modified > "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->startTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "date_modified"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->endTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const-string v16, "date_modified desc"

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {v0, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v3, "-2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    sget-object v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "date_modified desc"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {v0, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v2
.end method

.method private g(ZLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "-2"

    if-nez p1, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bucket_id= ? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g:Ljava/lang/String;

    :goto_1
    move-object/from16 v5, p3

    invoke-direct {v0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, " AND "

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    move-object v11, v4

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;

    invoke-direct {v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    sget-object v14, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date_modified > "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->startTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "date_modified"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->endTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const-string v17, "date_modified desc"

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    sget-object v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "date_modified desc"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :cond_4
    :goto_2
    if-eqz v4, :cond_6

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {v0, v4, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v2
.end method

.method private h()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->c:Ljava/util/Map;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->i:[Ljava/lang/String;

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

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->c:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method private i(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V
    .locals 0

    iput-object p1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketId:Ljava/lang/String;

    iput-object p1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketDisplayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
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
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

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

.method public getAlbumByTimeline(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;

    invoke-direct {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

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

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "date_modified desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->c(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object v0

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

.method public getAlbumStatistics()[I
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g:Ljava/lang/String;

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

.method public getAllVideoList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g:Ljava/lang/String;

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

    invoke-direct {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public getFailedVideoListByAlbumKey(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
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

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->getChooser(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-direct {p0, p2, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->f(ZLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g(ZLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h()V

    return-object p1
.end method

.method public getInvalidModifiedDateVideoList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(date_modified= 0 OR date_modified is null) AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

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

    invoke-direct {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public getNewMediaObject()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;
    .locals 7

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;-><init>()V

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "date_modified desc"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public getNewTimelineAlbumList()Ljava/util/List;
    .locals 7
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

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g:Ljava/lang/String;

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND date_modified > "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v4, v0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "date_modified desc"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->c(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNewVideoByTimeLine(Ljava/lang/String;)Ljava/util/List;
    .locals 9
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

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date_modified > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->startTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "date_modified"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " < "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;->endTime:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND date_modified > "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v4, v0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "date_modified desc"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->isBackuped()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h()V

    return-object p1
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

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "date_modified"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->c(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVideoAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 7

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "bucket_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->d(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object p0

    return-object p0
.end method

.method public getVideoList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "date_modified desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

    move-result-object v3

    const-string v4, "-2"

    iput-object v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketId:Ljava/lang/String;

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketDisplayName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h()V

    return-object v0
.end method

.method public getVideoListByTimeline(Ljava/lang/String;)Ljava/util/List;
    .locals 9
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

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/TimelineVO;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e:Landroid/net/Uri;

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h:[Ljava/lang/String;

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

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->g:Ljava/lang/String;

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

    invoke-direct {p0, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->e(Landroid/database/Cursor;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->i(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->h()V

    return-object v1
.end method

.method public getVideoThumbnailPath(J)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->i:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v6, 0x0

    const-string v4, "video_id = ?"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->c:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
