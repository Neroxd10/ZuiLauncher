.class public Lcom/android/systemui/shared/plugins/PluginManagerImpl;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/plugins/PluginManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/plugins/PluginManagerImpl$CrashWhilePluginActiveException;,
        Lcom/android/systemui/shared/plugins/PluginManagerImpl$c;,
        Lcom/android/systemui/shared/plugins/PluginManagerImpl$b;,
        Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String;


# instance fields
.field private final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/plugins/PluginListener<",
            "*>;",
            "Lcom/android/systemui/shared/plugins/PluginInstanceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/Context;

.field private final f:Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

.field private final g:Z

.field private final h:Lcom/android/systemui/shared/plugins/PluginPrefs;

.field private final i:Lcom/android/systemui/shared/plugins/PluginEnabler;

.field private final j:Lcom/android/systemui/shared/plugins/PluginInitializer;

.field private k:Lcom/android/systemui/shared/plugins/PluginManagerImpl$b;

.field private l:Z

.field private m:Z

.field private n:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginInitializer;)V
    .locals 6

    new-instance v2, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    invoke-direct {v2}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;-><init>()V

    invoke-interface {p2}, Lcom/android/systemui/shared/plugins/PluginInitializer;->isDebuggable()Z

    move-result v3

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/shared/plugins/PluginInitializer;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/shared/plugins/PluginInitializer;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->a:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->b:Ljava/util/Map;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->c:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->d:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->f:Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    invoke-interface {p5}, Lcom/android/systemui/shared/plugins/PluginInitializer;->getBgLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->n:Landroid/os/Looper;

    iput-boolean p3, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->g:Z

    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->d:Landroid/util/ArraySet;

    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    invoke-interface {p5, p2}, Lcom/android/systemui/shared/plugins/PluginInitializer;->getWhitelistedPlugins(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/android/systemui/shared/plugins/PluginPrefs;

    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/shared/plugins/PluginPrefs;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->h:Lcom/android/systemui/shared/plugins/PluginPrefs;

    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    invoke-interface {p5, p1}, Lcom/android/systemui/shared/plugins/PluginInitializer;->getPluginEnabler(Landroid/content/Context;)Lcom/android/systemui/shared/plugins/PluginEnabler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->i:Lcom/android/systemui/shared/plugins/PluginEnabler;

    iput-object p5, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->j:Lcom/android/systemui/shared/plugins/PluginInitializer;

    new-instance p1, Lcom/android/systemui/shared/plugins/PluginManagerImpl$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p4, p2}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$c;-><init>(Lcom/android/systemui/shared/plugins/PluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/shared/plugins/PluginManagerImpl$a;)V

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->n:Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/systemui/shared/plugins/PluginManagerImpl$a;

    invoke-direct {p2, p0, p5}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$a;-><init>(Lcom/android/systemui/shared/plugins/PluginManagerImpl;Lcom/android/systemui/shared/plugins/PluginInitializer;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/android/systemui/shared/plugins/PluginManagerImpl;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->a:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->d:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private e(Landroid/content/ComponentName;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->d:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private f()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->l:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.PLUGIN_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.systemui.action.DISABLE_PLUGIN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "com.android.systemui.permission.PLUGIN"

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private g()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->l:Z

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/systemui/shared/plugins/PluginManager$Helper;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->h:Lcom/android/systemui/shared/plugins/PluginPrefs;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/plugins/PluginPrefs;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->f:Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->n:Landroid/os/Looper;

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object v7, p3

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;->createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Ljava/lang/Class;Lcom/android/systemui/shared/plugins/PluginManagerImpl;)Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->loadAll()V

    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->a:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->f()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method c()Ljava/lang/ClassLoader;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->k:Lcom/android/systemui/shared/plugins/PluginManagerImpl$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$b;

    const-class v1, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.android.systemui.plugin"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$b;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->k:Lcom/android/systemui/shared/plugins/PluginManagerImpl$b;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->k:Lcom/android/systemui/shared/plugins/PluginManagerImpl$b;

    return-object p0
.end method

.method public dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/plugins/Plugin;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->a:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->a:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string p1, "  plugin map (%d):"

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->a:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginListener;

    const-string v1, "    %s -> %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    iget-object v4, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->a:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, p3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

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

.method public getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get class loader for non-whitelisted plugin. Src:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pkg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->b:Ljava/util/Map;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->b:Ljava/util/Map;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    invoke-static {v1, v3, p1, v0, v2}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    new-instance v1, Ldalvik/system/PathClassLoader;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->c()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->b:Ljava/util/Map;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getOneShotPlugin(Ljava/lang/Class;)Lcom/android/systemui/plugins/Plugin;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/plugins/annotations/ProvidesInterface;->action()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/annotations/ProvidesInterface;->action()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getOneShotPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/systemui/plugins/Plugin;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t provide an action"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t provide an interface"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOneShotPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/systemui/plugins/Plugin;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->f:Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->n:Landroid/os/Looper;

    move-object v4, p1

    move-object v8, p2

    move-object v9, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;->createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Ljava/lang/Class;Lcom/android/systemui/shared/plugins/PluginManagerImpl;)Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->h:Lcom/android/systemui/shared/plugins/PluginPrefs;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/plugins/PluginPrefs;->addAction(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->getPlugin()Lcom/android/systemui/shared/plugins/PluginInstanceManager$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->c:Landroid/util/ArraySet;

    iget-object v0, p1, Lcom/android/systemui/shared/plugins/PluginInstanceManager$c;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->m:Z

    invoke-direct {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->f()V

    iget-object p0, p1, Lcom/android/systemui/shared/plugins/PluginInstanceManager$c;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/plugins/Plugin;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Must be called from UI thread"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPluginEnabler()Lcom/android/systemui/shared/plugins/PluginEnabler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->i:Lcom/android/systemui/shared/plugins/PluginEnabler;

    return-object p0
.end method

.method public getWhitelistedPlugins()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->d:Landroid/util/ArraySet;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public handleWtfs()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->j:Lcom/android/systemui/shared/plugins/PluginInitializer;

    invoke-interface {p0}, Lcom/android/systemui/shared/plugins/PluginInitializer;->handleWtfs()V

    return-void
.end method

.method public isDebuggable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->g:Z

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string p1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->a:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-virtual {p2}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->loadAll()V

    goto :goto_0

    :cond_0
    monitor-exit p0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const-string p1, "com.android.systemui.action.DISABLE_PLUGIN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e(Landroid/content/ComponentName;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getPluginEnabler()Lcom/android/systemui/shared/plugins/PluginEnabler;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Lcom/android/systemui/shared/plugins/PluginEnabler;->setDisabled(Landroid/content/ComponentName;I)V

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->c:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "stat_sys_warning"

    const-string v6, "drawable"

    const-string v7, "android"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "system_notification_accent_color"

    const-string v7, "color"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v7, p1

    :goto_1
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    const-string v10, "ALR"

    invoke-direct {v8, v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v8, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Plugin \""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\" has updated"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v5, "Restart SysUI for changes to take effect."

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.android.systemui.action.RESTART"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    const/high16 v8, 0x2000000

    invoke-static {v7, v6, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$Action$Builder;

    const/4 v7, 0x0

    const-string v8, "Restart SysUI"

    invoke-direct {v6, v7, v8, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    const-class v6, Landroid/app/NotificationManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->e:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reloading "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reloading "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getPluginEnabler()Lcom/android/systemui/shared/plugins/PluginEnabler;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/systemui/shared/plugins/PluginEnabler;->getDisableReason(Landroid/content/ComponentName;)I

    move-result v0

    if-eq v0, v4, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    if-ne v0, v1, :cond_8

    :cond_7
    sget-object v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-enabling previously disabled plugin that has been updated: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getPluginEnabler()Lcom/android/systemui/shared/plugins/PluginEnabler;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/systemui/shared/plugins/PluginEnabler;->setEnabled(Landroid/content/ComponentName;)V

    :cond_8
    monitor-enter p0

    :try_start_2
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->a:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->onPackageChange(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->a:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    monitor-exit p0

    :goto_5
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-virtual {p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->destroy()V

    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->a:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->g()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
