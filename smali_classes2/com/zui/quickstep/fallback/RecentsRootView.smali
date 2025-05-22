.class public Lcom/zui/quickstep/fallback/RecentsRootView;
.super Lcom/zui/launcher/views/BaseDragLayer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/views/BaseDragLayer<",
        "Lcom/zui/quickstep/RecentsActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Lcom/zui/quickstep/RecentsActivity;

.field private final g:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Point;

    const/16 v0, 0xa

    invoke-direct {p2, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lcom/zui/quickstep/fallback/RecentsRootView;->g:Landroid/graphics/Point;

    invoke-static {p1}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/RecentsActivity;

    iput-object p1, p0, Lcom/zui/quickstep/fallback/RecentsRootView;->f:Lcom/zui/quickstep/RecentsActivity;

    const/16 p1, 0x700

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public dispatchInsets()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/fallback/RecentsRootView;->f:Lcom/zui/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zui/launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-super {p0, v0}, Lcom/zui/launcher/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/fallback/RecentsRootView;->f:Lcom/zui/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/fallback/RecentsRootView;->setInsets(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getLastKnownSize()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/fallback/RecentsRootView;->g:Landroid/graphics/Point;

    return-object p0
.end method

.method protected isEventTypeTwoProcess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/fallback/RecentsRootView;->g:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    if-ne v3, v0, :cond_0

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-eq v2, v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/zui/quickstep/fallback/RecentsRootView;->g:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v0, p0, Lcom/zui/quickstep/fallback/RecentsRootView;->f:Lcom/zui/quickstep/RecentsActivity;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsActivity;->onRootViewSizeChanged()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public recreateControllers()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zui/launcher/util/TouchController;

    new-instance v1, Lcom/zui/quickstep/fallback/RecentsTaskController;

    iget-object v2, p0, Lcom/zui/quickstep/fallback/RecentsRootView;->f:Lcom/zui/quickstep/RecentsActivity;

    invoke-direct {v1, v2}, Lcom/zui/quickstep/fallback/RecentsTaskController;-><init>(Lcom/zui/quickstep/RecentsActivity;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/zui/quickstep/fallback/FallbackNavBarTouchController;

    iget-object v2, p0, Lcom/zui/quickstep/fallback/RecentsRootView;->f:Lcom/zui/quickstep/RecentsActivity;

    invoke-direct {v1, v2}, Lcom/zui/quickstep/fallback/FallbackNavBarTouchController;-><init>(Lcom/zui/quickstep/RecentsActivity;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mControllers:[Lcom/zui/launcher/util/TouchController;

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/zui/launcher/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f04036f

    invoke-static {p1, v0}, Lcom/zui/launcher/util/Themes;->getAttrDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setup()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zui/launcher/util/TouchController;

    new-instance v1, Lcom/zui/quickstep/fallback/RecentsTaskController;

    iget-object v2, p0, Lcom/zui/quickstep/fallback/RecentsRootView;->f:Lcom/zui/quickstep/RecentsActivity;

    invoke-direct {v1, v2}, Lcom/zui/quickstep/fallback/RecentsTaskController;-><init>(Lcom/zui/quickstep/RecentsActivity;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mControllers:[Lcom/zui/launcher/util/TouchController;

    return-void
.end method
