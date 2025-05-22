.class Lcom/zui/quickstep/WindowTransformSwipeHandler$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/WindowTransformSwipeHandler;->o(FFJLandroid/view/animation/Interpolator;Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/zui/quickstep/WindowTransformSwipeHandler;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;J)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$b;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iput-wide p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$b;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createActivityAnimationToHome()Lcom/zui/launcher/anim/AnimatorPlaybackController;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$b;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-static {v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->k(Lcom/zui/quickstep/WindowTransformSwipeHandler;)Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$b;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-static {v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->k(Lcom/zui/quickstep/WindowTransformSwipeHandler;)Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/quickstep/ActivityControlHelper;->getCreatedActivity()Lcom/zui/launcher/BaseDraggingActivity;

    move-result-object v0

    invoke-static {}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createActivityAnimationToHome, activity ===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$b;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-static {v1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->k(Lcom/zui/quickstep/WindowTransformSwipeHandler;)Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/zui/quickstep/ActivityControlHelper;->onTransitionCancelled(Lcom/zui/launcher/BaseDraggingActivity;Z)V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-wide v1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$b;->a:J

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p0

    return-object p0
.end method

.method public getWindowTargetRect()Landroid/graphics/RectF;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$b;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mTaskViewSimulator:Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/TaskViewSimulator;->getTargetRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/high16 p0, 0x3e800000    # 0.25f

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->scaleRectFAboutCenter(Landroid/graphics/RectF;F)V

    return-object v0
.end method
