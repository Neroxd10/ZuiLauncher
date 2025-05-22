.class final Lcom/zui/launcher/uioverrides/RecentsUiFactory$c;
.super Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/uioverrides/RecentsUiFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController<",
        "Lcom/zui/launcher/Launcher;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;-><init>(Lcom/zui/launcher/BaseDraggingActivity;)V

    return-void
.end method


# virtual methods
.method protected isRecentsInteractive()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    check-cast p0, Lcom/zui/launcher/Launcher;

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result p0

    return p0
.end method

.method protected onUserControlledAnimationCreated(Lcom/zui/launcher/anim/AnimatorPlaybackController;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->setCurrentUserControlledAnimation(Lcom/zui/launcher/anim/AnimatorPlaybackController;)V

    return-void
.end method
