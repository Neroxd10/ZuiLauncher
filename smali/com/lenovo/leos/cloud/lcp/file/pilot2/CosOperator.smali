.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

.field private b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

.field private c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->d:I

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;->getInstance()Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "keys"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;I)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/v2/bucket/ops/batch-create/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?object_count="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getCosURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V

    return-object p2
.end method

.method private c(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/v2/object/ops/batch-download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getIocosURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V

    return-object v0
.end method

.method private d(Ljava/util/List;Ljava/util/List;)Lorg/apache/http/entity/mime/MultipartEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            ">;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;",
            ">;)",
            "Lorg/apache/http/entity/mime/MultipartEntity;"
        }
    .end annotation

    new-instance p0, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private e(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/v2/object/ops/batch-upload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getIocosURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V

    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            ">;"
        }
    .end annotation

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;-><init>()V

    const-string v3, "bucket_name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setBucketName(Ljava/lang/String;)V

    const-string v3, "key"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setKey(Ljava/lang/String;)V

    const-string v3, "location"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setLocation(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private g(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    .locals 1

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;-><init>()V

    const-string v0, "bucket_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setBucketName(Ljava/lang/String;)V

    const-string v0, "key"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setKey(Ljava/lang/String;)V

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setLocation(Ljava/lang/String;)V

    const-string v0, "upload_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setUploadId(Ljava/lang/String;)V

    return-object p1
.end method

.method private h(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/v2/object/multipart/init/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getIocosURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V

    return-object v0
.end method

.method private i(Ljava/io/Serializable;Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;J)Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;
    .locals 8

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->d:I

    const-wide/32 v4, 0x100000

    const-wide/32 v6, 0x100000

    move-object v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->newInstance(Ljava/io/Serializable;IJJJ)Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    move-result-object p0

    return-object p0
.end method

.method private j(Lorg/json/JSONObject;Ljava/io/InputStream;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V
    .locals 1

    const-string p0, "key"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "length"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;IZ)[B

    move-result-object p1

    invoke-interface {p3, p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;->onVisit(Ljava/lang/String;[B)V

    return-void
.end method

.method private k(Lorg/apache/http/HttpResponse;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "X-Lenovows-OSS-Meta-Length"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    aget-object p1, p1, v1

    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v2, p1, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;IZ)[B

    move-result-object p1

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5, v2, p3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->j(Lorg/json/JSONObject;Ljava/io/InputStream;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V

    int-to-long v7, v4

    int-to-long v9, v3

    const/4 v11, 0x0

    move-object v6, p2

    invoke-interface/range {v6 .. v11}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    new-array p1, v0, [Ljava/io/Closeable;

    aput-object v2, p1, v1

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw p0
.end method

.method private l(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->m(Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "success_keys"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setWritten(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static m(Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne v0, p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Network error, check if wlan is authenticated"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public batchCreateObject(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;)V

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->b(Ljava/lang/String;I)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object p1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    const-string p2, "Server return non-JSON format content"

    invoke-direct {p1, p2, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public batchDownload(Ljava/util/List;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->c(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object p2

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->k(Lorg/apache/http/HttpResponse;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus50XException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public batchWriteObject(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            ">;",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->e(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object p1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->getSessionId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/pilot2/b;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-direct {v2, v3, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/b;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    invoke-direct {p0, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->d(Ljava/util/List;Ljava/util/List;)Lorg/apache/http/entity/mime/MultipartEntity;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {v0, p3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->l(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus50XException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cosList Size must equal to pipeList Size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createObject(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/a;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;)V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->h(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object p1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->g(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Server return non-JSON format content"

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setConfig(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;)V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->clone()Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CosOperator"

    const-string v2, "Config CloneNotSupportedException, set itself"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    :cond_0
    :goto_0
    return-void
.end method

.method public setWriteThreadCount(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->d:I

    return-void
.end method

.method public writeObject(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;",
            ")",
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ThreadTask;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    if-nez p3, :cond_0

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->i(Ljava/io/Serializable;Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;J)Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    move-result-object p3

    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/d;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-direct {v0, v1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/d;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)V

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->contentType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/d;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;

    invoke-virtual {p0, p1, v0, p3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/MultiTaskExecutor;->writeObject(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "inputPipe  contentLength() must >0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
