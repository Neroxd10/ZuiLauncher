.class Lcom/zui/launcher/globalsearch/OverSmoothUpView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/OverSmoothUpView;->handleHideView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/OverSmoothUpView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/OverSmoothUpView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView$a;->a:Lcom/zui/launcher/globalsearch/OverSmoothUpView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView$a;->a:Lcom/zui/launcher/globalsearch/OverSmoothUpView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->a(Lcom/zui/launcher/globalsearch/OverSmoothUpView;I)I

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView$a;->a:Lcom/zui/launcher/globalsearch/OverSmoothUpView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
