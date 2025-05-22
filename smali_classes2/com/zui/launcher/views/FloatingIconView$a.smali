.class Lcom/zui/launcher/views/FloatingIconView$a;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/views/FloatingIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/zui/launcher/views/FloatingIconView;",
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
.method public a(Lcom/zui/launcher/views/FloatingIconView;)F
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/views/FloatingIconView;->a(Lcom/zui/launcher/views/FloatingIconView;)F

    move-result p0

    return p0
.end method

.method public b(Lcom/zui/launcher/views/FloatingIconView;F)V
    .locals 0

    invoke-static {p1, p2}, Lcom/zui/launcher/views/FloatingIconView;->b(Lcom/zui/launcher/views/FloatingIconView;F)F

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/zui/launcher/views/FloatingIconView;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/FloatingIconView$a;->a(Lcom/zui/launcher/views/FloatingIconView;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/views/FloatingIconView;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/views/FloatingIconView$a;->b(Lcom/zui/launcher/views/FloatingIconView;F)V

    return-void
.end method
