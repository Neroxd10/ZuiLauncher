.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/TaskAssistant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator$a;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    return-void
.end method


# virtual methods
.method public requestIntercepter(JJ)Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;
    .locals 10

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator$a;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->partNumber(J)I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator$a;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->isLastOffset(J)Z

    move-result v1

    new-instance v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator$WriteObjectRequestIntercepter;

    int-to-long v3, v0

    move-object v2, v9

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator$WriteObjectRequestIntercepter;-><init>(JJJ)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v9, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator$WriteObjectRequestIntercepter;->setHeaders(Ljava/util/Map;)V

    invoke-virtual {v9, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator$WriteObjectRequestIntercepter;->setCommit(Z)V

    return-object v9
.end method

.method public requestURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/backup/AppUploadOperator$a;->a:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;->getTarget()Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    return-object p0
.end method

.method public verifyResponse(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
