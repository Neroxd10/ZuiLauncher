.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObservable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$a;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdk onReceive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LenovoUserStatusReceiver"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
