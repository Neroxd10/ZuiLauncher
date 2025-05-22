.class Lcom/zui/quickstep/AnimatedFloat$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/AnimatedFloat;->animateToValue(FF)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/AnimatedFloat;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/AnimatedFloat;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/AnimatedFloat$b;->a:Lcom/zui/quickstep/AnimatedFloat;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/AnimatedFloat$b;->a:Lcom/zui/quickstep/AnimatedFloat;

    invoke-static {v0}, Lcom/zui/quickstep/AnimatedFloat;->a(Lcom/zui/quickstep/AnimatedFloat;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/AnimatedFloat$b;->a:Lcom/zui/quickstep/AnimatedFloat;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/zui/quickstep/AnimatedFloat;->b(Lcom/zui/quickstep/AnimatedFloat;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method
