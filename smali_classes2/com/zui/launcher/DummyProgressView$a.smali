.class Lcom/zui/launcher/DummyProgressView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DummyProgressView;->i(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/DummyProgressView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DummyProgressView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DummyProgressView$a;->a:Lcom/zui/launcher/DummyProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/DummyProgressView$a;->a:Lcom/zui/launcher/DummyProgressView;

    invoke-static {v0, p1}, Lcom/zui/launcher/DummyProgressView;->b(Lcom/zui/launcher/DummyProgressView;I)I

    iget-object p1, p0, Lcom/zui/launcher/DummyProgressView$a;->a:Lcom/zui/launcher/DummyProgressView;

    invoke-static {p1}, Lcom/zui/launcher/DummyProgressView;->a(Lcom/zui/launcher/DummyProgressView;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/zui/launcher/DummyProgressView;->d(Lcom/zui/launcher/DummyProgressView;I)I

    iget-object p1, p0, Lcom/zui/launcher/DummyProgressView$a;->a:Lcom/zui/launcher/DummyProgressView;

    invoke-static {p1}, Lcom/zui/launcher/DummyProgressView;->c(Lcom/zui/launcher/DummyProgressView;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/zui/launcher/DummyProgressView;->e(Lcom/zui/launcher/DummyProgressView;Z)V

    iget-object p0, p0, Lcom/zui/launcher/DummyProgressView$a;->a:Lcom/zui/launcher/DummyProgressView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
