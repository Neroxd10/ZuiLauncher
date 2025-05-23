.class public Lcom/zui/launcher/pm/UserCache;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/launcher/pm/UserCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/UserManager;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/zui/launcher/util/SimpleBroadcastReceiver;

.field private e:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/launcher/pm/e;->a:Lcom/zui/launcher/pm/e;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/launcher/pm/UserCache;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/pm/UserCache;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/zui/launcher/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/zui/launcher/pm/c;

    invoke-direct {v1, p0}, Lcom/zui/launcher/pm/c;-><init>(Lcom/zui/launcher/pm/UserCache;)V

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/zui/launcher/pm/UserCache;->d:Lcom/zui/launcher/util/SimpleBroadcastReceiver;

    iput-object p1, p0, Lcom/zui/launcher/pm/UserCache;->a:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/zui/launcher/pm/UserCache;->b:Landroid/os/UserManager;

    return-void
.end method

.method private a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/pm/UserCache;->e:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/pm/UserCache;->f:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/zui/launcher/pm/UserCache;->b:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/zui/launcher/pm/UserCache;->b:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/zui/launcher/pm/UserCache;->e:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v4, p0, Lcom/zui/launcher/pm/UserCache;->f:Landroid/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic b(Lcom/zui/launcher/pm/UserCache;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/pm/UserCache;->e(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;)Lcom/zui/launcher/pm/UserCache;
    .locals 1

    new-instance v0, Lcom/zui/launcher/pm/UserCache;

    invoke-direct {v0, p0}, Lcom/zui/launcher/pm/UserCache;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private e(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/pm/UserCache;->a()V

    iget-object p0, p0, Lcom/zui/launcher/pm/UserCache;->c:Ljava/util/ArrayList;

    sget-object p1, Lcom/zui/launcher/pm/a;->a:Lcom/zui/launcher/pm/a;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    sget-boolean p0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string p1, "b/159671700"

    const-string v0, "profile changed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private f(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/pm/UserCache;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/zui/launcher/pm/UserCache;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/pm/UserCache;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/zui/launcher/pm/UserCache;->d:Lcom/zui/launcher/util/SimpleBroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/pm/UserCache;->e:Landroid/util/LongSparseArray;

    iput-object p1, p0, Lcom/zui/launcher/pm/UserCache;->f:Landroid/util/ArrayMap;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addUserChangeListener(Ljava/lang/Runnable;)Lcom/zui/launcher/util/SafeCloseable;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/pm/UserCache;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/pm/UserCache;->d:Lcom/zui/launcher/util/SimpleBroadcastReceiver;

    iget-object v1, p0, Lcom/zui/launcher/pm/UserCache;->a:Landroid/content/Context;

    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/pm/UserCache;->a()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/pm/UserCache;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/zui/launcher/pm/d;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/pm/d;-><init>(Lcom/zui/launcher/pm/UserCache;Ljava/lang/Runnable;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic d(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/pm/UserCache;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/pm/UserCache;->f:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/pm/UserCache;->f:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/zui/launcher/pm/UserCache;->b:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p0

    return-wide p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getUserForSerialNumber(J)Landroid/os/UserHandle;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/pm/UserCache;->e:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/pm/UserCache;->e:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    monitor-exit p0

    return-object p1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/zui/launcher/pm/UserCache;->b:Landroid/os/UserManager;

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/pm/UserCache;->e:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/launcher/pm/UserCache;->f:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/zui/launcher/pm/UserCache;->b:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
