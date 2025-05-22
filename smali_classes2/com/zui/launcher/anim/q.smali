.class public final synthetic Lcom/zui/launcher/anim/q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/anim/RevealOutlineAnimation;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/anim/RevealOutlineAnimation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/anim/q;->a:Lcom/zui/launcher/anim/RevealOutlineAnimation;

    iput-object p2, p0, Lcom/zui/launcher/anim/q;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/anim/q;->a:Lcom/zui/launcher/anim/RevealOutlineAnimation;

    iget-object p0, p0, Lcom/zui/launcher/anim/q;->b:Landroid/view/View;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/anim/RevealOutlineAnimation;->a(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
