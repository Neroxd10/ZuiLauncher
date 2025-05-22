.class public Lcom/lidroid/xutils/http/client/entity/GZipDecompressingEntity;
.super Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;
.source ""


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method decorate(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p0
.end method

.method public bridge synthetic getContent()Ljava/io/InputStream;
    .locals 0

    invoke-super {p0}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getContentLength()J
    .locals 2

    invoke-super {p0}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V

    return-void
.end method

.method public bridge synthetic writeTo(Ljava/io/OutputStream;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
