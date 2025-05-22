.class Lcom/zui/quickstep/FallbackActivityControllerHelper$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/FallbackActivityControllerHelper;->prepareHomeUI(Lcom/zui/quickstep/RecentsActivity;)Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/FallbackActivityControllerHelper;Lcom/zui/quickstep/views/RecentsView;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$a;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createActivityAnimationToHome()Lcom/zui/launcher/anim/AnimatorPlaybackController;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$a;->a:Lcom/zui/quickstep/views/RecentsView;

    sget-object v1, Lcom/zui/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/zui/quickstep/FallbackActivityControllerHelper$a$a;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/FallbackActivityControllerHelper$a$a;-><init>(Lcom/zui/quickstep/FallbackActivityControllerHelper$a;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$a;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$a;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    int-to-long v2, p0

    invoke-static {v1, v2, v3}, Lcom/zui/launcher/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p0

    return-object p0
.end method

.method public getWindowTargetRect()Landroid/graphics/RectF;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$a;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v0

    iget-object p0, p0, Lcom/zui/quickstep/FallbackActivityControllerHelper$a;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotY()F

    move-result p0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0, p0, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method
