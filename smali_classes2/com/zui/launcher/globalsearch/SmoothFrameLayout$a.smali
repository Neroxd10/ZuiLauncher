.class Lcom/zui/launcher/globalsearch/SmoothFrameLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->handleBackAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/SmoothFrameLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/SmoothFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout$a;->a:Lcom/zui/launcher/globalsearch/SmoothFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout$a;->a:Lcom/zui/launcher/globalsearch/SmoothFrameLayout;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/SmoothFrameLayout;->setMoveEvent(F)V

    return-void
.end method
