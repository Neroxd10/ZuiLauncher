.class Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->isUserLogin()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "LenovoUserStatusReceiver"

    if-nez p0, :cond_0

    :try_start_1
    const-string p0, "sdk \u68c0\u6d4b\u5230\u5e10\u53f7\u767b\u51fa"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p0, 0x0

    :try_start_2
    const-string v1, "version"

    invoke-static {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SettingTools;->saveInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->clear()V

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->clearData()V

    const-string v1, "sdk \u5df2\u6e05\u7a7a\u65e5\u7a0b\u79c1\u6709\u6570\u636e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    :try_start_3
    const-string v1, "sdk \u6e05\u7a7a\u65e5\u7a0b\u79c1\u6709\u6570\u636e\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;->notifyObservable(Z)V

    goto :goto_1

    :cond_0
    const-string p0, "sdk \u68c0\u6d4b\u5230\u5e10\u53f7\u767b\u5f55"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;->notifyObservable(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
