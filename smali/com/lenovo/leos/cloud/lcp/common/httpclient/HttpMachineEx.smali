.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;
.super Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;
.source ""


# instance fields
.field private h:J

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->h:J

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->i:J

    return-void
.end method


# virtual methods
.method public getBytesWithFlowRecord(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B
    .locals 4

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)[B

    move-result-object p1

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->h:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->h:J

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->ungzip([B)[B

    move-result-object p1

    :cond_0
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->i:J

    array-length p2, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->i:J

    return-object p1
.end method

.method public getGzipFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->i:J

    return-wide v0
.end method

.method public getRealFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->h:J

    return-wide v0
.end method

.method public getTextWithFlowRecord(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->getBytesWithFlowRecord(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method public post4TextWithFlowRecord(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->post4TextWithFlowRecord(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public post4TextWithFlowRecord(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;
    .locals 5

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->gzip([B)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->h:J

    array-length p2, p2

    int-to-long v3, p2

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->h:J

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->i:J

    array-length p2, v0

    int-to-long v3, p2

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->i:J

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[B)[B

    move-result-object p1

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->h:J

    array-length p2, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->h:J

    if-eqz p3, :cond_1

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->ungzip([B)[B

    move-result-object p1

    :cond_1
    iget-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->i:J

    array-length v0, p1

    int-to-long v0, v0

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->i:J

    new-instance p0, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-direct {p0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method public resetFlow()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->h:J

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpMachineEx;->i:J

    return-void
.end method
