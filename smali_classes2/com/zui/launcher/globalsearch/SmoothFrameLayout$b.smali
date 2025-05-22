.class Lcom/zui/launcher/globalsearch/SmoothFrameLayout$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


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

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout$b;->a:Lcom/zui/launcher/globalsearch/SmoothFrameLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SmoothFrameLayout$b;->a:Lcom/zui/launcher/globalsearch/SmoothFrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string p0, "SmoothFrameLayout"

    const-string p1, "handleBackAnimator   onAnimationEnd --- "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
