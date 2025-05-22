.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source ""


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V
    .locals 7

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    new-instance v6, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;JJ)V

    iput-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->a()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->c()Z

    move-result p0

    return p0
.end method

.method public isStreaming()Z
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->d()Z

    move-result p0

    return p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipeEntity;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/a;->i(Ljava/io/OutputStream;)V

    return-void
.end method
