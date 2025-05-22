.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/ImageManager;


# static fields
.field private static d:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

.field private c:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->a:Landroid/content/Context;

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->c:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, "syncCacheKey="

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 11

    const-string v0, "getImageFromNetWork total time :"

    const-string v1, "ImageManager"

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-direct {v4, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->c:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getImageFromNetWork response time :"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v2

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", url:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v4, 0xc8

    if-ne p1, v4, :cond_1

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImageFromNetWork read time :"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v7

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;->FIT:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;

    const/16 p3, 0x90

    invoke-static {p0, p1, p3, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities;->createSquareScaledThumbnail([BLcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ScalingUtilities$ScalingLogic;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    array-length p1, p0

    invoke-static {p0, v6, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->parseImageFormat([B)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;

    move-result-object p3

    invoke-virtual {p3, p2, p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v2

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "getImageFromNetWork error ,return"

    invoke-static {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;

    :cond_0
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public createAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->createAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public deleteAlbum(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->deleteAlbum(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public deleteAlbum(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->deleteAlbum(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public deleteImage(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->batchDeleteImage(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public deleteImage(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->deleteImage(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Z

    move-result p0

    return p0
.end method

.method public getAlbumList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getAlbumList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAlbumStatistics()[I
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getAlbumStatistics()[I

    move-result-object p0

    return-object p0
.end method

.method public getAllImageList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllImageList(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBaseAlbumList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getBaseAlbumList()Ljava/util/List;

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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getFailedAlbumList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFailedImageListByAlbumKey(Ljava/lang/String;ZII)Ljava/util/List;
    .locals 0
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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getFailedImageListByAlbumKey(Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getCacheKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->getFileCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "format="

    invoke-static {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getRequestParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "original"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getImageListByAlbumKey(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getImageListByAlbumKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImageListByAlbumKey(Ljava/lang/String;II)Ljava/util/List;
    .locals 0
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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getImageListByAlbumKey(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImageListByAlbumKeySorted(Ljava/lang/String;II)Ljava/util/List;
    .locals 0
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

    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->getImageListByAlbumKey(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImageListByIds(Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getImageListByIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImageListByTimeline(Ljava/lang/String;II)Ljava/util/List;
    .locals 0
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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getImageListByTimeline(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImageListByTimelineSorted(Ljava/lang/String;II)Ljava/util/List;
    .locals 0
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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getImageListByTimelineSorted(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSimpleAlbumList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getSimpleAlbumList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSquareScaledImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getCacheKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public getTimelineAlbumList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getTimelineAlbumList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public updateAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudImageManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->updateAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Z

    move-result p0

    return p0
.end method
