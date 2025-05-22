.class public Lcom/zui/launcher/util/WallpaperOffsetInterpolator;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;
    }
.end annotation


# static fields
.field private static final j:[I


# instance fields
.field private final a:Lcom/zui/launcher/Workspace;

.field private final b:Z

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Landroid/os/IBinder;

.field private f:Z

.field private g:Z

.field private h:I

.field private final i:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->j:[I

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/Workspace;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->d:Z

    iput-object p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->b:Z

    new-instance v0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->c:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    iget-object p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private a()I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->hasExtraEmptyScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->c:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->getNumPagesForWallpaperParallax()I

    move-result v1

    iget-object p0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->e:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private d(II[I)V
    .locals 6

    const/4 v0, 0x1

    aput v0, p3, v0

    iget-boolean v1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->g:Z

    const/4 v2, 0x0

    if-nez v1, :cond_5

    if-gt p2, v0, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->f:Z

    if-eqz v1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    iget-boolean v3, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->b:Z

    if-eqz v3, :cond_2

    add-int/lit8 v3, p2, 0x0

    sub-int/2addr v3, v0

    move v4, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, p2, 0x0

    sub-int/2addr v3, v0

    move v4, v3

    move v3, v2

    :goto_1
    iget-object v5, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {v5, v3}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v3

    iget-object v5, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {v5, v4}, Lcom/zui/launcher/PagedView;->getScrollForPage(I)I

    move-result v4

    sub-int/2addr v4, v3

    if-gtz v4, :cond_3

    aput v2, p3, v2

    return-void

    :cond_3
    sub-int/2addr p1, v3

    iget-object v3, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {v3, v2}, Lcom/zui/launcher/PagedView;->getLayoutTransitionOffsetForPage(I)I

    move-result v3

    sub-int/2addr p1, v3

    invoke-static {p1, v2, v4}, Lcom/zui/launcher/Utilities;->boundToRange(III)I

    move-result p1

    sub-int/2addr v1, v0

    mul-int/2addr v1, v4

    aput v1, p3, v0

    iget-boolean p0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->b:Z

    if-eqz p0, :cond_4

    aget p0, p3, v0

    add-int/lit8 v1, p2, -0x1

    mul-int/2addr v1, v4

    sub-int/2addr p0, v1

    goto :goto_2

    :cond_4
    move p0, v2

    :goto_2
    sub-int/2addr p2, v0

    mul-int/2addr p1, p2

    add-int/2addr p0, p1

    aput p0, p3, v2

    return-void

    :cond_5
    :goto_3
    iget-boolean p0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->b:Z

    aput p0, p3, v2

    return-void
.end method


# virtual methods
.method public synthetic b()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->f:Z

    invoke-direct {p0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->c()V

    return-void
.end method

.method public getNumPagesForWallpaperParallax()I
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->f:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->h:I

    return p0

    :cond_0
    const/4 v0, 0x4

    iget p0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->h:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public isLockedToDefaultPage()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->g:Z

    return p0
.end method

.method public jumpToFinal()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->c:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->e:Landroid/os/IBinder;

    const/4 v1, 0x5

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->i:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/zui/launcher/util/f0;

    invoke-direct {p2, p0}, Lcom/zui/launcher/util/f0;-><init>(Lcom/zui/launcher/util/WallpaperOffsetInterpolator;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLockToDefaultPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->g:Z

    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 2

    iput-object p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->e:Landroid/os/IBinder;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->d:Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->e:Landroid/os/IBinder;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->d:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public syncWithScroll()V
    .locals 7

    invoke-direct {p0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->a()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    sget-object v2, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->j:[I

    invoke-direct {p0, v1, v0, v2}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->d(II[I)V

    iget-object v1, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->c:Landroid/os/Handler;

    sget-object v2, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->j:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    iget-object v5, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->e:Landroid/os/IBinder;

    const/4 v6, 0x2

    invoke-static {v1, v6, v3, v2, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->h:I

    if-eq v0, v2, :cond_1

    if-lez v2, :cond_0

    iput v4, v1, Landroid/os/Message;->what:I

    :cond_0
    iput v0, p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->h:I

    invoke-direct {p0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->c()V

    :cond_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public wallpaperOffsetForScroll(I)F
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->a()I

    move-result v0

    sget-object v1, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->j:[I

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->d(II[I)V

    sget-object p0, Lcom/zui/launcher/util/WallpaperOffsetInterpolator;->j:[I

    const/4 p1, 0x0

    aget p1, p0, p1

    int-to-float p1, p1

    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method
