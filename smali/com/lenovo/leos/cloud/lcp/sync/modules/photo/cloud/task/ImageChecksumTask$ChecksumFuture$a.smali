.class Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ImageChecksumResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture$a;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ImageChecksumResult;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageChecksumComputePool;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture$a;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageChecksumComputePool;->compute(Ljava/util/List;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageChecksumComputePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/util/ImageChecksumComputePool;->waitFinish()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture$a;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture$a;->b:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask;->getCloudExistImage(Ljava/lang/String;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ImageChecksumResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ChecksumFuture$a;->a()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageChecksumTask$ImageChecksumResult;

    move-result-object p0

    return-object p0
.end method
