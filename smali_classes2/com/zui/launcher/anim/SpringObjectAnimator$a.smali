.class Lcom/zui/launcher/anim/SpringObjectAnimator$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/anim/SpringObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;FFF[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/anim/SpringObjectAnimator;


# direct methods
.method constructor <init>(Lcom/zui/launcher/anim/SpringObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator$a;->a:Lcom/zui/launcher/anim/SpringObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator$a;->a:Lcom/zui/launcher/anim/SpringObjectAnimator;

    invoke-static {v0}, Lcom/zui/launcher/anim/SpringObjectAnimator;->c(Lcom/zui/launcher/anim/SpringObjectAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator$a;->a:Lcom/zui/launcher/anim/SpringObjectAnimator;

    invoke-static {p0}, Lcom/zui/launcher/anim/SpringObjectAnimator;->e(Lcom/zui/launcher/anim/SpringObjectAnimator;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/anim/SpringObjectAnimator$a;->a:Lcom/zui/launcher/anim/SpringObjectAnimator;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/launcher/anim/SpringObjectAnimator;->a(Lcom/zui/launcher/anim/SpringObjectAnimator;Z)Z

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator$a;->a:Lcom/zui/launcher/anim/SpringObjectAnimator;

    invoke-static {p0}, Lcom/zui/launcher/anim/SpringObjectAnimator;->d(Lcom/zui/launcher/anim/SpringObjectAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator$a;->a:Lcom/zui/launcher/anim/SpringObjectAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zui/launcher/anim/SpringObjectAnimator;->a(Lcom/zui/launcher/anim/SpringObjectAnimator;Z)Z

    iget-object v0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator$a;->a:Lcom/zui/launcher/anim/SpringObjectAnimator;

    invoke-static {v0, v1}, Lcom/zui/launcher/anim/SpringObjectAnimator;->b(Lcom/zui/launcher/anim/SpringObjectAnimator;Z)Z

    iget-object p0, p0, Lcom/zui/launcher/anim/SpringObjectAnimator$a;->a:Lcom/zui/launcher/anim/SpringObjectAnimator;

    invoke-static {p0}, Lcom/zui/launcher/anim/SpringObjectAnimator;->c(Lcom/zui/launcher/anim/SpringObjectAnimator;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    return-void
.end method
