.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LsfUserStatusObserver"
.end annotation


# static fields
.field private static b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObservable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;->a:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;

    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;

    return-object v0
.end method


# virtual methods
.method public addObservable(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObservable;)V
    .locals 2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyObservable(Z)V
    .locals 2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObservable;

    if-eqz p1, :cond_0

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObservable;->onLsfLogin()V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObservable;->onLsfLogout()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeObservable(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObservable;)V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/auto/LenovoUserStatusReceiver$LsfUserStatusObserver;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
