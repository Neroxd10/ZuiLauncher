.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/ImageDao;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

.field private g:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;

.field private h:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->h:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    const-string p0, "count"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "albumlist"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    invoke-direct {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;-><init>()V

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    const-string v5, "cover"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    const-string v5, "mediaType"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-direct {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;-><init>()V

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    new-instance v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

    invoke-direct {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;-><init>()V

    :cond_0
    iget-object v5, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v5, v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    iget-object v5, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->indexImagePath:Ljava/lang/String;

    iput-object v5, v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->thumbnail:Ljava/lang/String;

    iput-object v6, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->coverImage:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setTotalImageCount(I)V

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setImagesCount(I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "result"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "photolist"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-direct {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;-><init>()V

    const-string v4, "mediaType"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;

    invoke-direct {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/VideoImageInfo;-><init>()V

    :cond_0
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    iput-object p1, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->bucketId:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->title:Ljava/lang/String;

    const-string v4, "url"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->dataPath:Ljava/lang/String;

    const-string v4, "thumbnail"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->thumbnail:Ljava/lang/String;

    const-string v4, "size"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->size:J

    const-string v4, "downurl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->downUrl:Ljava/lang/String;

    const-string v4, "cacheKey"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->cacheKey:Ljava/lang/String;

    const-string v4, "origin"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->originalAdlerKey:Ljava/lang/String;

    const-string v4, "compressed"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->realAdlerKey:Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query imageList error,errorCode:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",response:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "v3/albumquery"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "v4/photoquery"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "v2/countall"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "v4/photodel"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->e:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->c:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "v3/queryrevertphotoinfo"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->c:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method private e(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->f(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->h:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)[B

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->ungzip([B)[B

    move-result-object p0

    :cond_0
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method private g(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->h(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->gzip([B)[B

    move-result-object p2

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->h:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[B)[B

    move-result-object p0

    if-eqz p3, :cond_1

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->ungzip([B)[B

    move-result-object p0

    :cond_1
    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method private i(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->originalAdlerKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->getByAdler(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->f:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/vo/PrivateDBImageVO;->uid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/ImagePrivateDBDao;->updateBackupTag(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public batchDeleteImage(Ljava/util/List;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumImageCount()I

    move-result v3

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_2

    div-int/lit16 v3, v3, 0x1f4

    add-int/lit8 v9, v3, 0x1

    const/16 v10, 0x1f4

    move v11, v0

    move v12, v11

    :goto_1
    if-ge v11, v9, :cond_3

    const/4 v5, 0x0

    int-to-long v7, v1

    move-object v3, p0

    move-object v4, v2

    move v6, v10

    invoke-virtual/range {v3 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->pagedDeleteImages(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;IIJ)I

    move-result v3

    add-int/2addr v12, v3

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceCount()I

    move-result v3

    if-ne v12, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    const/16 v6, 0x1f4

    int-to-long v7, v1

    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->pagedDeleteImages(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;IIJ)I

    move-result v2

    add-int/lit8 v12, v2, 0x0

    :cond_3
    :goto_2
    add-int/2addr v1, v12

    goto :goto_0

    :cond_4
    return v1
.end method

.method public batchUpdateImage(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public createAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Ljava/lang/String;
    .locals 4

    const-string v0, "v3/albumadd"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "summary"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->g(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/HttpUtils;->isSuccess(Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "albumid"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/HttpUtils;->trace(Lorg/json/JSONObject;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public deleteAlbum(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v3/albumdel?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->e(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/HttpUtils;->isSuccess(Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/HttpUtils;->trace(Lorg/json/JSONObject;)V

    const/4 p0, 0x0

    return p0
.end method

.method public deleteAlbum(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->deleteAlbum(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public deleteImage(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Z
    .locals 4

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    iget-wide v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "photoid"

    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->h:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v2, v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->i(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    return v0
.end method

.method public deleteImages(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    iget-wide v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;->_id:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "photoid"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->h:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v2, v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->i(Ljava/util/List;Ljava/util/List;)V

    :cond_2
    return v4
.end method

.method public getAlbumByAlbumKey(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAlbumByTimeline(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAlbumList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?ys=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->f(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAlbumStatistics()[I
    .locals 3

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->e(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "result"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    const-string v2, "album_count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, p0

    const/4 p0, 0x1

    const-string v2, "photo_count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, p0

    :cond_0
    return-object v0
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

    const/4 p0, 0x0

    return-object p0
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

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->clearUselessImages()V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->clearUselessImage(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceCount()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->setImagesCount(I)V

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->cleanImage()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->g:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/DBImageChooserDao;->delete(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->signRemove(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->notifyRemove()V

    return-object v1
.end method

.method public getFailedImageListByAlbumKey(Ljava/lang/String;ZII)Ljava/util/List;
    .locals 5
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

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ChooserUtils;->getChooser(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d()V

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getUnchoiceImageIds()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getChoiceImageIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "album"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "op"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p4, :cond_3

    const-string p2, "offset"

    invoke-virtual {v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "limit"

    invoke-virtual {v3, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    if-eqz v0, :cond_5

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string p3, "correct"

    invoke-virtual {v3, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v2, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->g(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
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

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->getImageListByAlbumKey(Ljava/lang/String;II)Ljava/util/List;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->getImageListByAlbumKeySorted(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getImageListByAlbumKeySorted(Ljava/lang/String;II)Ljava/util/List;
    .locals 3
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

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?ys=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "albumid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string v2, "offset"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "limit"

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, v0, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->h(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

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

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d()V

    const/4 p0, 0x0

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

    const/4 p0, 0x0

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageSizeCount()J
    .locals 2

    const-wide/16 v0, 0x0

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

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageThumbnailPath(Ljava/lang/Long;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->d()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInvalidModifiedDateImageList()Ljava/util/List;
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

.method public getNewImageByTimeLine(Ljava/lang/String;)Ljava/util/List;
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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNewMediaObject()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;
    .locals 0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/NewMediaObject;-><init>()V

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public pagedDeleteImages(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;IIJ)I
    .locals 0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->getAlbumKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->getImageListByAlbumKey(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-virtual {p1, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;->isChoseImage(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Z

    move-result p5

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->deleteImages(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public updateAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)Z
    .locals 4

    const-string v0, "v3/albumupdate"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "desc"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/dao/impl/NetWorkImageDaoImpl;->g(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/HttpUtils;->isSuccess(Lorg/json/JSONObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/AlbumUtils;->getNormalAlbum()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;

    move-result-object v0

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/AlbumUtils;->saveNormalAlbum(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/Album;)V

    :cond_0
    return p0
.end method
