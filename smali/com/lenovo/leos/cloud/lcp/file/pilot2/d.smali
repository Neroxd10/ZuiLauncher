.class Lcom/lenovo/leos/cloud/lcp/file/pilot2/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;


# instance fields
.field private final a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

.field private final b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

.field private final c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

.field private volatile d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/d;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/d;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/d;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/d;->d:Ljava/lang/String;

    return-void
.end method

.method public requestIntercepter(JJ)Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;
    .locals 11

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/d;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->partNumber(J)I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/d;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->isLastOffset(J)Z

    move-result v1

    new-instance v10, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/d;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    int-to-long v4, v0

    move-object v2, v10

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;JJJ)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/d;->d:Ljava/lang/String;

    invoke-virtual {v10, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->b(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->a(Z)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/d;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->getUploadId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/c;->c(Ljava/lang/String;)V

    return-object v10
.end method

.method public requestURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 5

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/d;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->getAppServerCallbackData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/d;->b:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->getPartWriteLocation()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getNetDiskServer3()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HostURIRoller;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-direct {v1, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V

    return-object v0
.end method

.method public verifyResponse(Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cos response is not JSON, check if network setting issue."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
