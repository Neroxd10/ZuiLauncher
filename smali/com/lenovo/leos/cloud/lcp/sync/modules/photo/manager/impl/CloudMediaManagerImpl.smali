.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/MediaManager;


# static fields
.field private static c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

.field private b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

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

    const-string v1, "MediaManager"

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->a(Ljava/lang/String;)Ljava/lang/String;

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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

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

.method public static declared-synchronized getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;-><init>()V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;

    :cond_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;
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
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getAlbumByAlbumKey(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object p0

    return-object p0
.end method

.method public getAlbumByTimeline(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getAlbumByTimeline(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object p0

    return-object p0
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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getAlbumList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllMediaList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getAllImageList()Ljava/util/List;

    move-result-object p0

    return-object p0
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

    const/4 p0, 0x0

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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getFailedAlbumList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFailedMediaListByAlbumKey(Ljava/lang/String;ZII)Ljava/util/List;
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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getFailedImageListByAlbumKey(Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

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
    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->b(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMediaCount()[I
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getAlbumStatistics()[I

    move-result-object p0

    return-object p0
.end method

.method public getMediaListByAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;II)Ljava/util/List;
    .locals 1
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

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->getMediaListByAlbumKey(Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMediaListByAlbumKey(Ljava/lang/String;IIZ)Ljava/util/List;
    .locals 0
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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    if-eqz p4, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getImageListByAlbumKeySorted(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getImageListByAlbumKey(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMediaListByModifiedDate(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMediaListByTimeline(Ljava/lang/String;IIZ)Ljava/util/List;
    .locals 0
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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    if-eqz p4, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getImageListByTimelineSorted(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getImageListByTimeline(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNewMediaByTimeLine(Ljava/lang/String;II)Ljava/util/List;
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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNewTimelineAlbumList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
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

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/manager/impl/CloudMediaManagerImpl;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;->getTimelineAlbumList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
