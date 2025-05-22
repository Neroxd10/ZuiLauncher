.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;

.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$d;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$d;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;

    iput p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$d;->b:I

    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$d;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$d;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$d;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;)I

    move-result v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$d;->b:I

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$d;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;->onCommandResult(IILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$d;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->c(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$d;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->c(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;)V

    throw v0
.end method
