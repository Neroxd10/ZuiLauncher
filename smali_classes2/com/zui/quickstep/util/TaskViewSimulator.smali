.class public Lcom/zui/quickstep/util/TaskViewSimulator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/util/TransformParams$BuilderProxy;


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/graphics/RectF;

.field private final c:[F

.field private d:Lcom/zui/quickstep/util/RecentsOrientedState;

.field private final e:Landroid/content/Context;

.field private final f:Z

.field public final fullScreenProgress:Lcom/zui/quickstep/AnimatedFloat;

.field private final g:Landroid/graphics/Rect;

.field private h:Z

.field private final i:Landroid/graphics/PointF;

.field private j:Lcom/zui/launcher/DeviceProfile;

.field private final k:Landroid/graphics/Matrix;

.field private final l:Landroid/graphics/Matrix;

.field private final m:Landroid/graphics/Point;

.field private final n:Landroid/graphics/Rect;

.field private final o:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field private final p:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

.field private final q:Landroid/graphics/Matrix;

.field private final r:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

.field public final recentsViewPrimaryTranslation:Lcom/zui/quickstep/AnimatedFloat;

.field public final recentsViewScale:Lcom/zui/quickstep/AnimatedFloat;

.field public final recentsViewScroll:Lcom/zui/quickstep/AnimatedFloat;

.field public final recentsViewSecondaryTranslation:Lcom/zui/quickstep/AnimatedFloat;

.field private s:Z

.field private t:I

.field public final taskPrimaryTranslation:Lcom/zui/quickstep/AnimatedFloat;

.field public final taskSecondaryTranslation:Lcom/zui/quickstep/AnimatedFloat;

.field private u:Landroid/graphics/Rect;

.field private v:F

.field private w:F

.field private x:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->b:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->c:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->g:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->i:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->l:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->m:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->n:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->o:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    new-instance v0, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-direct {v0}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->p:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->q:Landroid/graphics/Matrix;

    new-instance v0, Lcom/zui/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/zui/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/zui/quickstep/AnimatedFloat;

    new-instance v0, Lcom/zui/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/zui/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->taskSecondaryTranslation:Lcom/zui/quickstep/AnimatedFloat;

    new-instance v0, Lcom/zui/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/zui/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/zui/quickstep/AnimatedFloat;

    new-instance v0, Lcom/zui/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/zui/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/zui/quickstep/AnimatedFloat;

    new-instance v0, Lcom/zui/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/zui/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewSecondaryTranslation:Lcom/zui/quickstep/AnimatedFloat;

    new-instance v0, Lcom/zui/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/zui/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewPrimaryTranslation:Lcom/zui/quickstep/AnimatedFloat;

    new-instance v0, Lcom/zui/quickstep/AnimatedFloat;

    invoke-direct {v0}, Lcom/zui/quickstep/AnimatedFloat;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/zui/quickstep/AnimatedFloat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->s:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->u:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->v:F

    iput v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->w:F

    iput-object p1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->e:Landroid/content/Context;

    new-instance v0, Lcom/zui/quickstep/util/RecentsOrientedState;

    sget-object v1, Lcom/zui/quickstep/util/l0;->a:Lcom/zui/quickstep/util/l0;

    invoke-direct {v0, p1, v1}, Lcom/zui/quickstep/util/RecentsOrientedState;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/util/RecentsOrientedState;->setGestureActive(Z)Z

    new-instance v0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-direct {v0, p1}, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->r:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getStateId()I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->t:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/zui/launcher/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/launcher/touch/PagedOrientationHandler;->getRecentsRtlSetting(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->f:Z

    return-void
.end method

.method static synthetic c(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAppToOverviewAnim(Lcom/zui/launcher/anim/PendingAnimation;Landroid/animation/TimeInterpolator;)V
    .locals 11

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/zui/quickstep/AnimatedFloat;

    sget-object v2, Lcom/zui/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/zui/quickstep/AnimatedFloat;

    sget-object v7, Lcom/zui/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v5, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/zui/launcher/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public addOverviewToAppAnim(Lcom/zui/launcher/anim/PendingAnimation;Landroid/animation/TimeInterpolator;)V
    .locals 11

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/zui/quickstep/AnimatedFloat;

    sget-object v2, Lcom/zui/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/zui/quickstep/AnimatedFloat;

    sget-object v7, Lcom/zui/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v9

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v5, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/zui/launcher/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public apply(Lcom/zui/quickstep/util/TransformParams;)V
    .locals 9

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->j:Lcom/zui/launcher/DeviceProfile;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->n:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->s:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->t:I

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/zui/quickstep/util/RecentsOrientedState;->getStateId()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->s:Z

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getStateId()I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->t:I

    invoke-virtual {p0}, Lcom/zui/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->o:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/zui/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    iget-object v2, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->p:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    iget-object v3, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->n:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->o:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->j:Lcom/zui/launcher/DeviceProfile;

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->updateThumbnailMatrix(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/zui/launcher/DeviceProfile;I)V

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->p:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->q:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    :cond_2
    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/zui/quickstep/AnimatedFloat;

    iget v0, v0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/Utilities;->boundToRange(FFF)F

    move-result v4

    iget-object v3, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->r:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/zui/quickstep/AnimatedFloat;

    iget v5, v0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->j:Lcom/zui/launcher/DeviceProfile;

    iget-object v8, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->p:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-virtual/range {v3 .. v8}, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->setProgress(FFILcom/zui/launcher/DeviceProfile;Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)V

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->r:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v1, v0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    iget v0, v0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    iget-object v2, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->g:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->p:Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-virtual {v5}, Lcom/zui/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    iget v5, v1, Landroid/graphics/RectF;->left:F

    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v4, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->g:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/zui/launcher/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v4, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    sget-object v5, Lcom/zui/launcher/touch/PagedOrientationHandler;->MATRIX_POST_TRANSLATE:Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;

    iget-object v6, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/zui/quickstep/AnimatedFloat;

    iget v6, v6, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-interface {v0, v4, v5, v6}, Lcom/zui/launcher/touch/PagedOrientationHandler;->set(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;F)V

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/zui/launcher/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v4, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    sget-object v5, Lcom/zui/launcher/touch/PagedOrientationHandler;->MATRIX_POST_TRANSLATE:Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;

    iget-object v6, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->taskSecondaryTranslation:Lcom/zui/quickstep/AnimatedFloat;

    iget v6, v6, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-interface {v0, v4, v5, v6}, Lcom/zui/launcher/touch/PagedOrientationHandler;->setSecondary(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;F)V

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/zui/launcher/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v4, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    sget-object v5, Lcom/zui/launcher/touch/PagedOrientationHandler;->MATRIX_POST_TRANSLATE:Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;

    iget-object v6, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/zui/quickstep/AnimatedFloat;

    iget v6, v6, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-interface {v0, v4, v5, v6}, Lcom/zui/launcher/touch/PagedOrientationHandler;->set(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;F)V

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/zui/quickstep/AnimatedFloat;

    iget v4, v4, Lcom/zui/quickstep/AnimatedFloat;->value:F

    iget-object v5, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->i:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v4, v6, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/zui/launcher/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v4, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    sget-object v5, Lcom/zui/launcher/touch/PagedOrientationHandler;->MATRIX_POST_TRANSLATE:Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;

    iget-object v6, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewSecondaryTranslation:Lcom/zui/quickstep/AnimatedFloat;

    iget v6, v6, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-interface {v0, v4, v5, v6}, Lcom/zui/launcher/touch/PagedOrientationHandler;->setSecondary(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;F)V

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/zui/launcher/touch/PagedOrientationHandler;

    move-result-object v0

    iget-object v4, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    sget-object v5, Lcom/zui/launcher/touch/PagedOrientationHandler;->MATRIX_POST_TRANSLATE:Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;

    iget-object v6, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewPrimaryTranslation:Lcom/zui/quickstep/AnimatedFloat;

    iget v6, v6, Lcom/zui/quickstep/AnimatedFloat;->value:F

    invoke-interface {v0, v4, v5, v6}, Lcom/zui/launcher/touch/PagedOrientationHandler;->set(Ljava/lang/Object;Lcom/zui/launcher/touch/PagedOrientationHandler$Float2DAction;F)V

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/util/TaskViewSimulator;->applyWindowToHomeRotation(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->b:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v5, v1, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    iget v6, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v6

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v1

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->q:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/util/TransformParams;->createSurfaceParams(Lcom/zui/quickstep/util/TransformParams$BuilderProxy;)[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/util/TransformParams;->applySurfaceParams([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public applyWindowToHomeRotation(Landroid/graphics/Matrix;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->u:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->v:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->w:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->w:F

    iget v2, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->v:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/zui/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zui/launcher/states/RotationHelper;->deltaRotation(II)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->j:Lcom/zui/launcher/DeviceProfile;

    iget v2, v1, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    int-to-float v2, v2

    iget v1, v1, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float v1, v1

    invoke-static {v0, v2, v1, p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->postDisplayRotation(IFFLandroid/graphics/Matrix;)V

    :cond_2
    iget-object p0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->m:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    int-to-float v0, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public getCurrentCornerRadius()F
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->r:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    iget v0, v0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->c:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    aput v0, v1, v3

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->q:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->c:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object p0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->c:[F

    aget p0, p0, v3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public getCurrentCropRect()Landroid/graphics/RectF;
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->r:Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v0, v0, Lcom/zui/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->b:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->g:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->g:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->q:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->b:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getCurrentMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getCurrentRect()Landroid/graphics/RectF;
    .locals 5

    invoke-virtual {p0}, Lcom/zui/quickstep/util/TaskViewSimulator;->getCurrentCropRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->l:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/zui/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v1

    iget-object v2, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->j:Lcom/zui/launcher/DeviceProfile;

    iget v3, v2, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    int-to-float v3, v3

    iget v2, v2, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float v2, v2

    iget-object v4, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->l:Landroid/graphics/Matrix;

    invoke-static {v1, v3, v2, v4}, Lcom/zui/quickstep/util/RecentsOrientedState;->preDisplayRotation(IFFLandroid/graphics/Matrix;)V

    iget-object p0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->l:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public getFullScreenScale()F
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->j:Lcom/zui/launcher/DeviceProfile;

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/quickstep/util/LayoutUtils;->isHomeAndOverviewSame(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->j:Lcom/zui/launcher/DeviceProfile;

    iget-object v2, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->g:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/zui/quickstep/util/LayoutUtils;->calculateLauncherTaskSize(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->j:Lcom/zui/launcher/DeviceProfile;

    iget-object v2, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->g:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/zui/quickstep/util/LayoutUtils;->calculateFallbackTaskSize(Landroid/content/Context;Lcom/zui/launcher/DeviceProfile;Landroid/graphics/Rect;)V

    :goto_0
    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    iget-object v1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->g:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->j:Lcom/zui/launcher/DeviceProfile;

    iget-object p0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->i:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2, p0}, Lcom/zui/quickstep/util/RecentsOrientedState;->getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/zui/launcher/DeviceProfile;Landroid/graphics/PointF;)F

    move-result p0

    return p0
.end method

.method public getOrientationState()Lcom/zui/quickstep/util/RecentsOrientedState;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    return-object p0
.end method

.method public getTargetRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->g:Landroid/graphics/Rect;

    return-object p0
.end method

.method public offsetX(F)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->w:F

    return-void
.end method

.method public offsetY(F)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->v:F

    return-void
.end method

.method public onBuildTargetParams(Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/quickstep/util/TransformParams;)V
    .locals 1

    iget-object p2, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->k:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/zui/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    sget-object p2, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->LIVE_TILE:Lcom/zui/quickstep/util/NavigationModeFeatureFlag;

    invoke-virtual {p2}, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/zui/quickstep/util/TransformParams;->getRecentsSurface()Landroid/view/SurfaceControl;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/zui/quickstep/util/TransformParams;->getRecentsSurface()Landroid/view/SurfaceControl;

    move-result-object p2

    iget-boolean p0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->h:Z

    if-eqz p0, :cond_0

    const/high16 p0, -0x80000000

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withRelativeLayerTo(Landroid/view/SurfaceControl;I)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    :cond_1
    return-void
.end method

.method public setDp(Lcom/zui/launcher/DeviceProfile;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->j:Lcom/zui/launcher/DeviceProfile;

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    iget-boolean p1, p1, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->setMultiWindowMode(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->s:Z

    return-void
.end method

.method public setDrawsBelowRecents(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->h:Z

    return-void
.end method

.method public setIsGridTask(Z)V
    .locals 0

    return-void
.end method

.method public setLayoutRotation(II)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1, p2}, Lcom/zui/quickstep/util/RecentsOrientedState;->update(II)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->s:Z

    return-void
.end method

.method public setOrientationState(Lcom/zui/quickstep/util/RecentsOrientedState;)V
    .locals 0
    .param p1    # Lcom/zui/quickstep/util/RecentsOrientedState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->s:Z

    return-void
.end method

.method public setOverviewStackBounds(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->u:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/zui/quickstep/util/TaskViewSimulator;->setPreviewBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->m:Landroid/graphics/Point;

    iget-object p1, p1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    iput-object p2, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->x:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->n:Landroid/graphics/Rect;

    iget-object p1, p2, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPreviewBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->o:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->o:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v0, 0x1

    iput v0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    iget-object p2, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->n:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->s:Z

    return-void
.end method

.method public setRecentsConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->d:Lcom/zui/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/util/RecentsOrientedState;->setActivityConfiguration(Landroid/content/res/Configuration;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->s:Z

    return-void
.end method

.method public setScroll(F)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/TaskViewSimulator;->recentsViewScroll:Lcom/zui/quickstep/AnimatedFloat;

    iput p1, p0, Lcom/zui/quickstep/AnimatedFloat;->value:F

    return-void
.end method

.method public setTaskRectTranslation(II)V
    .locals 0

    return-void
.end method
