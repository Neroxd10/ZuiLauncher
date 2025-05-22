.class public Lcom/zui/quickstep/FallbackSwipeHandler;
.super Lcom/zui/quickstep/WindowTransformSwipeHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/quickstep/WindowTransformSwipeHandler<",
        "Lcom/zui/quickstep/RecentsActivity;",
        "Lcom/zui/quickstep/fallback/FallbackRecentsView;",
        ">;"
    }
.end annotation


# instance fields
.field private k0:Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

.field private final l0:Z

.field private m0:Landroid/content/Intent;

.field private final n0:Landroid/graphics/Matrix;

.field private o0:F


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Context;JLcom/zui/quickstep/ActivityControlHelper;ZLcom/android/systemui/shared/system/InputConsumerController;Lcom/zui/quickstep/RecentsAnimationDeviceState;Landroid/content/Intent;Lcom/zui/quickstep/views/LongSwipeView;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Landroid/content/Context;",
            "J",
            "Lcom/zui/quickstep/ActivityControlHelper<",
            "Lcom/zui/quickstep/RecentsActivity;",
            ">;Z",
            "Lcom/android/systemui/shared/system/InputConsumerController;",
            "Lcom/zui/quickstep/RecentsAnimationDeviceState;",
            "Landroid/content/Intent;",
            "Lcom/zui/quickstep/views/LongSwipeView;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/zui/quickstep/WindowTransformSwipeHandler;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Context;JLcom/zui/quickstep/ActivityControlHelper;ZLcom/android/systemui/shared/system/InputConsumerController;Lcom/zui/quickstep/RecentsAnimationDeviceState;Lcom/zui/quickstep/views/LongSwipeView;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v10, Lcom/zui/quickstep/FallbackSwipeHandler;->n0:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v10, Lcom/zui/quickstep/FallbackSwipeHandler;->o0:F

    invoke-static {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isHomeTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/zui/quickstep/FallbackSwipeHandler;->l0:Z

    if-eqz v0, :cond_0

    iget-object v0, v10, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTransformParams:Lcom/zui/quickstep/util/TransformParams;

    new-instance v1, Lcom/zui/quickstep/p;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/p;-><init>(Lcom/zui/quickstep/FallbackSwipeHandler;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/TransformParams;->setHomeBuilderProxy(Lcom/zui/quickstep/util/TransformParams$BuilderProxy;)Lcom/zui/quickstep/util/TransformParams;

    :cond_0
    move-object/from16 v0, p9

    iput-object v0, v10, Lcom/zui/quickstep/FallbackSwipeHandler;->m0:Landroid/content/Intent;

    return-void
.end method

.method static synthetic U0(Lcom/zui/quickstep/FallbackSwipeHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/FallbackSwipeHandler;->l0:Z

    return p0
.end method

.method static synthetic V0(Lcom/zui/quickstep/FallbackSwipeHandler;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/quickstep/FallbackSwipeHandler;->X0(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FF)V

    return-void
.end method

.method public static synthetic W0(Lcom/zui/quickstep/FallbackSwipeHandler;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/quickstep/FallbackSwipeHandler;->Y0(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V

    return-void
.end method

.method private X0(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FF)V
    .locals 2

    iget v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler;->o0:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p3, v1, v0}, Lcom/zui/launcher/Utilities;->mapRange(FFF)F

    move-result p3

    iget-object v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler;->n0:Landroid/graphics/Matrix;

    iget-object v1, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    iget-object p2, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p2

    invoke-virtual {v0, p3, p3, v1, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p0, p0, Lcom/zui/quickstep/FallbackSwipeHandler;->n0:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    return-void
.end method

.method private Y0(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V
    .locals 3

    iget-object p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mCurrentShift:Lcom/zui/quickstep/AnimatedFloat;

    iget p3, p3, Lcom/zui/quickstep/AnimatedFloat;->value:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p3

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zui/quickstep/FallbackSwipeHandler;->X0(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;FF)V

    return-void
.end method


# virtual methods
.method protected createHomeAnimationFactory(J)Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    check-cast v0, Lcom/zui/quickstep/fallback/FallbackRecentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/RecentsView;->setContentAlpha(F)V

    new-instance v0, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;-><init>(Lcom/zui/quickstep/FallbackSwipeHandler;J)V

    iput-object v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler;->k0:Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler;->m0:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/zui/quickstep/FallbackSwipeHandler;->k0:Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    return-object p0
.end method

.method protected finishRecentsControllerToHome(Ljava/lang/Runnable;)V
    .locals 2

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsAnimationWrapper:Lcom/zui/quickstep/RecentsAnimationWrapper;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/zui/quickstep/RecentsAnimationWrapper;->finish(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method protected getRecentsView()Lcom/zui/quickstep/fallback/FallbackRecentsView;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    check-cast p0, Lcom/zui/quickstep/RecentsActivity;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/fallback/FallbackRecentsView;

    return-object p0
.end method

.method protected bridge synthetic getRecentsView()Lcom/zui/quickstep/views/RecentsView;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/FallbackSwipeHandler;->getRecentsView()Lcom/zui/quickstep/fallback/FallbackRecentsView;

    move-result-object p0

    return-object p0
.end method

.method protected handleTaskAppeared(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler;->k0:Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->handleHomeTaskAppeared(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/quickstep/FallbackSwipeHandler;->k0:Lcom/zui/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->handleTaskAppeared(Lcom/zui/quickstep/util/SwipeAnimationTargetSet;)Z

    move-result p0

    return p0
.end method

.method protected initTransitionEndpoints(Lcom/zui/launcher/DeviceProfile;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->initTransitionEndpoints(Lcom/zui/launcher/DeviceProfile;)V

    iget-boolean p1, p0, Lcom/zui/quickstep/FallbackSwipeHandler;->l0:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/zui/quickstep/FallbackSwipeHandler;->o0:F

    :cond_0
    return-void
.end method

.method protected notifyGestureAnimationStartToRecents()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler;->l0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    check-cast v0, Lcom/zui/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/fallback/FallbackRecentsView;->onGestureAnimationStartOnHome(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->notifyGestureAnimationStartToRecents()V

    :goto_0
    return-void
.end method

.method protected switchToScreenshot()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/FallbackSwipeHandler;->l0:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->switchToScreenshot()V

    :goto_0
    return-void
.end method
