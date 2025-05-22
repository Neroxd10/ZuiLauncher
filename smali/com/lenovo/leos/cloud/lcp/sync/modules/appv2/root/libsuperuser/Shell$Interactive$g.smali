.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->r()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLine(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->e(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->e(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;->d(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->e(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;->d(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->l(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;Ljava/lang/String;)Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->h(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->m(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    invoke-static {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->i(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$g;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->n(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->k(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
