.class final Lcom/zui/quickstep/t4;
.super Lcom/zui/quickstep/util/RemoteAnimationProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zui/launcher/BaseDraggingActivity;",
        ">",
        "Lcom/zui/quickstep/util/RemoteAnimationProvider;"
    }
.end annotation


# instance fields
.field private final b:Lcom/zui/quickstep/ActivityControlHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/quickstep/ActivityControlHelper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:I

.field private d:Lcom/zui/launcher/BaseDraggingActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private e:Lcom/zui/quickstep/BaseRecentsView;

.field private final f:Lcom/zui/quickstep/RecentsAnimationDeviceState;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/ActivityControlHelper;ILcom/zui/quickstep/RecentsAnimationDeviceState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/quickstep/ActivityControlHelper<",
            "TT;>;I",
            "Lcom/zui/quickstep/RecentsAnimationDeviceState;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/zui/quickstep/util/RemoteAnimationProvider;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/t4;->b:Lcom/zui/quickstep/ActivityControlHelper;

    iput p2, p0, Lcom/zui/quickstep/t4;->c:I

    iput-object p3, p0, Lcom/zui/quickstep/t4;->f:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    return-void
.end method

.method static synthetic b(Lcom/zui/quickstep/t4;)Lcom/zui/quickstep/BaseRecentsView;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/t4;->e:Lcom/zui/quickstep/BaseRecentsView;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/quickstep/t4;)Lcom/zui/launcher/BaseDraggingActivity;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/t4;->d:Lcom/zui/launcher/BaseDraggingActivity;

    return-object p0
.end method

