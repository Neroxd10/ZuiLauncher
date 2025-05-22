.class Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->onDragEnd(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;


# direct methods
.method constructor <init>(Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController$a;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController$a;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;

    sget-object p1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;->onSwipeInteractionCompleted(Lcom/zui/launcher/LauncherState;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController$a;->a:Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;->A(Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/Launcher;->applyDeskBlurSelfControl(J)V

    :cond_0
    return-void
.end method
