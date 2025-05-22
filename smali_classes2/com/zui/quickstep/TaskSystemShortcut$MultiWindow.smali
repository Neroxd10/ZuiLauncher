.class public abstract Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;
.super Lcom/zui/quickstep/TaskSystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/TaskSystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiWindow"
.end annotation


# instance fields
.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/quickstep/TaskSystemShortcut;-><init>(II)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;->p:Landroid/os/Handler;

    return-void
.end method

.method static synthetic j(Lcom/zui/quickstep/BaseRecentsView;ILcom/zui/quickstep/views/TaskView;)V
    .locals 1

    instance-of v0, p0, Lcom/zui/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->clearIgnoreResetTask(I)V

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;)Landroid/view/View$OnClickListener;
    .locals 9

    invoke-virtual {p2}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;->isAvailable(Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/launcher/BaseDraggingActivity;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/zui/quickstep/BaseRecentsView;

    invoke-virtual {p2}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object v8

    new-instance v0, Lcom/zui/quickstep/o1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/zui/quickstep/o1;-><init>(Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/BaseRecentsView;ILcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskThumbnailView;)V

    return-object v0
.end method

.method protected abstract isAvailable(Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/launcher/BaseDraggingActivity;I)Z
.end method

.method public synthetic k(Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/BaseRecentsView;ILcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskThumbnailView;Landroid/view/View;)V
    .locals 8

    new-instance v0, Lcom/zui/quickstep/v4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zui/quickstep/v4;-><init>(Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/BaseRecentsView;I)V

    new-instance v1, Lcom/zui/quickstep/w4;

    invoke-direct {v1, p0, p4, p1, v0}, Lcom/zui/quickstep/w4;-><init>(Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;Landroid/view/View$OnLayoutChangeListener;)V

    invoke-static {p4}, Lcom/zui/launcher/popup/SystemShortcut;->dismissTaskMenuView(Lcom/zui/launcher/BaseDraggingActivity;)V

    invoke-virtual {p0, p4}, Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;->makeLaunchOptions(Landroid/app/Activity;)Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2, p3, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p4}, Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;->onActivityStarted(Lcom/zui/launcher/BaseDraggingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4, v1}, Lcom/zui/launcher/BaseActivity;->addOnDeviceProfileChangeListener(Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    new-instance p4, Lcom/zui/quickstep/p1;

    invoke-direct {p4, p2, p3, p1}, Lcom/zui/quickstep/p1;-><init>(Lcom/zui/quickstep/BaseRecentsView;ILcom/zui/quickstep/views/TaskView;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-virtual {p5, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    aget v1, p2, v7

    const/4 v2, 0x1

    aget v3, p2, v2

    aget v4, p2, v7

    add-int/2addr v4, v0

    aget p2, p2, v2

    add-int/2addr p2, p1

    invoke-direct {v6, v1, v3, v4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p5}, Lcom/zui/quickstep/views/TaskThumbnailView;->getDimAlpha()F

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p5, p2}, Lcom/zui/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x1000000

    invoke-static {p2, v0, p5, v1, v2}, Lcom/android/systemui/shared/recents/view/RecentsTransition;->drawViewIntoHardwareBitmap(IILandroid/view/View;FI)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p5, p1}, Lcom/zui/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    new-instance p1, Lcom/zui/quickstep/x4;

    iget-object v3, p0, Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;->p:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p0

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/zui/quickstep/x4;-><init>(Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;Landroid/os/Handler;ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;->p:Landroid/os/Handler;

    const/4 p5, 0x1

    if-eqz p6, :cond_1

    invoke-virtual {p6}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p6}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    move v7, p0

    :cond_1
    move-object p0, p2

    move-object p2, p4

    move p4, p5

    move p5, v7

    invoke-virtual/range {p0 .. p5}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->overridePendingAppTransitionMultiThumbFuture(Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;Ljava/lang/Runnable;Landroid/os/Handler;ZI)V

    :cond_2
    return-void
.end method

.method protected abstract makeLaunchOptions(Landroid/app/Activity;)Landroid/app/ActivityOptions;
.end method

.method protected abstract onActivityStarted(Lcom/zui/launcher/BaseDraggingActivity;)Z
.end method
