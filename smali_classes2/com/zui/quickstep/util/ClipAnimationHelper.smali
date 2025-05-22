.class public Lcom/zui/quickstep/util/ClipAnimationHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/RectF;

.field private final g:Landroid/graphics/RectF;

.field private final h:Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;

.field private final i:Landroid/graphics/Matrix;

.field private final j:Landroid/graphics/Rect;

.field private final k:Landroid/graphics/RectF;

.field private final l:Landroid/graphics/RectF;

.field private final m:F

.field public final mHomeStackBounds:Landroid/graphics/Rect;

.field private final n:F

.field private final o:Z

.field private p:Z

.field private q:F

.field private r:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/graphics/Point;

.field private t:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->e:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->f:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->g:Landroid/graphics/RectF;

    new-instance v0, Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->h:Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->i:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->j:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->k:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->l:Landroid/graphics/RectF;

    sget-object v0, Lcom/zui/quickstep/util/c;->a:Lcom/zui/quickstep/util/c;

    iput-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->r:Ljava/util/function/BiFunction;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->s:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->t:F

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->m:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->o:Z

    invoke-static {p1}, Lcom/zui/quickstep/util/TaskCornerRadius;->get(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->n:F

    iget-boolean p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->o:Z

    iput-boolean p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->p:Z

    return-void
.end method

.method private a(Lcom/zui/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    .locals 2
    .param p1    # Lcom/zui/quickstep/util/SurfaceTransactionApplier;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/zui/quickstep/util/SurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/android/systemui/shared/system/TransactionCompat;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TransactionCompat;-><init>()V

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    invoke-static {p0, v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat;->applyParams(Lcom/android/systemui/shared/system/TransactionCompat;Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shared/system/TransactionCompat;->apply()V

    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    return-object p1
.end method

.method private c(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->b:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->s:Landroid/graphics/Point;

    iget-object p1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->s:Landroid/graphics/Point;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Point;->set(II)V

    :goto_1
    return-void
.end method

.method private d(Lcom/zui/launcher/BaseDraggingActivity;)V
    .locals 6

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getFullScreenProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getStableInsets(Landroid/graphics/Rect;)V

    iget-boolean v5, v0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v5, :cond_0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v3

    goto :goto_0

    :cond_0
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v3

    :goto_0
    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    iget p1, v4, Landroid/graphics/Rect;->left:I

    iget v3, v0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    add-int/2addr p1, v3

    sub-int/2addr p1, v1

    :goto_1
    iget-object v3, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    add-int/2addr v1, v0

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method


# virtual methods
.method public applyTransform(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/quickstep/util/ClipAnimationHelper;->applyTransform(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;Z)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public applyTransform(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;Z)Landroid/graphics/RectF;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v2, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->a:F

    iget-object v4, v2, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->b:Landroid/graphics/RectF;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->k:Landroid/graphics/RectF;

    iget-object v7, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    invoke-virtual {v4, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v4, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->k:Landroid/graphics/RectF;

    iget v7, v2, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->offsetScale:F

    invoke-static {v4, v7}, Lcom/zui/launcher/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    iget-object v4, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->h:Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;

    iget-object v7, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    iget-object v8, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->k:Landroid/graphics/RectF;

    invoke-virtual {v4, v3, v7, v8}, Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;->evaluate(FLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v4

    iget v7, v2, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->offsetX:F

    invoke-virtual {v4, v7, v6}, Landroid/graphics/RectF;->offset(FF)V

    iget v7, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->t:F

    cmpl-float v8, v7, v6

    if-eqz v8, :cond_0

    invoke-virtual {v4, v7, v6}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-boolean v7, v2, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->d:Z

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->f:Landroid/graphics/RectF;

    goto :goto_0

    :cond_1
    iget-object v7, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->e:Landroid/graphics/RectF;

    :goto_0
    iget-object v8, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->g:Landroid/graphics/RectF;

    iget v9, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v9, v3

    iput v9, v8, Landroid/graphics/RectF;->left:F

    iget v9, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v9, v3

    iput v9, v8, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v10, v3

    sub-float/2addr v9, v10

    iput v9, v8, Landroid/graphics/RectF;->right:F

    iget-object v8, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->g:Landroid/graphics/RectF;

    iget-object v9, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v7, v3

    sub-float/2addr v9, v7

    iput v9, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v4, v5}, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->setCurrentRectAndTargetAlpha(Landroid/graphics/RectF;F)Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;

    :cond_2
    iget-object v4, v1, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v4, v4

    new-array v4, v4, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    iget-object v9, v1, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v10, v9

    if-ge v8, v10, :cond_b

    aget-object v9, v9, v8

    iget-object v10, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->i:Landroid/graphics/Matrix;

    iget-object v11, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v12, v11, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    invoke-virtual {v10, v12, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v10, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->j:Landroid/graphics/Rect;

    iget-object v11, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v10, v7, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v11, v2, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->b:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    iget-object v12, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    iget v12, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    iget v13, v1, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->targetMode:I

    const/4 v14, 0x0

    if-ne v12, v13, :cond_8

    iget-object v12, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->r:Ljava/util/function/BiFunction;

    iget v13, v2, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->c:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v12, v9, v13}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    iget v13, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v15, 0x2

    if-eq v13, v15, :cond_7

    iget-object v13, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->i:Landroid/graphics/Matrix;

    iget-object v15, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    iget-object v6, v2, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->b:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v13, v15, v6, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v6, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->g:Landroid/graphics/RectF;

    invoke-virtual {v6, v10}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    iget-object v6, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v6, :cond_4

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_3

    goto :goto_2

    :cond_3
    move-object v10, v14

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v6, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->i:Landroid/graphics/Matrix;

    iget-object v7, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v13, v7, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v6, v13, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_3
    iget-boolean v6, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->o:Z

    if-eqz v6, :cond_a

    iget v6, v2, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->e:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_5

    iget-object v7, v2, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->b:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v7, v11

    move v11, v7

    goto :goto_5

    :cond_5
    iget-boolean v6, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->p:Z

    if-eqz v6, :cond_6

    iget v6, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->m:F

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    iget v7, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->n:F

    invoke-static {v3, v6, v7}, Lcom/zui/launcher/Utilities;->mapRange(FFF)F

    move-result v6

    :goto_5
    iput v6, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->q:F

    goto :goto_7

    :cond_7
    iget-boolean v6, v1, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->hasRecents:Z

    if-eqz v6, :cond_a

    iget v6, v2, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->c:F

    mul-float/2addr v6, v3

    sub-float v12, v5, v6

    goto :goto_6

    :cond_8
    sget-object v6, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v6}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz p3, :cond_9

    move v12, v5

    move-object v10, v14

    goto :goto_6

    :cond_9
    move v12, v5

    :cond_a
    :goto_6
    const/4 v6, 0x0

    :goto_7
    new-instance v7, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v9, v9, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-direct {v7, v9}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Lcom/android/systemui/shared/system/SurfaceControlCompat;)V

    invoke-virtual {v7, v12}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v7

    iget-object v9, v0, Lcom/zui/quickstep/util/ClipAnimationHelper;->i:Landroid/graphics/Matrix;

    invoke-virtual {v7, v9}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v7

    div-float/2addr v6, v11

    invoke-virtual {v7, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v6

    aput-object v6, v4, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_b
    :try_start_0
    iget-object v1, v2, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->f:Lcom/zui/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v0, v1, v4}, Lcom/zui/quickstep/util/ClipAnimationHelper;->a(Lcom/zui/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    iget-object v0, v2, Lcom/zui/quickstep/util/ClipAnimationHelper$TransformParams;->b:Landroid/graphics/RectF;

    return-object v0
.end method

.method public fromTaskThumbnailView(Lcom/zui/quickstep/views/TaskThumbnailView;Lcom/zui/quickstep/BaseRecentsView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/quickstep/util/ClipAnimationHelper;->fromTaskThumbnailView(Lcom/zui/quickstep/views/TaskThumbnailView;Lcom/zui/quickstep/BaseRecentsView;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    return-void
.end method

.method public fromTaskThumbnailView(Lcom/zui/quickstep/views/TaskThumbnailView;Lcom/zui/quickstep/BaseRecentsView;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 7
    .param p3    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {v0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    aget v4, v2, v6

    const/4 v5, 0x1

    aget v2, v2, v5

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/zui/quickstep/util/ClipAnimationHelper;->c(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/zui/quickstep/BaseRecentsView;->shouldUseMultiWindowTaskSizeStrategy()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, v0}, Lcom/zui/quickstep/util/ClipAnimationHelper;->d(Lcom/zui/launcher/BaseDraggingActivity;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Lcom/zui/launcher/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/zui/quickstep/views/TaskThumbnailView;->getInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, p1, p2}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {p0, p2}, Lcom/zui/quickstep/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    if-nez p3, :cond_2

    iget-object p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget-object p2, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p1, p2

    iget-object p0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->e:Landroid/graphics/RectF;

    iget p2, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/RectF;->left:F

    iget p2, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/RectF;->top:F

    iget p2, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/RectF;->right:F

    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p2, p1

    iput p2, p0, Landroid/graphics/RectF;->bottom:F

    :cond_2
    return-void
.end method

.method public getCurrentCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->q:F

    return p0
.end method

.method public getCurrentRectWithInsets()Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->i:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->l:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->g:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->l:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getScaleAndTranslation()Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iget-object p0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    sub-float/2addr v1, p0

    new-instance p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public getSourceStackBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getTargetRect()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    return-object p0
.end method

.method public offsetXStableInsets()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getStableInsets(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->t:F

    return-void
.end method

.method public prepareAnimation(Lcom/zui/launcher/DeviceProfile;Z)V
    .locals 0

    iget-boolean p2, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->o:Z

    if-eqz p2, :cond_0

    iget-boolean p1, p1, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->p:Z

    return-void
.end method

.method public setTaskAlphaCallback(Ljava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->r:Ljava/util/function/BiFunction;

    return-void
.end method

.method public updateForFullscreenOverview(Lcom/zui/quickstep/views/TaskView;)Lcom/zui/quickstep/util/ClipAnimationHelper;
    .locals 1

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getThumbnail()Lcom/zui/quickstep/views/TaskThumbnailView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getRecentsView()Lcom/zui/quickstep/views/RecentsView;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/zui/quickstep/util/ClipAnimationHelper;->fromTaskThumbnailView(Lcom/zui/quickstep/views/TaskThumbnailView;Lcom/zui/quickstep/BaseRecentsView;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p1, v0}, Lcom/zui/quickstep/BaseRecentsView;->getTaskSize(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0, p2}, Lcom/zui/quickstep/util/ClipAnimationHelper;->c(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    return-void
.end method

.method public updateTargetRect(Landroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->b:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->s:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-nez v1, :cond_0

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->s:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->s:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    new-instance p1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/zui/launcher/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->e:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v3, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget-object v5, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public updateTargetRectWithRotation(Landroid/graphics/Rect;I)V
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->b:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->s:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-nez v1, :cond_0

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->s:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->mHomeStackBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->s:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    new-instance p1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/zui/launcher/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/RectF;->offset(FF)V

    :goto_0
    iget-object p2, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->e:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->f:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->e:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/zui/quickstep/util/ClipAnimationHelper;->c:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method
