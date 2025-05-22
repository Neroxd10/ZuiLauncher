.class public Lcom/zui/launcher3/icons/SimpleIconCache;
.super Lcom/zui/launcher/icons/cache/BaseIconCache;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# static fields
.field private static g:Lcom/zui/launcher3/icons/SimpleIconCache;

.field private static final h:Ljava/lang/Object;


# instance fields
.field private final e:Landroid/util/SparseLongArray;

.field private final f:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zui/launcher3/icons/SimpleIconCache;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;IIZ)V
    .locals 6

    invoke-direct/range {p0 .. p6}, Lcom/zui/launcher/icons/cache/BaseIconCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;IIZ)V

    new-instance p2, Landroid/util/SparseLongArray;

    const/4 p4, 0x2

    invoke-direct {p2, p4}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object p2, p0, Lcom/zui/launcher3/icons/SimpleIconCache;->e:Landroid/util/SparseLongArray;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/zui/launcher3/icons/SimpleIconCache;->f:Landroid/os/UserManager;

    new-instance v2, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-direct {v2, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v2, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/zui/launcher3/icons/SimpleIconCache$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher3/icons/SimpleIconCache$a;-><init>(Lcom/zui/launcher3/icons/SimpleIconCache;)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public static getIconCache(Landroid/content/Context;)Lcom/zui/launcher3/icons/SimpleIconCache;
    .locals 10

    sget-object v0, Lcom/zui/launcher3/icons/SimpleIconCache;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zui/launcher3/icons/SimpleIconCache;->g:Lcom/zui/launcher3/icons/SimpleIconCache;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/zui/launcher3/icons/SimpleIconCache;->g:Lcom/zui/launcher3/icons/SimpleIconCache;

    monitor-exit v0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zui/launcher/icons/R$bool;->simple_cache_enable_im_memory:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    sget v1, Lcom/zui/launcher/icons/R$string;->cache_db_name:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "simple-icon-cache"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/zui/launcher3/icons/SimpleIconCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v7, v1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/zui/launcher/icons/R$dimen;->default_icon_bitmap_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/zui/launcher3/icons/SimpleIconCache;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;IIZ)V

    sput-object v2, Lcom/zui/launcher3/icons/SimpleIconCache;->g:Lcom/zui/launcher3/icons/SimpleIconCache;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic k(Lcom/zui/launcher3/icons/SimpleIconCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher3/icons/SimpleIconCache;->l()V

    return-void
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher3/icons/SimpleIconCache;->e:Landroid/util/SparseLongArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/zui/launcher3/icons/SimpleIconCache;->e:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getIconFactory()Lcom/zui/launcher/icons/BaseIconFactory;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/cache/BaseIconCache;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/launcher/icons/IconFactory;->obtain(Landroid/content/Context;)Lcom/zui/launcher/icons/IconFactory;

    move-result-object p0

    return-object p0
.end method

.method protected getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher3/icons/SimpleIconCache;->e:Landroid/util/SparseLongArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher3/icons/SimpleIconCache;->e:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher3/icons/SimpleIconCache;->e:Landroid/util/SparseLongArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher3/icons/SimpleIconCache;->f:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    iget-object p0, p0, Lcom/zui/launcher3/icons/SimpleIconCache;->e:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p0

    return p0
.end method
