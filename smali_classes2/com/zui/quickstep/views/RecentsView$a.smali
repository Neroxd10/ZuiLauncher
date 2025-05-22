.class Lcom/zui/quickstep/views/RecentsView$a;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Float;
    .locals 0

    instance-of p0, p1, Lcom/zui/quickstep/views/RecentsView;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/zui/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/zui/quickstep/views/RecentsView;->y(Lcom/zui/quickstep/views/RecentsView;)F

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    instance-of p0, p1, Lcom/zui/quickstep/views/RecentsView;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/zui/quickstep/views/RecentsView;

    invoke-static {p1}, Lcom/zui/quickstep/views/RecentsView;->y(Lcom/zui/quickstep/views/RecentsView;)F

    move-result p0

    cmpl-float p0, p0, p2

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lcom/zui/quickstep/views/RecentsView;->z(Lcom/zui/quickstep/views/RecentsView;F)F

    invoke-static {p1}, Lcom/zui/quickstep/views/RecentsView;->A(Lcom/zui/quickstep/views/RecentsView;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView$a;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/views/RecentsView$a;->b(Landroid/view/View;F)V

    return-void
.end method
