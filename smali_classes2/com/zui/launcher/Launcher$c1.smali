.class Lcom/zui/launcher/Launcher$c1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->a1(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$c1;->b:Lcom/zui/launcher/Launcher;

    iput p2, p0, Lcom/zui/launcher/Launcher$c1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher$c1;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/Launcher$c1;->b:Lcom/zui/launcher/Launcher;

    iget p0, p0, Lcom/zui/launcher/Launcher$c1;->a:I

    invoke-virtual {p1, p0}, Lcom/zui/launcher/Launcher;->setWindowBlurValue(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher$c1;->b:Lcom/zui/launcher/Launcher;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->setWindowBlurValue(I)V

    return-void
.end method
