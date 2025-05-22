.class public final synthetic Lcom/zui/launcher/popup/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/popup/ArrowPopup;

.field public final synthetic b:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/popup/ArrowPopup;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/b;->a:Lcom/zui/launcher/popup/ArrowPopup;

    iput-object p2, p0, Lcom/zui/launcher/popup/b;->b:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/popup/b;->a:Lcom/zui/launcher/popup/ArrowPopup;

    iget-object p0, p0, Lcom/zui/launcher/popup/b;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/popup/ArrowPopup;->e(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
