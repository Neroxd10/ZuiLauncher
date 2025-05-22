.class public abstract Lcom/android/systemui/shared/system/RotationWatcher;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/IRotationWatcher;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/shared/system/RotationWatcher$a;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/RotationWatcher$a;-><init>(Lcom/android/systemui/shared/system/RotationWatcher;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/RotationWatcher;->b:Landroid/view/IRotationWatcher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/system/RotationWatcher;->c:Z

    iput-object p1, p0, Lcom/android/systemui/shared/system/RotationWatcher;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/shared/system/RotationWatcher;->c:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/system/RotationWatcher;->b:Landroid/view/IRotationWatcher;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/system/RotationWatcher;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RotationWatcher"

    const-string v1, "Failed to remove rotation watcher"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public enable()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/shared/system/RotationWatcher;->c:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/system/RotationWatcher;->b:Landroid/view/IRotationWatcher;

    iget-object v2, p0, Lcom/android/systemui/shared/system/RotationWatcher;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/system/RotationWatcher;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RotationWatcher"

    const-string v1, "Failed to set rotation watcher"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected abstract onRotationChanged(I)V
.end method
