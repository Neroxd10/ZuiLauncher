.class public Lcom/zui/launcher/NewDualTimeZoneWidget;
.super Lcom/zui/timelaweather/View/NewDualTimeZoneView;
.source ""

# interfaces
.implements Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;
.implements Lcom/zui/launcher/LeosWidgetInterface;


# instance fields
.field private k:Lcom/zui/launcher/CheckLongPressHelper;

.field private l:Lcom/zui/launcher/dragndrop/DragLayer;

.field private m:Lcom/zui/launcher/Workspace;

.field n:F

.field final o:Landroid/graphics/PointF;

.field private p:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->n:F

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->o:Landroid/graphics/PointF;

    new-instance v0, Lcom/zui/launcher/NewDualTimeZoneWidget$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/NewDualTimeZoneWidget$b;-><init>(Lcom/zui/launcher/NewDualTimeZoneWidget;)V

    iput-object v0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->p:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/zui/launcher/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/zui/launcher/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->k:Lcom/zui/launcher/CheckLongPressHelper;

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->l:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->m:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->registerWeatherDataListener()V

    :cond_0
    invoke-interface {p0}, Lcom/zui/launcher/LeosWidgetInterface;->canShowConfigureRect()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->setShowConfigureRect(Z)V

    return-void
.end method

.method private d()V
    .locals 2

    invoke-super {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->getConfigureZone()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/NewDualTimeZoneWidget$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/NewDualTimeZoneWidget$a;-><init>(Lcom/zui/launcher/NewDualTimeZoneWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zui.deskclock.worldcity.CHOOSE_WORLD_CITY_RETURN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private f(Lcom/zui/launcher/Launcher;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lcom/zui/timelaweather/util/WeatherWidgetUtils;->sendClickReaperIntent(Landroid/content/Context;I)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.zui.deskclock.worldclock.VIEW_WORLD_CLOCK_LIST"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "choose_part"

    const-string v1, "new_dual_widget"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "longclick  enter  worldclock  Exception --> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public analyzeWidgetWeatherData(Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public cancelLongPress()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->cancelLongPress()V

    iget-object v0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->k:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    invoke-super {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->getConfigureZone()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-super {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->verityContainerInnerView()Z

    move-result v1

    iget-object v2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelLongPress   innerView  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "   mConfiguring -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->mConfiguring:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  isLongClickState -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->isLongClickState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->mConfiguring:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->isLongClickState:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/timelaweather/View/DaulTimeZoneViewRightClock;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->setTransparent()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public enterChooseCityActivity(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v1

    iget-object v2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inEditViewMode --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->verityContainerInnerView()Z

    move-result v2

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/zui/launcher/LeosWidgetInterface;->canShowConfigureRect()Z

    move-result p1

    if-nez p1, :cond_1

    if-nez v2, :cond_2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "innerView --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  longClickState --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->isLongClickState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    sget-boolean v1, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->isLongClickState:Z

    if-nez v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/NewDualTimeZoneWidget;->f(Lcom/zui/launcher/Launcher;Landroid/view/View;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/NewDualTimeZoneWidget;->startConfigActivity()V

    :cond_2
    :goto_1
    return-void
.end method

.method public getConfigure()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zui.deskclock.worldcity.CHOOSE_WORLD_CITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isNightMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "dark"

    goto :goto_0

    :cond_0
    const-string p0, "light"

    :goto_0
    const-string v1, "skin"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "from"

    const-string v1, "launcher"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "choose_part"

    const-string v1, "new_dual_widget"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public getScaleToFit()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->n:F

    return p0
.end method

.method public getTranslationForCentering()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->o:Landroid/graphics/PointF;

    return-object p0
.end method

.method public handleConfigureResult(ZLandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public isReconfigurable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/zui/launcher/NewDualTimeZoneWidget;->e()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/zui/launcher/NewDualTimeZoneWidget;->g()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->k:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->k:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->k:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->k:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/zui/launcher/CheckLongPressHelper;->postCheckForLongPress()V

    iget-object p1, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->l:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/views/BaseDragLayer;->setTouchCompleteListener(Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;)V

    iget-object p1, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->m:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/Workspace;->setWidgetDown(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/zui/launcher/NewDualTimeZoneWidget;->d()V

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchComplete()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->k:Lcom/zui/launcher/CheckLongPressHelper;

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
    iget-object p0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->k:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    :goto_0
    return v0
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public setCancleLongState()V
    .locals 0

    const/4 p0, 0x0

    sput-boolean p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->isLongClickState:Z

    return-void
.end method

.method public setConfigureRect(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfigureRect  isShow -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mConfiguring-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->mConfiguring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/timelaweather/util/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/zui/launcher/LeosWidgetInterface;->canShowConfigureRect()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    sput-boolean p1, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->isLongClickState:Z

    invoke-super {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->setDaulRightClockBg()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    sput-boolean p1, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->isLongClickState:Z

    iget-boolean p1, p0, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->mConfiguring:Z

    if-nez p1, :cond_2

    invoke-super {p0}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->setTransparent()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setConfiguring(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/timelaweather/View/NewDualTimeZoneView;->setConfiguring(Z)V

    return-void
.end method

.method public setScaleToFit(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->n:F

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    return-void
.end method

.method public setTranslationForCentering(FF)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/NewDualTimeZoneWidget;->o:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method public startConfigActivity()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/Launcher;->startLeosWidgetConfig(Lcom/zui/launcher/LenovoWidgetViewInfo;Lcom/zui/launcher/LeosWidgetInterface;)V

    return-void
.end method
