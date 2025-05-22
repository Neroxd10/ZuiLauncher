.class Lzui/widget/SlideView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/widget/SlideView;


# direct methods
.method constructor <init>(Lzui/widget/SlideView;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/SlideView$a;->a:Lzui/widget/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lzui/widget/SlideView$a;->a:Lzui/widget/SlideView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lzui/widget/SlideView;->a(Lzui/widget/SlideView;Z)Z

    iget-object p1, p0, Lzui/widget/SlideView$a;->a:Lzui/widget/SlideView;

    invoke-static {p1}, Lzui/widget/SlideView;->b(Lzui/widget/SlideView;)I

    move-result p1

    iget-object v0, p0, Lzui/widget/SlideView$a;->a:Lzui/widget/SlideView;

    invoke-static {v0}, Lzui/widget/SlideView;->d(Lzui/widget/SlideView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lzui/widget/SlideView$a;->a:Lzui/widget/SlideView;

    invoke-static {p0}, Lzui/widget/SlideView;->e(Lzui/widget/SlideView;)Landroid/widget/CheckBox;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
