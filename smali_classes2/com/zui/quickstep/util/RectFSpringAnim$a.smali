.class Lcom/zui/quickstep/util/RectFSpringAnim$a;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/zui/quickstep/util/RectFSpringAnim;",
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
.method public a(Lcom/zui/quickstep/util/RectFSpringAnim;)F
    .locals 0

    invoke-static {p1}, Lcom/zui/quickstep/util/RectFSpringAnim;->a(Lcom/zui/quickstep/util/RectFSpringAnim;)F

    move-result p0

    return p0
.end method

.method public b(Lcom/zui/quickstep/util/RectFSpringAnim;F)V
    .locals 0

    invoke-static {p1, p2}, Lcom/zui/quickstep/util/RectFSpringAnim;->b(Lcom/zui/quickstep/util/RectFSpringAnim;F)F

    invoke-static {p1}, Lcom/zui/quickstep/util/RectFSpringAnim;->c(Lcom/zui/quickstep/util/RectFSpringAnim;)V

    return-void
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/zui/quickstep/util/RectFSpringAnim;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/util/RectFSpringAnim$a;->a(Lcom/zui/quickstep/util/RectFSpringAnim;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/zui/quickstep/util/RectFSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/util/RectFSpringAnim$a;->b(Lcom/zui/quickstep/util/RectFSpringAnim;F)V

    return-void
.end method
