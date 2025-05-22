.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->s(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$e;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$e;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$e;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$e;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/StreamGobbler$OnLineListener;->onLine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$e;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->c(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$e;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->c(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;)V

    throw v0
.end method
