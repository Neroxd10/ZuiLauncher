.class Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->startActiveListen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    const-string p0, "TaskNetworkKeeper"

    const-string v0, "try to check isServerReachable"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/NetWorkUtil;->isServerReachable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->d()Ljava/util/Observable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void

    :cond_0
    const-wide/32 v0, 0xea60

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
