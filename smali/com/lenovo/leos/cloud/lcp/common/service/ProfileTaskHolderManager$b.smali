.class Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->genProgressListener(I)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field final synthetic b:I

.field final synthetic c:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;->c:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;->c:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->getProgressListener()Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;->c:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;->b:I

    invoke-static {v0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->d(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;->c:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->c(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;->c:Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;->c(Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/service/ProfileTaskHolderManager$b;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
