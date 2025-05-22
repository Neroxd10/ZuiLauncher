.class Lcom/zui/launcher/dragndrop/DragView$h$a;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/dragndrop/DragView$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/zui/launcher/dragndrop/DragView$h;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/dragndrop/DragView$h;)F
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/dragndrop/DragView$h;->a(Lcom/zui/launcher/dragndrop/DragView$h;)F

    move-result p0

    return p0
.end method

.method public b(Lcom/zui/launcher/dragndrop/DragView$h;F)V
    .locals 0

    invoke-static {p1, p2}, Lcom/zui/launcher/dragndrop/DragView$h;->b(Lcom/zui/launcher/dragndrop/DragView$h;F)F

    invoke-static {p1}, Lcom/zui/launcher/dragndrop/DragView$h;->c(Lcom/zui/launcher/dragndrop/DragView$h;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/zui/launcher/dragndrop/DragView$h;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/dragndrop/DragView$h$a;->a(Lcom/zui/launcher/dragndrop/DragView$h;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/dragndrop/DragView$h;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/dragndrop/DragView$h$a;->b(Lcom/zui/launcher/dragndrop/DragView$h;F)V

    return-void
.end method
