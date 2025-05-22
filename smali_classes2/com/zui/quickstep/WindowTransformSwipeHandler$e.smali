.class Lcom/zui/quickstep/WindowTransformSwipeHandler$e;
.super Lcom/zui/launcher/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/WindowTransformSwipeHandler;->createWindowAnimationToHome(FLcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;)Lcom/zui/quickstep/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/WindowTransformSwipeHandler;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$e;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-direct {p0}, Lcom/zui/launcher/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$e;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->c(Lcom/zui/quickstep/WindowTransformSwipeHandler;)V

    :cond_0
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$e;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget-object p1, p1, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mRecentsView:Lcom/zui/quickstep/views/RecentsView;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/zui/quickstep/v;

    invoke-direct {v0, p1}, Lcom/zui/quickstep/v;-><init>(Lcom/zui/quickstep/views/RecentsView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$e;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->d(Lcom/zui/quickstep/WindowTransformSwipeHandler;Z)V

    iget-object p1, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$e;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    invoke-static {p1}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->k(Lcom/zui/quickstep/WindowTransformSwipeHandler;)Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$e;->a:Lcom/zui/quickstep/WindowTransformSwipeHandler;

    iget-object p0, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler;->mActivity:Lcom/zui/launcher/BaseDraggingActivity;

    invoke-interface {p1, p0}, Lcom/zui/quickstep/ActivityControlHelper;->onSwipeUpToHomeComplete(Lcom/zui/launcher/BaseDraggingActivity;)V

    return-void
.end method
