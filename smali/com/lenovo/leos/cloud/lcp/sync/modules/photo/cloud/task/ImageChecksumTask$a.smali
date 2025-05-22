.class Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$Executer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->getCloudExistImage(Ljava/lang/String;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ImageChecksumResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

.field final synthetic b:Lorg/json/JSONArray;

.field final synthetic c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$a;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$a;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$a;->b:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$a;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$a;->a:Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$a;->b:Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
