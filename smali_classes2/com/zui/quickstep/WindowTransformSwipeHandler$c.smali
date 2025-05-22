.class Lcom/zui/quickstep/WindowTransformSwipeHandler$c;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/WindowTransformSwipeHandler;->o(FFJLandroid/view/animation/Interpolator;Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

.field final synthetic b:Lcom/zui/quickstep/WindowTransformSwipeHandler;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$c;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iput-object p2, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$c;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$c;->b:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$c;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    iget p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->endState:I

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->setStateOnUiThread(I)V

    return-void
.end method
