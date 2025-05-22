.class Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

    invoke-static {p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "net onReceive:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Cai"

    invoke-static {v0, p2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper$b;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->c(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->d()Ljava/util/Observable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    :cond_0
    return-void
.end method
