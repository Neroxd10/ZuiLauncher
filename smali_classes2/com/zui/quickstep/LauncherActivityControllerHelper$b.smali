.class Lcom/zui/quickstep/LauncherActivityControllerHelper$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/LauncherActivityControllerHelper;->prepareRecentsUI(Lcom/zui/launcher/Launcher;ZZLjava/util/function/Consumer;Lcom/zui/quickstep/RecentsAnimationDeviceState;)Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

.field private b:Z

.field final synthetic c:Lcom/zui/launcher/Launcher;

.field final synthetic d:Lcom/zui/launcher/LauncherState;

.field final synthetic e:Ljava/util/function/Consumer;

.field final synthetic f:Lcom/zui/launcher/LauncherState;

.field final synthetic g:Lcom/zui/quickstep/LauncherActivityControllerHelper;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/LauncherActivityControllerHelper;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherState;Ljava/util/function/Consumer;Lcom/zui/launcher/LauncherState;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->g:Lcom/zui/quickstep/LauncherActivityControllerHelper;

    iput-object p2, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    iput-object p3, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->d:Lcom/zui/launcher/LauncherState;

    iput-object p4, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->e:Ljava/util/function/Consumer;

    iput-object p5, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->f:Lcom/zui/launcher/LauncherState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustActivityControllerInterpolators()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->g:Lcom/zui/quickstep/LauncherActivityControllerHelper;

    invoke-static {v0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->b(Lcom/zui/quickstep/LauncherActivityControllerHelper;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->g:Lcom/zui/quickstep/LauncherActivityControllerHelper;

    invoke-static {v0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->b(Lcom/zui/quickstep/LauncherActivityControllerHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->g:Lcom/zui/quickstep/LauncherActivityControllerHelper;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->c(Lcom/zui/quickstep/LauncherActivityControllerHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public createActivityController(J)V
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->g:Lcom/zui/quickstep/LauncherActivityControllerHelper;

    iget-object v1, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    iget-object v2, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->d:Lcom/zui/launcher/LauncherState;

    iget-object v5, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->e:Ljava/util/function/Consumer;

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Lcom/zui/quickstep/LauncherActivityControllerHelper;->a(Lcom/zui/quickstep/LauncherActivityControllerHelper;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherState;JLjava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p1

    sget-object p2, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->b:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->setRecentsAttachedToAppWindow(ZZ)V

    :cond_0
    return-void
.end method

.method public onTransitionCancelled()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->f:Lcom/zui/launcher/LauncherState;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    return-void
.end method

.method public setRecentsAttachedToAppWindow(ZZ)V
    .locals 12

    iget-boolean v0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->b:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->b:Z

    iget-object v0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/BaseRecentsView;

    iget-object v1, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getAppTransitionManager()Lcom/zui/launcher/LauncherAppTransitionManager;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v2

    new-array v5, v3, [F

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-nez p1, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v8, v7

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v6

    :goto_2
    aput v8, v5, v4

    invoke-virtual {v2, v3, v5}, Lcom/zui/launcher/LauncherStateManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fadeAnim, CONTENT_ALPHA, alpha:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_6

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v4

    goto :goto_4

    :cond_6
    :goto_3
    move v1, v3

    :goto_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "LauncherActivityControllerHelper"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/zui/quickstep/BaseRecentsView;->getRunningTaskIndex()I

    move-result v1

    const/4 v8, -0x1

    if-ne v1, v8, :cond_7

    iget-object v8, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v8}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v8}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v8

    iget-boolean v8, v8, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v8, :cond_7

    const-string v8, "set recents view tranlationX to 0--------"

    invoke-static {v5, v8}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Lcom/zui/quickstep/BaseRecentsView;->setTranslationX(F)V

    :cond_7
    if-nez v1, :cond_f

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v5

    invoke-interface {v0}, Lcom/zui/quickstep/BaseRecentsView;->getScrollOffset()I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    iget-object v10, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v9, v10}, Lcom/zui/launcher/LauncherState;->getOverviewScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object v9

    iget v9, v9, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;->translationX:F

    invoke-interface {v0, v4}, Lcom/zui/quickstep/BaseRecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    invoke-interface {v0}, Lcom/zui/quickstep/BaseRecentsView;->getPageSpacing()I

    move-result v11

    add-int/2addr v11, v10

    int-to-float v11, v11

    mul-float/2addr v11, v5

    sub-float/2addr v9, v11

    int-to-float v10, v10

    sub-float/2addr v5, v6

    mul-float/2addr v10, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v10, v5

    add-float/2addr v9, v10

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-interface {v0}, Lcom/zui/quickstep/BaseRecentsView;->isRtl()Z

    move-result v6

    if-eqz v6, :cond_8

    neg-float v5, v5

    :cond_8
    if-eqz p1, :cond_9

    sub-float v6, v5, v8

    goto :goto_5

    :cond_9
    move v6, v7

    :goto_5
    if-eqz p1, :cond_a

    goto :goto_6

    :cond_a
    sub-float v7, v5, v8

    :goto_6
    iget-object v5, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v5

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/zui/launcher/LauncherStateManager;->cancelStateElementAnimation(I)V

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz p2, :cond_b

    invoke-interface {v0, v6}, Lcom/zui/quickstep/BaseRecentsView;->setTranslationX(F)V

    goto :goto_7

    :cond_b
    invoke-interface {v0}, Lcom/zui/quickstep/BaseRecentsView;->getTranslationX()F

    move-result v6

    :goto_7
    if-eqz p2, :cond_d

    iget-object v1, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherStateManager;->wasInAnimation()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_8

    :cond_c
    iget-object p0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    new-array v0, v8, [F

    aput v6, v0, v4

    aput v7, v0, v3

    invoke-virtual {p0, v8, v0}, Lcom/zui/launcher/LauncherStateManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_9

    :cond_d
    :goto_8
    invoke-interface {v0, v7}, Lcom/zui/quickstep/BaseRecentsView;->setTranslationX(F)V

    :goto_9
    if-eqz p1, :cond_e

    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    goto :goto_a

    :cond_e
    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    goto :goto_a

    :cond_f
    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    :goto_a
    invoke-virtual {v2, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p2, :cond_10

    const-wide/16 p0, 0x12c

    goto :goto_b

    :cond_10
    const-wide/16 p0, 0x0

    :goto_b
    invoke-virtual {v2, p0, p1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public setShelfState(Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;Landroid/view/animation/Interpolator;J)V
    .locals 5

    iget-object v0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->a:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->a:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    iget-object p1, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherStateManager;->cancelStateElementAnimation(I)V

    iget-object p1, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->a:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    sget-object v1, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->CANCEL:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/zui/launcher/LauncherState;->BACKGROUND_APP:Lcom/zui/launcher/LauncherState;

    iget-object v1, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/LauncherState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result p1

    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    iget-object v2, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/LauncherState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v2}, Lcom/zui/launcher/uioverrides/states/OverviewState;->getDefaultVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result v2

    sub-float v2, p1, v2

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    sub-float v2, p1, v2

    iget-object v3, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->a:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    sget-object v4, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->HIDE:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;->PEEK:Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory$ShelfAnimState;

    if-ne v3, p1, :cond_3

    move p1, v2

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    iget-object p0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$b;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [F

    aput p1, v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/LauncherStateManager;->createStateElementAnimation(I[F)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
