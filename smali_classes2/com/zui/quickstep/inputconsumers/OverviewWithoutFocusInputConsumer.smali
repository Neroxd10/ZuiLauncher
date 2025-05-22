.class public Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/inputconsumers/InputConsumer;


# instance fields
.field private final a:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private final b:Z

.field private final c:Landroid/graphics/PointF;

.field private final d:F

.field private final e:Landroid/content/Context;

.field private final f:Lcom/zui/quickstep/util/NavBarPosition;

.field private g:Z

.field private h:Landroid/view/VelocityTracker;

.field private i:Lcom/zui/quickstep/OverviewCommandHelper;

.field private final j:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/zui/quickstep/OverviewCommandHelper;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->c:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->a:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iput-boolean p4, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->b:Z

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->d:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p2, p2

    const/high16 p4, 0x41c80000    # 25.0f

    mul-float/2addr p2, p4

    const/high16 p4, 0x43200000    # 160.0f

    div-float/2addr p2, p4

    iput p2, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->j:F

    new-instance p2, Lcom/zui/quickstep/util/NavBarPosition;

    invoke-direct {p2, p1}, Lcom/zui/quickstep/util/NavBarPosition;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->f:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->h:Landroid/view/VelocityTracker;

    iput-object p3, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->i:Lcom/zui/quickstep/OverviewCommandHelper;

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->h:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->h:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 8

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->h:Landroid/view/VelocityTracker;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->f:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-virtual {v2}, Lcom/zui/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result v2

    if-eqz v2, :cond_0

    neg-float v0, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->f:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-virtual {v2}, Lcom/zui/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    neg-float v0, v1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "velocity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OverviewWithoutFocusInputConsumer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->e:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ltz v1, :cond_3

    cmpl-float p1, v0, v4

    if-lez p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v5

    :goto_1
    move v0, p1

    move p1, v5

    goto :goto_4

    :cond_3
    iget-boolean v1, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->b:Z

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v6, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->c:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v6

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v6, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->c:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "displacementX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", displacementY:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", mSquaredTouchSlop:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->d:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->j:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_6

    :cond_5
    invoke-static {v1, p1}, Lcom/zui/launcher/Utilities;->squaredHypot(FF)F

    move-result p1

    iget v0, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->d:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_6

    move p1, v3

    goto :goto_3

    :cond_6
    move p1, v5

    :goto_3
    move v0, v5

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "triggerQuickstep:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", and triggerHome:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_7

    if-eqz v0, :cond_c

    :cond_7
    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/quickstep/OverviewCallbacks;->get(Landroid/content/Context;)Lcom/zui/quickstep/OverviewCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewCallbacks;->closeAllWindows()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const-string v1, "recentapps"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->i:Lcom/zui/quickstep/OverviewCommandHelper;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/zui/quickstep/OverviewCommandHelper;->onOverviewToggle()V

    :cond_8
    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->hasDualVibrator()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    const/16 p1, 0x23

    const/16 v0, 0x19

    invoke-virtual {p0, p1, v0, v3}, Lcom/zui/launcher/LauncherAppState;->startVibrationOrFail(IIZ)Z

    :cond_9
    invoke-static {}, Lcom/android/systemui/shared/system/QuickStepContract;->hideVisibleUFreeformsByRecents()Z

    sget-object p0, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    const-string p1, "startQuickstep"

    goto :goto_5

    :cond_a
    sget-boolean p1, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->e:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_b
    sget-object p0, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    const-string p1, "startHome"

    :goto_5
    invoke-virtual {p0, p1}, Lcom/zui/launcher/logging/EventLogArray;->addLog(Ljava/lang/String;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public allowInterceptByParent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->g:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getType()I
    .locals 0

    const/16 p0, 0x80

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->h:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->g:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    invoke-static {v0, p1}, Lcom/zui/launcher/Utilities;->squaredHypot(FF)F

    move-result v2

    iget v3, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->d:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    iget-boolean v2, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->b:Z

    if-eqz v2, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->g:Z

    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->a:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->pilferPointers()V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->c(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->b()V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->c:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    :cond_6
    :goto_1
    return-void
.end method
