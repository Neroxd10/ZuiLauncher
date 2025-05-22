.class public Lcom/zui/quickstep/fallback/RecentsTaskController;
.super Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController<",
        "Lcom/zui/quickstep/RecentsActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/zui/quickstep/RecentsActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;-><init>(Lcom/zui/launcher/BaseDraggingActivity;)V

    return-void
.end method


# virtual methods
.method protected isRecentsInteractive()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    check-cast p0, Lcom/zui/quickstep/RecentsActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p0

    return p0
.end method
