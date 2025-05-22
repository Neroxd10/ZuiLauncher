.class public Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;
.super Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;
.source ""

# interfaces
.implements Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;
.implements Lcom/zui/launcher/LeosWidgetInterface;


# instance fields
.field private B:Lcom/zui/launcher/CheckLongPressHelper;

.field private C:Lcom/zui/launcher/dragndrop/DragLayer;

.field private D:Lcom/zui/launcher/Workspace;

.field E:F

.field final F:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->E:F

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->F:Landroid/graphics/PointF;

    new-instance v0, Lcom/zui/launcher/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/zui/launcher/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->B:Lcom/zui/launcher/CheckLongPressHelper;

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->C:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->D:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->registerWeatherDataListener()V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    invoke-super {p0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->getSearchContaienrView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->getSearchContaienrView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/globalsearch/widgetview/a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/globalsearch/widgetview/a;-><init>(Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public analyzeWidgetWeatherData(Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->analyzeWidgetWeatherData(Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cancelLongPress()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->cancelLongPress()V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->B:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/dragndrop/DeleteInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/dragndrop/DeleteInfo;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/ItemInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/ItemInfo;

    :cond_0
    return-void
.end method

.method public getConfigure()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getScaleToFit()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->E:F

    return p0
.end method

.method public getSinaWeatherData()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->getSinaWeatherData()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWeatherDefaultData()V

    :cond_0
    return-void
.end method

.method public getTranslationForCentering()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->F:Landroid/graphics/PointF;

    return-object p0
.end method

.method public handleConfigureResult(ZLandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->B:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->B:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->B:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->B:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/zui/launcher/CheckLongPressHelper;->postCheckForLongPress()V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->C:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/views/BaseDragLayer;->setTouchCompleteListener(Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->D:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/Workspace;->setWidgetDown(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->r()V

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchComplete()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->B:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->B:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    :goto_0
    return v0
.end method

.method public synthetic s(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/Utilities;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->onFlingShowGlobalSearch()V

    const/4 p0, 0x2

    const-string p1, "Enter"

    const-string v0, "EnterGSWidget"

    const-string v1, "\u684c\u9762Weight "

    invoke-static {p1, v0, v1, p0}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public setClockAnimationStatus(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->setClockAnimationStatus(Z)V

    return-void
.end method

.method public setConfiguring(Z)V
    .locals 0

    return-void
.end method

.method public setScaleToFit(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->E:F

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    return-void
.end method

.method public setTranslationForCentering(FF)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->F:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method public startConfigActivity()V
    .locals 0

    return-void
.end method
