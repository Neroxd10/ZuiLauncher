.class Lcom/zui/launcher/globalsearch/OverSmoothUpView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


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

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView$b;->a:Lcom/zui/launcher/globalsearch/OverSmoothUpView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView$b;->a:Lcom/zui/launcher/globalsearch/OverSmoothUpView;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->b(Lcom/zui/launcher/globalsearch/OverSmoothUpView;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/OverSmoothUpView$b;->a:Lcom/zui/launcher/globalsearch/OverSmoothUpView;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/OverSmoothUpView;->c(Lcom/zui/launcher/globalsearch/OverSmoothUpView;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u52a8\u753b\u6267\u884c\u7ed3\u675f"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
