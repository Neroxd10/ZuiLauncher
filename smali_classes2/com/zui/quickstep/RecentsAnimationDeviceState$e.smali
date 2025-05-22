.class Lcom/zui/quickstep/RecentsAnimationDeviceState$e;
.super Landroid/view/OrientationEventListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/RecentsAnimationDeviceState;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$e;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    int-to-float p1, p1

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$e;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-static {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->m(Lcom/zui/quickstep/RecentsAnimationDeviceState;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getRotationForUserDegreesRotated(FI)I

    move-result p1

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$e;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-static {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->m(Lcom/zui/quickstep/RecentsAnimationDeviceState;)I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$e;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-static {v0, p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->n(Lcom/zui/quickstep/RecentsAnimationDeviceState;I)I

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$e;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->j(Lcom/zui/quickstep/RecentsAnimationDeviceState;Z)Z

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$e;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-static {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->c(Lcom/zui/quickstep/RecentsAnimationDeviceState;)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState$e;->a:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-static {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->d(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V

    :cond_1
    return-void
.end method
