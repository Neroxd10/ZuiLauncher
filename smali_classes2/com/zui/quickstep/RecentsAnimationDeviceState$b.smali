.class Lcom/zui/quickstep/RecentsAnimationDeviceState$b;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/RecentsAnimationDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/RecentsAnimationDeviceState;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$b;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityRotation(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityRotation(I)V

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$b;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-static {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->i(Lcom/zui/quickstep/RecentsAnimationDeviceState;)I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$b;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->j(Lcom/zui/quickstep/RecentsAnimationDeviceState;Z)Z

    iget-object p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$b;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-static {p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->f(Lcom/zui/quickstep/RecentsAnimationDeviceState;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$b;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-static {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->k(Lcom/zui/quickstep/RecentsAnimationDeviceState;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public onRecentTaskListFrozenChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$b;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-static {v0, p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->e(Lcom/zui/quickstep/RecentsAnimationDeviceState;Z)Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$b;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-static {p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->f(Lcom/zui/quickstep/RecentsAnimationDeviceState;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$b;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->h(Lcom/zui/quickstep/RecentsAnimationDeviceState;Z)V

    :cond_1
    :goto_0
    return-void
.end method
