.class public Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/TaskOverlayFactory$OverlayUICallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OverlayUICallbacksImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

.field protected final mIsAllowedByPolicy:Z

.field protected final mTask:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;ZLcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->a:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->mIsAllowedByPolicy:Z

    iput-object p3, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->a:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    iget-object p0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->saveScreenshot(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public synthetic b()V
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->a:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    iget-object p0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->mImageApi:Lcom/zui/quickstep/ImageActionsApi;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/ImageActionsApi;->startShareActivity(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onScreenshot()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->a:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    new-instance v1, Lcom/zui/quickstep/f1;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/f1;-><init>(Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onShare()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->mIsAllowedByPolicy:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->a:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    new-instance v1, Lcom/zui/quickstep/g1;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/g1;-><init>(Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->a:Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;->showBlockedByPolicyMessage()V

    :goto_0
    return-void
.end method
