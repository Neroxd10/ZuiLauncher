.class Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;->B(Ljava/util/Map;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$c;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$c;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;->h(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    move-result-object v0

    const-string v1, "v4/photo/move"

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/PhotoUtils;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v1

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchUploadTask$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
