.class public abstract Lcom/zui/launcher/widget/NavigableAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source ""

# interfaces
.implements Lcom/zui/launcher/dragndrop/DraggableView;
.implements Lcom/zui/launcher/Reorderable;


# instance fields
.field private a:F

.field private final b:Landroid/graphics/PointF;

.field private final c:Landroid/graphics/PointF;

.field private final d:Landroid/graphics/PointF;

.field private e:F

.field private final f:Landroid/graphics/Rect;

.field private g:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected final mActivity:Lcom/zui/launcher/BaseActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->a:F

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->b:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->c:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->d:Landroid/graphics/PointF;

    iput v0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->e:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->f:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/zui/launcher/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/BaseActivity;

    iput-object p1, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->mActivity:Lcom/zui/launcher/BaseActivity;

    return-void
.end method

.method private c(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setSelected(Z)V

    return-void
.end method

.method private d()V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->a:F

    iget v1, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->e:F

    mul-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setScaleX(F)V

    iget v0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->a:F

    iget v1, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->e:F

    mul-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setScaleY(F)V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    invoke-super {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public clearChildFocus(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->clearChildFocus(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->c(Z)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->g:Z

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->requestFocus()Z

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->g:Z

    return p0
.end method

.method public getDescendantFocusability()I
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->g:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x20000

    goto :goto_0

    :cond_0
    const/high16 p0, 0x60000

    :goto_0
    return p0
.end method

.method public getReorderBounceOffset(Landroid/graphics/PointF;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->c:Landroid/graphics/PointF;

    invoke-virtual {p1, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public getReorderBounceScale()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->e:F

    return p0
.end method

.method public getReorderPreviewOffset(Landroid/graphics/PointF;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->d:Landroid/graphics/PointF;

    invoke-virtual {p1, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public getScaleToFit()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->a:F

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getViewType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getWidgetInset(Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->shouldInsetWidgets()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p1, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget-object p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    :goto_0
    return-void
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->mActivity:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {v2}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->getWidgetInset(Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->f:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v4

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p0

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->g:Z

    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->c(Z)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->g:Z

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->g:Z

    if-nez v0, :cond_3

    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->g:Z

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->shouldAllowDirectClick()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    iput-boolean v3, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->g:Z

    return v0

    :cond_1
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v0

    :cond_2
    iput-boolean v3, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->g:Z

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->g:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->c(Z)V

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_1
    return-void
.end method

.method public setReorderBounceOffset(FF)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->c:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0}, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->e()V

    return-void
.end method

.method public setReorderBounceScale(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->e:F

    invoke-direct {p0}, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->d()V

    return-void
.end method

.method public setReorderPreviewOffset(FF)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->d:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0}, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->e()V

    return-void
.end method

.method public setScaleToFit(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->a:F

    invoke-direct {p0}, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->d()V

    return-void
.end method

.method public setTranslationForCentering(FF)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->b:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-direct {p0}, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;->e()V

    return-void
.end method

.method protected abstract shouldAllowDirectClick()Z
.end method
