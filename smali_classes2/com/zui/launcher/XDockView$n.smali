.class Lcom/zui/launcher/XDockView$n;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/XDockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "n"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/XDockView;


# direct methods
.method private constructor <init>(Lcom/zui/launcher/XDockView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockView$n;->a:Lcom/zui/launcher/XDockView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/XDockView;Lcom/zui/launcher/XDockView$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/XDockView$n;-><init>(Lcom/zui/launcher/XDockView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/XDockView$n;->a:Lcom/zui/launcher/XDockView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-static {v0, p1}, Lcom/zui/launcher/XDockView;->h(Lcom/zui/launcher/XDockView;F)F

    iget-object p1, p0, Lcom/zui/launcher/XDockView$n;->a:Lcom/zui/launcher/XDockView;

    invoke-static {p1}, Lcom/zui/launcher/XDockView;->b(Lcom/zui/launcher/XDockView;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/XDockView$n;->a:Lcom/zui/launcher/XDockView;

    invoke-static {p1, v1}, Lcom/zui/launcher/XDockView;->m(Lcom/zui/launcher/XDockView;Z)Z

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/XDockView$n;->a:Lcom/zui/launcher/XDockView;

    invoke-static {p1}, Lcom/zui/launcher/XDockView;->n(Lcom/zui/launcher/XDockView;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/XDockView$n;->a:Lcom/zui/launcher/XDockView;

    invoke-static {p1}, Lcom/zui/launcher/XDockView;->b(Lcom/zui/launcher/XDockView;)F

    move-result p1

    cmpl-float p1, p1, v0

    const/4 v2, 0x0

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/XDockView$n;->a:Lcom/zui/launcher/XDockView;

    invoke-virtual {p1}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/XDockView$n;->a:Lcom/zui/launcher/XDockView;

    invoke-virtual {p1}, Lcom/zui/launcher/XDockView;->doStack()V

    iget-object p1, p0, Lcom/zui/launcher/XDockView$n;->a:Lcom/zui/launcher/XDockView;

    invoke-static {p1, v0}, Lcom/zui/launcher/XDockView;->e(Lcom/zui/launcher/XDockView;F)F

    iget-object p0, p0, Lcom/zui/launcher/XDockView$n;->a:Lcom/zui/launcher/XDockView;

    invoke-static {p0, v2}, Lcom/zui/launcher/XDockView;->o(Lcom/zui/launcher/XDockView;Z)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/XDockView$n;->a:Lcom/zui/launcher/XDockView;

    invoke-static {p1}, Lcom/zui/launcher/XDockView;->b(Lcom/zui/launcher/XDockView;)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/XDockView$n;->a:Lcom/zui/launcher/XDockView;

    invoke-virtual {p1}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/XDockView$n;->a:Lcom/zui/launcher/XDockView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/zui/launcher/XDockView;->e(Lcom/zui/launcher/XDockView;F)F

    iget-object p0, p0, Lcom/zui/launcher/XDockView$n;->a:Lcom/zui/launcher/XDockView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/zui/launcher/XDockView;->o(Lcom/zui/launcher/XDockView;Z)Z

    return-void
.end method
