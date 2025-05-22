.class Lcom/zui/quickstep/TaskViewUtils$i;
.super Lcom/zui/quickstep/util/MultiValueUpdateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/zui/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/statehandlers/DepthController;Lcom/zui/launcher/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field b:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field c:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

.field final synthetic d:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field final synthetic e:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

.field final synthetic f:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;Landroid/graphics/Rect;)V
    .locals 8

    iput-object p1, p0, Lcom/zui/quickstep/TaskViewUtils$i;->d:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p2, p0, Lcom/zui/quickstep/TaskViewUtils$i;->e:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    iput-object p3, p0, Lcom/zui/quickstep/TaskViewUtils$i;->f:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/zui/quickstep/util/MultiValueUpdateListener;-><init>()V

    new-instance v7, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v6, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x43050000    # 133.0f

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/zui/quickstep/TaskViewUtils$i;->b:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    new-instance v7, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    sget-object v6, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x43380000    # 184.0f

    const/high16 v5, 0x43850000    # 266.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/zui/quickstep/TaskViewUtils$i;->c:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public onUpdate(FZ)V
    .locals 7

    new-instance p1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object p2, p0, Lcom/zui/quickstep/TaskViewUtils$i;->d:Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object p2, p2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/system/SurfaceControlCompat;

    invoke-direct {p1, p2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Lcom/android/systemui/shared/system/SurfaceControlCompat;)V

    iget-object p2, p0, Lcom/zui/quickstep/TaskViewUtils$i;->e:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    iget-object v4, p0, Lcom/zui/quickstep/TaskViewUtils$i;->c:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v5, v4, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v4}, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->getStartValue()F

    move-result v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/zui/quickstep/util/TaskViewSimulator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v5

    iget-object v6, p0, Lcom/zui/quickstep/TaskViewUtils$i;->f:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Lcom/zui/quickstep/util/TaskViewSimulator;->getCurrentMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/quickstep/TaskViewUtils$i;->f:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/quickstep/TaskViewUtils$i;->c:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v5, v5, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/zui/quickstep/TaskViewUtils$i;->b:Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v4, v4, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {p1, v4}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    :goto_1
    invoke-virtual {v3}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/zui/quickstep/util/TransformParams;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lcom/zui/quickstep/util/TransformParams;->applySurfaceParams([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
