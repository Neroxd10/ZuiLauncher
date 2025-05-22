.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;
.super Lorg/apache/http/entity/mime/content/AbstractContentBody;
.source ""


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;)V
    .locals 8

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->contentType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/entity/mime/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;->contentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->a:J

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;

    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->a:J

    const-wide/16 v4, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;)V

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->a:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 0

    const-string p0, "binary"

    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeContentBody;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->i(Ljava/io/OutputStream;)V

    return-void
.end method
