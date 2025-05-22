.class Lcom/zui/launcher/XDockViewLayout$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewLayout;->p(IZLjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/zui/launcher/XDockViewLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewLayout$b;->b:Lcom/zui/launcher/XDockViewLayout;

    iput-object p2, p0, Lcom/zui/launcher/XDockViewLayout$b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    iget-object v0, p0, Lcom/zui/launcher/XDockViewLayout$b;->b:Lcom/zui/launcher/XDockViewLayout;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/XDockViewLayout$b;->a:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/XDockViewLayout;->b(Lcom/zui/launcher/XDockViewLayout;Landroid/view/View;F)V

    :cond_0
    return-void
.end method
