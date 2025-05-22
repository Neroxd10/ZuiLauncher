.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe$a;->b:Ljava/lang/String;

    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe$a;->a:J

    return-void
.end method


# virtual methods
.method public requestIntercepter(JJ)Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe$a;->a:J

    cmp-long p0, p3, v0

    if-nez p0, :cond_0

    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe$AppDownloadRequestIntercepter;

    const-wide/16 p1, -0x1

    invoke-direct {p0, p1, p2, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe$AppDownloadRequestIntercepter;-><init>(JJ)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe$AppDownloadRequestIntercepter;

    add-long/2addr p3, p1

    const-wide/16 v0, 0x1

    sub-long/2addr p3, v0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe$AppDownloadRequestIntercepter;-><init>(JJ)V

    return-object p0
.end method

.method public requestURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public verifyResponse(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
