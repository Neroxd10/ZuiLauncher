.class Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;->update(Ljava/util/Observable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/NetworkTaskExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/NetWorkUtil;->isServerReachable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/TaskNetworkKeeper;->notifyTask()V

    :cond_0
    return-void
.end method
