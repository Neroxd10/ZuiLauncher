.class Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(II)V
    .locals 7

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v6

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->c(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-result-object v1

    int-to-long v2, p1

    int-to-long v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
