.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

.field private final b:J

.field private final c:J

.field private d:J


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->b:J

    iput-wide p4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->c:J

    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->d:J

    return-void
.end method

.method private a(I)I
    .locals 4

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->c:J

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->d:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->b:J

    add-long/2addr v0, v2

    long-to-int p0, v0

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    return p1
.end method


# virtual methods
.method public read()I
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->a(I)I

    move-result v1

    if-lez v1, :cond_1

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->d:J

    invoke-interface {v2, v0, v3, v4, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->read([BJI)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->d:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->d:J

    const/4 p0, 0x0

    aget-byte p0, v0, p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Pipline should have data, but can\'t read more!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public read([B)I
    .locals 4

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->a(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->d:J

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->read([BJI)I

    move-result p1

    if-lez p1, :cond_0

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;->d:J

    :cond_0
    return p1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