.method static synthetic f(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/android/systemui/shared/system/TransactionCompat;Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object p0, p0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iget-object v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/shared/system/TransactionCompat;->setAlpha(Lcom/android/systemui/shared/system/SurfaceControlCompat;F)Lcom/android/systemui/shared/system/TransactionCompat;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/shared/system/TransactionCompat;->apply()V

    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->dispatchOnStart()V

    invoke-virtual {p0}, Lcom/zui/launcher/anim/AnimatorPlaybackControllerVR;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/zui/quickstep/t4;->e:Lcom/zui/quickstep/BaseRecentsView;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v3, v4}, Lcom/zui/quickstep/BaseRecentsView;->setRunningTaskIconScaledDown(Z)V

    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v5, Lcom/zui/quickstep/t4$a;

    invoke-direct {v5, v0}, Lcom/zui/quickstep/t4$a;-><init>(Lcom/zui/quickstep/t4;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, v0, Lcom/zui/quickstep/t4;->d:Lcom/zui/launcher/BaseDraggingActivity;

    const-wide/16 v6, 0xfa

    const-string v8, "AppToOverviewAnimationProvider"

    const/4 v9, 0x2

    if-nez v5, :cond_1

    const-string v0, "Animation created, before activity"

    invoke-static {v8, v0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v9, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v3

    :cond_1
    new-instance v5, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    invoke-direct {v5, v1, v2, v4}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    iget v10, v0, Lcom/zui/quickstep/t4;->c:I

    invoke-virtual {v5, v10}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v0, "No closing app"

    invoke-static {v8, v0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v9, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v11, Lcom/zui/quickstep/util/ClipAnimationHelper;

    iget-object v12, v0, Lcom/zui/quickstep/t4;->d:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-direct {v11, v12}, Lcom/zui/quickstep/util/ClipAnimationHelper;-><init>(Landroid/content/Context;)V

    new-array v12, v9, [I

    iget-object v13, v0, Lcom/zui/quickstep/t4;->d:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v13}, Lcom/zui/launcher/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    aget v6, v12, v15

    aget v7, v12, v4

    aget v16, v12, v15

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v17

    add-int v15, v16, v17

    aget v4, v12, v4

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v4, v12

    invoke-direct {v14, v6, v7, v15, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v11, v14, v10}, Lcom/zui/quickstep/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, v0, Lcom/zui/quickstep/t4;->b:Lcom/zui/quickstep/ActivityControlHelper;

    iget-object v7, v0, Lcom/zui/quickstep/t4;->d:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v7}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v7

    iget-object v10, v0, Lcom/zui/quickstep/t4;->d:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {v6, v7, v10, v4}, Lcom/zui/quickstep/ActivityControlHelper;->getSwipeUpDestinationAndLength(Lcom/zui/launcher/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mActivity rotation:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/zui/quickstep/t4;->e:Lcom/zui/quickstep/BaseRecentsView;

    invoke-interface {v7}, Lcom/zui/quickstep/BaseRecentsView;->getPagedViewOrientedState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zui/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "touch Rotation:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/zui/quickstep/t4;->e:Lcom/zui/quickstep/BaseRecentsView;

    invoke-interface {v7}, Lcom/zui/quickstep/BaseRecentsView;->getPagedViewOrientedState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zui/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/zui/quickstep/t4;->e:Lcom/zui/quickstep/BaseRecentsView;

    invoke-interface {v6}, Lcom/zui/quickstep/BaseRecentsView;->getPagedViewOrientedState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v6

    iget-object v7, v0, Lcom/zui/quickstep/t4;->e:Lcom/zui/quickstep/BaseRecentsView;

    invoke-interface {v7}, Lcom/zui/quickstep/BaseRecentsView;->getPagedViewOrientedState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zui/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v7

    invoke-static {v6, v7}, Lcom/zui/launcher/states/RotationHelper;->deltaRotation(II)I

    move-result v6

    if-eq v6, v9, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v11, v4, v6}, Lcom/zui/quickstep/util/ClipAnimationHelper;->updateTargetRectWithRotation(Landroid/graphics/Rect;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v11, v4}, Lcom/zui/quickstep/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    :goto_1
    iget-object v4, v0, Lcom/zui/quickstep/t4;->d:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {v4}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v11, v4, v6}, Lcom/zui/quickstep/util/ClipAnimationHelper;->prepareAnimation(Lcom/zui/launcher/DeviceProfile;Z)V

    new-instance v4, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v4}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;-><init>()V

    new-instance v6, Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v6, v13}, Lcom/zui/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v6}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    move-result-object v4

    new-array v6, v9, [F

    fill-array-data v6, :array_2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v7, 0xfa

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v7, Lcom/zui/launcher/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/zui/quickstep/i;

    invoke-direct {v7, v0, v11, v4, v5}, Lcom/zui/quickstep/i;-><init>(Lcom/zui/quickstep/t4;Lcom/zui/quickstep/util/ClipAnimationHelper;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v5}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->isAnimatingHome()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    new-instance v1, Lcom/android/systemui/shared/system/TransactionCompat;

    invoke-direct {v1}, Lcom/android/systemui/shared/system/TransactionCompat;-><init>()V

    new-instance v2, Lcom/zui/quickstep/h;

    invoke-direct {v2, v0, v1}, Lcom/zui/quickstep/h;-><init>(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/android/systemui/shared/system/TransactionCompat;)V

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_4
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v3

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method d()J
    .locals 2

    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method public synthetic e(Lcom/zui/quickstep/util/ClipAnimationHelper;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/t4;->d:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/zui/quickstep/util/ClipAnimationHelper;->offsetXStableInsets()V

    :cond_0
    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->setProgress(F)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p1, p3, p2}, Lcom/zui/quickstep/util/ClipAnimationHelper;->applyTransform(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    return-void
.end method

.method h(Lcom/zui/launcher/BaseDraggingActivity;Ljava/lang/Boolean;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Boolean;",
            ")Z"
        }
    .end annotation

    sget-object v0, Lcom/zui/quickstep/util/RecentsViewUtils;->INSTANCE:Lcom/zui/quickstep/util/RecentsViewUtils;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsViewUtils;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/views/RecentsView;

    iget v1, p0, Lcom/zui/quickstep/t4;->c:I

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/RecentsView;->showCurrentTask(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/views/RecentsViewForPad;

    iget v1, p0, Lcom/zui/quickstep/t4;->c:I

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/RecentsViewForPad;->showCurrentTask(I)V

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;Z)V

    iget-object v1, p0, Lcom/zui/quickstep/t4;->b:Lcom/zui/quickstep/ActivityControlHelper;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    sget-object v5, Lcom/zui/quickstep/j;->a:Lcom/zui/quickstep/j;

    iget-object v6, p0, Lcom/zui/quickstep/t4;->f:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/zui/quickstep/ActivityControlHelper;->prepareRecentsUI(Lcom/zui/launcher/BaseDraggingActivity;ZZLjava/util/function/Consumer;Lcom/zui/quickstep/RecentsAnimationDeviceState;)Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;->onRemoteAnimationReceived(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)V

    const-wide/16 v0, 0xfa

    invoke-interface {p2, v0, v1}, Lcom/zui/quickstep/ActivityControlHelper$AnimationFactory;->createActivityController(J)V

    iput-object p1, p0, Lcom/zui/quickstep/t4;->d:Lcom/zui/launcher/BaseDraggingActivity;

    sget-object p1, Lcom/zui/quickstep/util/RecentsViewUtils;->INSTANCE:Lcom/zui/quickstep/util/RecentsViewUtils;

    invoke-virtual {p1}, Lcom/zui/quickstep/util/RecentsViewUtils;->isPhone()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/quickstep/t4;->d:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/BaseRecentsView;

    iput-object p1, p0, Lcom/zui/quickstep/t4;->e:Lcom/zui/quickstep/BaseRecentsView;

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/zui/quickstep/BaseRecentsView;->setTranslationX(F)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
