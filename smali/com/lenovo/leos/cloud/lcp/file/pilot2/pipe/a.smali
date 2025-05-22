.class Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

.field private b:Z

.field private final c:J

.field private final d:J

.field private e:Z

.field private f:[B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->e:Z

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->f:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->g:I

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->c:J

    iput-wide p4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->d:J

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->isRepeatable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->b:Z

    return-void
.end method

.method private e([BJI)I
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->c:J

    sub-long v0, p2, v0

    long-to-int v0, v0

    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->e:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->b:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->g:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->f([BJI)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Read data failed! parameter currentOffset should be wrong!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->g([BJI)I

    move-result p0

    return p0
.end method

.method private f([BJI)I
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->c:J

    sub-long/2addr p2, v0

    long-to-int p2, p2

    iget p3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->g:I

    sub-int/2addr p3, p2

    if-le p3, p4, :cond_0

    goto :goto_0

    :cond_0
    move p4, p3

    :goto_0
    if-lez p4, :cond_1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->f:[B

    const/4 p3, 0x0

    invoke-static {p0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return p4
.end method

.method private g([BJI)I
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->read([BJI)I

    move-result p4

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->b:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->c:J

    sub-long/2addr p2, v0

    long-to-int p2, p2

    iget p3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->g:I

    if-ne p2, p3, :cond_1

    iget-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->f:[B

    if-nez p3, :cond_0

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->d:J

    long-to-int p3, v0

    new-array p3, p3, [B

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->f:[B

    :cond_0
    const/4 p3, 0x0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->f:[B

    invoke-static {p1, p3, v0, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->g:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->g:I

    :cond_1
    return p4
.end method

.method private h(J)I
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->d:J

    sub-long/2addr v0, p1

    iget-wide p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->c:J

    add-long/2addr v0, p0

    long-to-int p0, v0

    const/16 p1, 0x1000

    if-le p0, p1, :cond_0

    move p0, p1

    :cond_0
    return p0
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 7

    new-instance v6, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->c:J

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->d:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeInputStream;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V

    return-object v6
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->d:J

    return-wide v0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i(Ljava/io/OutputStream;)V
    .locals 7

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->c:J

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->h(J)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->e([BJI)I

    move-result v5

    if-eq v5, v3, :cond_0

    const-string v3, "InputPipeWriteToSupport"

    const-string v6, "WARNING: Not excepted data to read from pipeline, there must be some problem."

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v5, :cond_1

    invoke-virtual {p1, v0, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v5

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->e:Z

    return-void
.end method
