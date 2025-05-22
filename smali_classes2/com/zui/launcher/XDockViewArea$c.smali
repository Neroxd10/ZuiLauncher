.class Lcom/zui/launcher/XDockViewArea$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewArea;->i(Landroid/view/View;Z[FLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:[F

.field final synthetic d:Lcom/zui/launcher/XDockViewArea;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewArea;Landroid/view/View;Z[F)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewArea$c;->d:Lcom/zui/launcher/XDockViewArea;

    iput-object p2, p0, Lcom/zui/launcher/XDockViewArea$c;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/zui/launcher/XDockViewArea$c;->b:Z

    iput-object p4, p0, Lcom/zui/launcher/XDockViewArea$c;->c:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/XDockViewArea$c;->d:Lcom/zui/launcher/XDockViewArea;

    iget-object v1, p0, Lcom/zui/launcher/XDockViewArea$c;->a:Landroid/view/View;

    iget-boolean v2, p0, Lcom/zui/launcher/XDockViewArea$c;->b:Z

    iget-object p0, p0, Lcom/zui/launcher/XDockViewArea$c;->c:[F

    invoke-static {v0, v1, v2, p0, p1}, Lcom/zui/launcher/XDockViewArea;->e(Lcom/zui/launcher/XDockViewArea;Landroid/view/View;Z[FF)V

    return-void
.end method
