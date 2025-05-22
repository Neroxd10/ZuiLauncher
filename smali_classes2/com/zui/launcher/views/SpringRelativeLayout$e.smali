.class Lcom/zui/launcher/views/SpringRelativeLayout$e;
.super Lcom/zui/launcher/views/SpringRelativeLayout$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/views/SpringRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private d:F

.field final synthetic e:Lcom/zui/launcher/views/SpringRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/views/SpringRelativeLayout;Landroid/content/Context;F)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/SpringRelativeLayout$e;->e:Lcom/zui/launcher/views/SpringRelativeLayout;

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/views/SpringRelativeLayout$c;-><init>(Lcom/zui/launcher/views/SpringRelativeLayout;Landroid/content/Context;F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAbsorb(I)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout$e;->e:Lcom/zui/launcher/views/SpringRelativeLayout;

    int-to-float p1, p1

    iget p0, p0, Lcom/zui/launcher/views/SpringRelativeLayout$c;->a:F

    mul-float/2addr p1, p0

    invoke-static {v0, p1}, Lcom/zui/launcher/views/SpringRelativeLayout;->e(Lcom/zui/launcher/views/SpringRelativeLayout;F)V

    return-void
.end method

.method public onPull(FF)V
    .locals 2

    iget-object p2, p0, Lcom/zui/launcher/views/SpringRelativeLayout$e;->e:Lcom/zui/launcher/views/SpringRelativeLayout;

    invoke-static {p2, p0}, Lcom/zui/launcher/views/SpringRelativeLayout;->c(Lcom/zui/launcher/views/SpringRelativeLayout;Lcom/zui/launcher/views/SpringRelativeLayout$c;)V

    iget p2, p0, Lcom/zui/launcher/views/SpringRelativeLayout$e;->d:F

    iget v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout$c;->a:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    mul-float/2addr p1, v0

    add-float/2addr p2, p1

    iput p2, p0, Lcom/zui/launcher/views/SpringRelativeLayout$e;->d:F

    iget-object p1, p0, Lcom/zui/launcher/views/SpringRelativeLayout$e;->e:Lcom/zui/launcher/views/SpringRelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/zui/launcher/views/SpringRelativeLayout;->setDampedScrollShiftH(F)V

    iget-object p0, p0, Lcom/zui/launcher/views/SpringRelativeLayout$e;->e:Lcom/zui/launcher/views/SpringRelativeLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/SpringRelativeLayout;->saveMaxScrollX(Z)V

    return-void
.end method

.method public onRelease()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/views/SpringRelativeLayout$e;->d:F

    iget-object v1, p0, Lcom/zui/launcher/views/SpringRelativeLayout$e;->e:Lcom/zui/launcher/views/SpringRelativeLayout;

    invoke-static {v1, v0}, Lcom/zui/launcher/views/SpringRelativeLayout;->e(Lcom/zui/launcher/views/SpringRelativeLayout;F)V

    iget-object p0, p0, Lcom/zui/launcher/views/SpringRelativeLayout$e;->e:Lcom/zui/launcher/views/SpringRelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/views/SpringRelativeLayout;->saveMaxScrollX(Z)V

    return-void
.end method
