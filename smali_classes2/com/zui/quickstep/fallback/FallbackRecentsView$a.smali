.class Lcom/zui/quickstep/fallback/FallbackRecentsView$a;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/fallback/FallbackRecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/zui/quickstep/fallback/FallbackRecentsView;",
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
.method public a(Lcom/zui/quickstep/fallback/FallbackRecentsView;)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Lcom/zui/quickstep/fallback/FallbackRecentsView;->X0(Lcom/zui/quickstep/fallback/FallbackRecentsView;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/zui/quickstep/fallback/FallbackRecentsView;F)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/zui/quickstep/fallback/FallbackRecentsView;->setZoomProgress(F)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/zui/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/fallback/FallbackRecentsView$a;->a(Lcom/zui/quickstep/fallback/FallbackRecentsView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/zui/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/fallback/FallbackRecentsView$a;->b(Lcom/zui/quickstep/fallback/FallbackRecentsView;F)V

    return-void
.end method
