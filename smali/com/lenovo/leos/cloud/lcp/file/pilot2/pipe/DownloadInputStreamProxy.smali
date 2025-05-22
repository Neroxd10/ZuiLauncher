.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;->b:J

    return-void
.end method


# virtual methods
.method public download(Ljava/io/InputStream;)V
    .locals 0

    return-void
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;->b:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/DownloadInputStreamProxy;->a:Ljava/lang/String;

    return-object p0
.end method
