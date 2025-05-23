.class public abstract Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:I

.field private b:Landroid/view/ISystemGestureExclusionListener;

.field private c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat$a;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat$a;-><init>(Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->b:Landroid/view/ISystemGestureExclusionListener;

    iput p1, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->a:I

    return-void
.end method

.method static synthetic a(Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->a:I

    return p0
.end method


# virtual methods
.method public abstract onExclusionChanged(Landroid/graphics/Region;)V
.end method

.method public onExclusionChanged(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->onExclusionChanged(Landroid/graphics/Region;)V

    return-void
.end method

.method public register()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->c:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->b:Landroid/view/ISystemGestureExclusionListener;

    iget v2, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->a:I

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SGEListenerCompat"

    const-string v1, "Failed to register window manager callbacks"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unregister()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->c:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->b:Landroid/view/ISystemGestureExclusionListener;

    iget v2, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->a:I

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SGEListenerCompat"

    const-string v1, "Failed to unregister window manager callbacks"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
