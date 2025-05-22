.class public Lcom/zui/launcher/uioverrides/DisplayRotationListener;
.super Lcom/android/systemui/shared/system/RotationWatcher;
.source ""


# instance fields
.field private final d:Ljava/lang/Runnable;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shared/system/RotationWatcher;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/launcher/uioverrides/DisplayRotationListener;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/DisplayRotationListener;->e:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/DisplayRotationListener;->e:Landroid/os/Handler;

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/shared/system/RotationWatcher;->enable()V

    return-void
.end method

.method protected onRotationChanged(I)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/DisplayRotationListener;->e:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/DisplayRotationListener;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
