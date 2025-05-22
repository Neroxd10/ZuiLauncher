.class Lcom/zui/launcher/views/SpringRelativeLayout$a;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/views/SpringRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/zui/launcher/views/SpringRelativeLayout;",
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
.method public a(Lcom/zui/launcher/views/SpringRelativeLayout;)F
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/views/SpringRelativeLayout;->a(Lcom/zui/launcher/views/SpringRelativeLayout;)F

    move-result p0

    return p0
.end method

.method public b(Lcom/zui/launcher/views/SpringRelativeLayout;F)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/zui/launcher/views/SpringRelativeLayout;->setDampedScrollShift(F)V

    return-void
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/zui/launcher/views/SpringRelativeLayout;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/SpringRelativeLayout$a;->a(Lcom/zui/launcher/views/SpringRelativeLayout;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/views/SpringRelativeLayout;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/views/SpringRelativeLayout$a;->b(Lcom/zui/launcher/views/SpringRelativeLayout;F)V

    return-void
.end method
