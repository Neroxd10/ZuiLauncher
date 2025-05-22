.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;


# static fields
.field private static c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageDaoImpl;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBVideoDaoImpl;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;->FIT:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    const/16 v0, 0x280

    invoke-static {p1, p0, v0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities;->createThumbnailScaledBitmap(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;II)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->checkAndRotateImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "MediaManager"

    const-string p1, "create thumbnail error"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;JZ)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    if-nez p5, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getImageThumbnailPath(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    move-object p0, v0

    :goto_0
    const/16 p3, 0xc8

    if-nez p0, :cond_1

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;->FIT:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    :goto_1
    invoke-static {p1, p0, p3, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageThumbnailUtils;->createThumbnailScaledBitmapWithSpecialSize(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    :cond_1
    sget-object p4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;->FIT:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    invoke-static {p0, p4, p3, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageThumbnailUtils;->createThumbnailScaledBitmapWithSpecialSize(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;II)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;->FIT:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz p0, :cond_3

    invoke-static {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->checkAndRotateImage(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method private c(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p0, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    iget-object p0, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    iput-object p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->lastModifyTime:Ljava/lang/String;

    iget-object p0, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    iput-object p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    iget-object p0, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getTotalImageCount()I

    move-result p0

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getTotalImageCount()I

    move-result v0

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setTotalImageCount(I)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getImagesCount()I

    move-result p0

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getImagesCount()I

    move-result v0

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setImagesCount(I)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getBackupImagesCount()I

    move-result p0

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->getBackupImagesCount()I

    move-result v0

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setBackupImagesCount(I)V

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    :cond_2
    return-object p1
.end method

.method private d(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    iget-object v3, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    iget-object v2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    if-eqz v2, :cond_1

    invoke-direct {p0, v2, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->c(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    goto :goto_1

    :cond_1
    iget-object v2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl$a;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v1
.end method

.method private e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            ">;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object v2

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object v3

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    invoke-direct {p0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->c(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)V

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceMode()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceMode()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getCheckList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->addCheckList(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getCheckList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->addCheckList(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->setChooserMode(I)V

    :goto_2
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method private f(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;
    .locals 4

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;-><init>()V

    iget-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->tipMediaList:Ljava/util/List;

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->tipMediaList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->tipMediaList:Ljava/util/List;

    iget-object v2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->tipMediaList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->tipMediaList:Ljava/util/List;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->tipMediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->tipMediaList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->mediaCount:I

    iget v2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->mediaCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->mediaCount:I

    iget-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->chooserList:Ljava/util/List;

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->chooserList:Ljava/util/List;

    iget-object p2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;->chooserList:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;-><init>()V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;

    :cond_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAlbumByAlbumKey(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 1

    const-string v0, "-2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;->getVideoAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getAlbumByAlbumKey(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object p0

    return-object p0
.end method

.method public getAlbumByTimeline(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;->getAlbumByTimeline(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getAlbumByTimeline(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->c(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object p0

    return-object p0
.end method

.method public getAlbumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getSimpleAlbumList()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;->getVideoAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getAllMediaList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getAllImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;->getAllVideoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllMediaList(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getAllImageList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFailedAlbumList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getFailedAlbumList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFailedMediaListByAlbumKey(Ljava/lang/String;ZII)Ljava/util/List;
    .locals 2
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getFailedImageListByAlbumKey(Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p3

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    invoke-interface {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;->getFailedVideoListByAlbumKey(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p3, :cond_0

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getCacheKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->getFileCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    const-string p2, "format="

    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getRequestParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "photoId="

    invoke-static {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getRequestParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v1, "isvideo="

    invoke-static {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getRequestParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getRequestPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v7, :cond_3

    const/4 v1, 0x3

    invoke-static {p1, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "original_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;->writeBitmapToFile(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    invoke-interface {p1, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;->getVideoThumbnailPath(J)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    move-object v3, p1

    const-string p1, "original"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_4
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b(Ljava/lang/String;Ljava/lang/String;JZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getMediaCount()[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getAlbumStatistics()[I

    move-result-object v1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;->getAlbumStatistics()[I

    move-result-object p0

    const/4 v2, 0x0

    aget v3, v1, v2

    aget v4, p0, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    aget p0, p0, v2

    add-int/2addr v1, p0

    aput v1, v0, v2

    return-object v0
.end method

.method public getMediaListByAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;II)Ljava/util/List;
    .locals 2
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

    instance-of v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/TimelineAlbum;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->getMediaListByTimeline(Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->getMediaListByAlbumKey(Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMediaListByAlbumKey(Ljava/lang/String;IIZ)Ljava/util/List;
    .locals 2
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "-2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;->getVideoList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getImageListByAlbumKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p4, :cond_1

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    add-int/2addr p3, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p3, p0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    :cond_2
    invoke-interface {v0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getMediaListByModifiedDate(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getInvalidModifiedDateImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;->getInvalidModifiedDateVideoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMediaListByTimeline(Ljava/lang/String;IIZ)Ljava/util/List;
    .locals 3
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getImageListByTimeline(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;->getVideoListByTimeline(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p4, :cond_0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    add-int/2addr p3, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p3, p0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNewMediaByTimeLine(Ljava/lang/String;II)Ljava/util/List;
    .locals 2
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getNewImageByTimeLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;->getNewVideoByTimeLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo$ImageInfoComparator;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/2addr p3, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p3, p0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    :cond_0
    invoke-interface {v0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNewMediaObject()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getNewMediaObject()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;->getNewMediaObject()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->f(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;

    move-result-object p0

    return-object p0
.end method

.method public getNewTimelineAlbumList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getNewTimelineAlbumList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;->getNewTimelineAlbumList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->d(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTimelineAlbumList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getTimelineAlbumList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/VideoDao;->getTimelineAlbumList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/LocalMediaManagerImpl;->d(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
