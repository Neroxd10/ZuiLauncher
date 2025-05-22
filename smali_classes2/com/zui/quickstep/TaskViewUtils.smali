.class public final Lcom/zui/quickstep/TaskViewUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method static synthetic b([Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/zui/quickstep/util/TaskViewSimulator;

    move-result-object v3

    invoke-virtual {v2}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/zui/quickstep/util/TransformParams;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/zui/quickstep/util/TaskViewSimulator;->apply(Lcom/zui/quickstep/util/TransformParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic c([Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/zui/quickstep/views/TaskThumbnailView;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    aget-object v1, p3, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/zui/quickstep/util/TaskViewSimulator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    aget-object v1, p4, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    aget-object v1, p5, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/zui/launcher/LauncherStateManager;Lcom/zui/quickstep/views/RecentsView;Lcom/zui/launcher/statehandlers/DepthController;)V
    .locals 16
    .param p0    # Landroid/animation/AnimatorSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/zui/launcher/LauncherStateManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/zui/quickstep/views/RecentsView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/zui/launcher/statehandlers/DepthController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    xor-int/lit8 v4, p5, 0x1

    invoke-virtual/range {p7 .. p7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/BaseDraggingActivity;

    move-object/from16 v10, p1

    move-object/from16 v5, p2

    invoke-static {v3, v10, v5}, Lcom/zui/quickstep/TaskViewUtils;->findTaskViewToLaunch(Lcom/zui/launcher/BaseDraggingActivity;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/zui/quickstep/views/TaskView;

    move-result-object v11

    new-instance v12, Lcom/zui/launcher/anim/PendingAnimation;

    const-wide/16 v13, 0x96

    invoke-direct {v12, v13, v14}, Lcom/zui/launcher/anim/PendingAnimation;-><init>(J)V

    move-object v3, v11

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p8

    move-object v9, v12

    invoke-static/range {v3 .. v9}, Lcom/zui/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/zui/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/statehandlers/DepthController;Lcom/zui/launcher/anim/PendingAnimation;)V

    const/4 v3, 0x1

    if-eqz p5, :cond_0

    move-object/from16 v4, p4

    invoke-static {v4, v3, v3, v12}, Lcom/zui/quickstep/TaskViewUtils;->e([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZZLcom/zui/launcher/anim/PendingAnimation;)V

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p5, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/zui/launcher/DeviceProfile;->overviewShowAsGrid:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/zui/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    new-array v7, v3, [F

    const/4 v8, 0x0

    aput v8, v7, v5

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-virtual/range {p7 .. p7}, Lcom/zui/quickstep/views/RecentsView;->getTempClipAnimationHelper()Lcom/zui/quickstep/util/ClipAnimationHelper;

    move-result-object v6

    invoke-virtual {v2, v11, v6}, Lcom/zui/quickstep/views/RecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/util/ClipAnimationHelper;)Landroid/animation/AnimatorSet;

    move-result-object v6

    :goto_0
    sget-object v7, Lcom/zui/launcher/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v7, Lcom/zui/quickstep/TaskViewUtils$f;

    invoke-direct {v7, v2, v1}, Lcom/zui/quickstep/TaskViewUtils$f;-><init>(Lcom/zui/quickstep/views/RecentsView;Lcom/zui/launcher/LauncherStateManager;)V

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v1, v4, v13, v14}, Lcom/zui/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/zui/launcher/LauncherState;J)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->dispatchOnStart()V

    invoke-virtual {v4}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v6

    invoke-virtual {v4}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v7, Lcom/zui/quickstep/TaskViewUtils$g;

    invoke-direct {v7, v2, v1}, Lcom/zui/quickstep/TaskViewUtils$g;-><init>(Lcom/zui/quickstep/views/RecentsView;Lcom/zui/launcher/LauncherStateManager;)V

    move-object v15, v6

    move-object v6, v4

    move-object v4, v15

    :goto_1
    invoke-virtual {v12, v6}, Lcom/zui/launcher/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    sget-object v6, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v6}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual/range {p7 .. p7}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_3

    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/zui/quickstep/r;

    invoke-direct {v6, v2}, Lcom/zui/quickstep/r;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    invoke-virtual {v12, v6}, Lcom/zui/launcher/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    :cond_3
    invoke-virtual {v12}, Lcom/zui/launcher/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object v4, v2, v5

    invoke-virtual {v1, v0, v2}, Lcom/zui/launcher/LauncherStateManager;->setCurrentAnimation(Landroid/animation/AnimatorSet;[Landroid/animation/Animator;)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static composeRecentsSplitLaunchAnimator(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .locals 9
    .param p0    # Lcom/android/systemui/shared/recents/model/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/android/systemui/shared/recents/model/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/window/TransitionInfo$Change;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_1

    :cond_0
    const/4 v5, -0x1

    :goto_1
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq v5, v7, :cond_1

    iget-object v7, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v5, v7, :cond_5

    :cond_1
    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected task to be showing, but it is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v5, v6, :cond_4

    move v7, v2

    :cond_4
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v4

    aput-object v4, v1, v7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Initiating multi-split launch but the splitroot of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already visible or has broken hierarchy."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    if-ge v2, v0, :cond_8

    aget-object p0, v1, v2

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    aget-object p0, v1, v2

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p3, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static composeRecentsSplitLaunchAnimatorLegacy(Lcom/zui/quickstep/views/GroupedTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/LauncherStateManager;Lcom/zui/launcher/statehandlers/DepthController;Ljava/lang/Runnable;)V
    .locals 14
    .param p0    # Lcom/zui/quickstep/views/GroupedTaskView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/android/systemui/shared/recents/model/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/shared/recents/model/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/zui/launcher/LauncherStateManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/zui/launcher/statehandlers/DepthController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v0, p8

    if-eqz p0, :cond_0

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getRecentsView()Lcom/zui/quickstep/views/RecentsView;

    move-result-object v7

    new-instance v1, Lcom/zui/quickstep/TaskViewUtils$d;

    invoke-direct {v1, v0}, Lcom/zui/quickstep/TaskViewUtils$d;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v5, 0x1

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/zui/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/zui/launcher/LauncherStateManager;Lcom/zui/quickstep/views/RecentsView;Lcom/zui/launcher/statehandlers/DepthController;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_6

    aget-object v8, v2, v7

    iget-object v9, v8, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v9, :cond_1

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_1

    :cond_1
    const/4 v9, -0x1

    :goto_1
    iget v10, v8, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    iget-object v8, v8, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-virtual {v8}, Lcom/android/systemui/shared/system/SurfaceControlCompat;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    if-nez v8, :cond_2

    :goto_2
    move-object v11, p1

    move-object/from16 v12, p2

    goto :goto_3

    :cond_2
    if-nez v10, :cond_3

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v11, p1

    iget-object v12, v11, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq v9, v12, :cond_5

    move-object/from16 v12, p2

    iget-object v13, v12, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v13, v13, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq v9, v13, :cond_5

    const/4 v9, 0x1

    if-ne v10, v9, :cond_4

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected task to be opening, but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    array-length v5, v4

    if-ge v6, v5, :cond_8

    aget-object v5, v2, v6

    iget-object v5, v5, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-virtual {v5}, Lcom/android/systemui/shared/system/SurfaceControlCompat;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    aget-object v7, v4, v6

    iget v7, v7, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v8, 0x7f2

    if-ne v7, v8, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x172

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/zui/quickstep/a2;

    invoke-direct {v5, v1, v2, v3}, Lcom/zui/quickstep/a2;-><init>(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/zui/quickstep/TaskViewUtils$e;

    invoke-direct {v5, v1, v2, v3, v0}, Lcom/zui/quickstep/TaskViewUtils$e;-><init>(Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static composeRecentsSplitLaunchAnimatorLegacy(Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/views/TaskView;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .locals 9
    .param p0    # Lcom/zui/quickstep/views/TaskView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/zui/quickstep/views/TaskView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/window/TransitionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/window/TransitionInfo$Change;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_1

    :cond_0
    const/4 v5, -0x1

    :goto_1
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v7

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq v5, v7, :cond_1

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v7

    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v5, v7, :cond_5

    :cond_1
    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected task to be showing, but it is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v5, v6, :cond_4

    move v7, v2

    :cond_4
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v4

    aput-object v4, v1, v7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Initiating multi-split launch but the splitroot of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already visible or has broken hierarchy."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    if-ge v2, v0, :cond_8

    aget-object p0, v1, v2

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    aget-object p0, v1, v2

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p3, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static createRecentsWindowAnimator(Lcom/zui/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/statehandlers/DepthController;Lcom/zui/launcher/anim/PendingAnimation;)V
    .locals 33
    .param p0    # Lcom/zui/quickstep/views/TaskView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/zui/launcher/statehandlers/DepthController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/TaskView;->getRecentsView()Lcom/zui/quickstep/views/RecentsView;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/TaskView;->isEndQuickswitchCuj()Z

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/zui/quickstep/views/TaskView;->setEndQuickswitchCuj(Z)V

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/TaskView;->getRecentsView()Lcom/zui/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    move v13, v11

    :goto_0
    new-instance v14, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v14, v0, v1, v13}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    invoke-virtual {v14}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->getNavBarRemoteAnimationTarget()Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v15

    new-instance v0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v0, v6}, Lcom/zui/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-virtual {v14, v0}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->addReleaseCheck(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat$ReleaseCheck;)V

    invoke-virtual {v9}, Lcom/zui/quickstep/views/RecentsView;->getRemoteTargetHandles()[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/TaskView;->isRunningTask()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/zui/quickstep/RemoteTargetGluer;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v14}, Lcom/zui/quickstep/RemoteTargetGluer;-><init>(Landroid/content/Context;Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/TaskView;->containsMultipleTasks()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/zui/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;[I)[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v14}, Lcom/zui/quickstep/RemoteTargetGluer;->assignTargets(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v1

    :goto_1
    move-object v5, v1

    array-length v1, v5

    move v2, v11

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v5, v2

    invoke-virtual {v3}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/zui/quickstep/util/TransformParams;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/zui/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)Lcom/zui/quickstep/util/TransformParams;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v9, v6}, Lcom/zui/quickstep/views/RecentsView;->indexOfChild(Lcom/zui/quickstep/views/TaskView;)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    iget-boolean v1, v3, Lcom/zui/launcher/DeviceProfile;->overviewShowAsGrid:Z

    invoke-virtual {v9}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v2

    if-eq v0, v2, :cond_4

    if-nez v1, :cond_4

    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    move/from16 v16, v11

    :goto_3
    invoke-virtual {v9, v0}, Lcom/zui/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v2

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/TaskView;->getGridTranslationY()F

    move-result v0

    float-to-int v0, v0

    move v1, v0

    goto :goto_4

    :cond_5
    move v1, v11

    :goto_4
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-nez v0, :cond_6

    array-length v0, v5

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v0, :cond_6

    aget-object v18, v5, v11

    invoke-virtual/range {v18 .. v18}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/zui/quickstep/util/TaskViewSimulator;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/zui/quickstep/util/TaskViewSimulator;->setDp(Lcom/zui/launcher/DeviceProfile;)V

    move/from16 v19, v0

    sget-object v0, Lcom/zui/launcher/util/DisplayController;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, v4}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/util/DisplayController;

    invoke-virtual {v0}, Lcom/zui/launcher/util/DisplayController;->getInfo()Lcom/zui/launcher/util/DisplayController$Info;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/util/DisplayController$Info;->rotation:I

    move-object/from16 v20, v3

    invoke-virtual {v12}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v3

    invoke-virtual {v3, v0, v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->update(II)Z

    iget-object v0, v12, Lcom/zui/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/zui/quickstep/AnimatedFloat;

    const/4 v3, 0x0

    iput v3, v0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    iget-object v0, v12, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/zui/quickstep/AnimatedFloat;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/TaskView;->isGridTask()Z

    move-result v0

    invoke-virtual {v12, v0}, Lcom/zui/quickstep/util/TaskViewSimulator;->setIsGridTask(Z)V

    invoke-virtual {v12}, Lcom/zui/quickstep/util/TaskViewSimulator;->getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/zui/launcher/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v3, Lcom/zui/quickstep/n4;->a:Lcom/zui/quickstep/n4;

    invoke-interface {v0, v12, v3, v2, v1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->set(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Int2DAction;II)V

    invoke-virtual/range {v18 .. v18}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/zui/quickstep/util/TransformParams;

    move-result-object v3

    sget-object v12, Lcom/zui/quickstep/util/TransformParams;->TARGET_ALPHA:Landroid/util/FloatProperty;

    const/16 v18, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v22, v1

    move/from16 v23, v2

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/zui/launcher/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v24

    move-object/from16 v0, p6

    move-object v1, v3

    move-object v2, v12

    move-object/from16 v12, v20

    move/from16 v3, v18

    move-object/from16 v25, v4

    move/from16 v4, v21

    move-object v6, v5

    move-object/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    add-int/lit8 v11, v11, 0x1

    move-object v5, v6

    move-object v3, v12

    move/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v4, v25

    move-object/from16 v6, p0

    goto :goto_5

    :cond_6
    move-object/from16 v25, v4

    move-object v6, v5

    array-length v0, v6

    move-object/from16 v11, v17

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_9

    aget-object v2, v6, v1

    invoke-virtual {v2}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/zui/quickstep/util/TaskViewSimulator;

    move-result-object v2

    iget-object v3, v2, Lcom/zui/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/zui/quickstep/AnimatedFloat;

    sget-object v4, Lcom/zui/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    sget-object v5, Lcom/zui/launcher/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v8, v3, v4, v12, v5}, Lcom/zui/launcher/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object v3, v2, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/zui/quickstep/AnimatedFloat;

    sget-object v4, Lcom/zui/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    invoke-virtual {v2}, Lcom/zui/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v5

    sget-object v11, Lcom/zui/launcher/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v3, v4, v5, v11}, Lcom/zui/launcher/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object v2, v2, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/zui/quickstep/AnimatedFloat;

    sget-object v3, Lcom/zui/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v5, 0x0

    invoke-virtual {v8, v2, v3, v5, v4}, Lcom/zui/launcher/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/zui/quickstep/b2;

    invoke-direct {v2, v6}, Lcom/zui/quickstep/b2;-><init>([Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    invoke-virtual {v8, v2}, Lcom/zui/launcher/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    if-eqz v15, :cond_7

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Lcom/zui/quickstep/TaskViewUtils$i;

    invoke-direct {v3, v15, v6, v2}, Lcom/zui/quickstep/TaskViewUtils$i;-><init>(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Rect;)V

    invoke-virtual {v8, v3}, Lcom/zui/launcher/anim/PendingAnimation;->addOnFrameListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_7

    :cond_7
    if-eqz v13, :cond_8

    invoke-virtual {v9}, Lcom/zui/quickstep/views/RecentsView;->getRecentsAnimationController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v2

    if-eqz v2, :cond_8

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->animateNavigationBarToApp(J)V

    :cond_8
    :goto_7
    add-int/lit8 v1, v1, 0x1

    move-object v11, v6

    goto :goto_6

    :cond_9
    if-nez p1, :cond_d

    if-eqz v16, :cond_d

    array-length v0, v11

    if-lez v0, :cond_d

    sget-object v2, Lcom/zui/launcher/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v5, v1}, Lcom/zui/launcher/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v5

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    array-length v0, v11

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_a

    aget-object v2, v11, v1

    invoke-virtual {v2}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/zui/quickstep/util/TaskViewSimulator;

    move-result-object v3

    invoke-virtual {v2}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/zui/quickstep/util/TransformParams;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/zui/quickstep/util/TaskViewSimulator;->apply(Lcom/zui/quickstep/util/TransformParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/zui/quickstep/views/TaskView;->getThumbnails()[Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object v0

    array-length v1, v11

    new-array v1, v1, [Landroid/graphics/Matrix;

    array-length v2, v11

    new-array v2, v2, [Landroid/graphics/Matrix;

    const/4 v3, 0x0

    :goto_9
    array-length v4, v0

    if-ge v3, v4, :cond_b

    aget-object v4, v0, v3

    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v12, 0x0

    invoke-direct {v5, v12, v12, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v6, 0x4

    new-array v6, v6, [F

    const/4 v9, 0x0

    aput v12, v6, v9

    const/4 v13, 0x1

    aput v12, v6, v13

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/4 v15, 0x2

    aput v13, v6, v15

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    const/16 v16, 0x3

    aput v13, v6, v16

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    invoke-static {v4, v13, v6, v9}, Lcom/zui/launcher/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    new-instance v4, Landroid/graphics/RectF;

    aget v13, v6, v9

    const/16 v17, 0x1

    aget v9, v6, v17

    aget v15, v6, v15

    aget v6, v6, v16

    invoke-direct {v4, v13, v9, v15, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v5, v4, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    aput-object v6, v1, v3

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    array-length v3, v11

    new-array v3, v3, [Landroid/graphics/Matrix;

    const/4 v4, 0x0

    :goto_a
    array-length v5, v11

    if-ge v4, v5, :cond_c

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    aput-object v5, v3, v4

    aget-object v5, v11, v4

    invoke-virtual {v5}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/zui/quickstep/util/TaskViewSimulator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_c
    new-instance v28, Landroid/graphics/Matrix;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Matrix;-><init>()V

    new-instance v4, Lcom/zui/quickstep/z1;

    move-object/from16 v26, v4

    move-object/from16 v27, v11

    move-object/from16 v29, v1

    move-object/from16 v30, v3

    move-object/from16 v31, v2

    move-object/from16 v32, v0

    invoke-direct/range {v26 .. v32}, Lcom/zui/quickstep/z1;-><init>([Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Landroid/graphics/Matrix;[Lcom/zui/quickstep/views/TaskThumbnailView;)V

    invoke-virtual {v8, v4}, Lcom/zui/launcher/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/zui/quickstep/TaskViewUtils$j;

    invoke-direct {v1, v0}, Lcom/zui/quickstep/TaskViewUtils$j;-><init>([Lcom/zui/quickstep/views/TaskThumbnailView;)V

    invoke-virtual {v8, v1}, Lcom/zui/launcher/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_d
    new-instance v0, Lcom/zui/quickstep/TaskViewUtils$a;

    invoke-direct {v0, v10, v14}, Lcom/zui/quickstep/TaskViewUtils$a;-><init>(ZLcom/zui/quickstep/util/RemoteAnimationTargetSet;)V

    invoke-virtual {v8, v0}, Lcom/zui/launcher/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v7, :cond_e

    sget-object v0, Lcom/zui/launcher/statehandlers/DepthController;->DEPTH:Landroid/util/FloatProperty;

    sget-object v1, Lcom/zui/launcher/LauncherState;->BACKGROUND_APP:Lcom/zui/launcher/LauncherState;

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Lcom/zui/launcher/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v1

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v7, v0, v1, v2}, Lcom/zui/launcher/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :cond_e
    return-void
.end method

.method static synthetic d(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;ZLandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    if-eqz p2, :cond_0

    move v1, p3

    goto :goto_1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private static e([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZZLcom/zui/launcher/anim/PendingAnimation;)V
    .locals 7
    .param p0    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/zui/launcher/anim/PendingAnimation;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_9

    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    aget-object v4, p0, v2

    iget-object v5, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-virtual {v5}, Lcom/android/systemui/shared/system/SurfaceControlCompat;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    iget v4, v4, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    const/16 v6, 0x7f2

    if-ne v4, v6, :cond_1

    if-eqz v5, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_7

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl;

    if-eqz p1, :cond_4

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    if-eqz p1, :cond_5

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :cond_7
    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance p2, Lcom/zui/quickstep/u1;

    invoke-direct {p2, v1, v0, p1}, Lcom/zui/quickstep/u1;-><init>(Ljava/util/List;Landroid/view/SurfaceControl$Transaction;Z)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/zui/quickstep/TaskViewUtils$h;

    invoke-direct {p2, p1, v1, v0}, Lcom/zui/quickstep/TaskViewUtils$h;-><init>(ZLjava/util/List;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/zui/launcher/anim/PendingAnimation;->getDuration()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p3, p0}, Lcom/zui/launcher/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static findTaskViewToLaunch(Lcom/zui/launcher/BaseDraggingActivity;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/zui/quickstep/views/TaskView;
    .locals 7

    invoke-virtual {p0}, Lcom/zui/launcher/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/BaseRecentsView;

    instance-of v0, p1, Lcom/zui/quickstep/views/TaskView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zui/quickstep/views/TaskView;

    invoke-interface {p0, p1}, Lcom/zui/quickstep/BaseRecentsView;->isTaskViewVisible(Lcom/zui/quickstep/views/TaskView;)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfo;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    if-eqz v0, :cond_3

    move v3, v2

    :goto_0
    invoke-interface {p0}, Lcom/zui/quickstep/BaseRecentsView;->getTaskViewCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {p0, v3}, Lcom/zui/quickstep/BaseRecentsView;->getTaskViewAt(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/zui/quickstep/BaseRecentsView;->isTaskViewVisible(Lcom/zui/quickstep/views/TaskView;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne p1, v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    return-object v1

    :cond_4
    array-length p1, p2

    :goto_1
    const/4 v0, -0x1

    if-ge v2, p1, :cond_6

    aget-object v3, p2, v2

    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-nez v4, :cond_5

    iget p1, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move p1, v0

    :goto_2
    if-ne p1, v0, :cond_7

    return-object v1

    :cond_7
    invoke-interface {p0, p1}, Lcom/zui/quickstep/BaseRecentsView;->getTaskView(I)Lcom/zui/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p0, p1}, Lcom/zui/quickstep/BaseRecentsView;->isTaskViewVisible(Lcom/zui/quickstep/views/TaskView;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    return-object p1

    :cond_9
    :goto_3
    return-object v1
.end method

.method public static getRecentsWindowAnimator(Lcom/zui/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/ClipAnimationHelper;)Landroid/animation/ValueAnimator;
    .locals 9

    new-instance v0, Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    new-instance v1, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v1}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;-><init>()V

    invoke-virtual {v1, v0}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    move-result-object v6

    new-instance v1, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, v2}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    invoke-virtual {v1, v0}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->addDependentTransactionApplier(Lcom/zui/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {p0}, Lcom/zui/quickstep/views/TaskView;->getBaseRecentsView()Lcom/zui/quickstep/BaseRecentsView;

    move-result-object v7

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    sget-object p3, Lcom/zui/launcher/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Lcom/zui/quickstep/TaskViewUtils$b;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, v1

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/zui/quickstep/TaskViewUtils$b;-><init>(Lcom/zui/quickstep/util/ClipAnimationHelper;Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;Lcom/zui/quickstep/BaseRecentsView;Z)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Lcom/zui/quickstep/TaskViewUtils$c;

    invoke-direct {p0, v1}, Lcom/zui/quickstep/TaskViewUtils$c;-><init>(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)V

    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static setSplitAuxiliarySurfacesShown([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/zui/quickstep/TaskViewUtils;->e([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZZLcom/zui/launcher/anim/PendingAnimation;)V

    return-void
.end method
