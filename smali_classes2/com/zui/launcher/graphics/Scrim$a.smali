.class Lcom/zui/launcher/graphics/Scrim$a;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/graphics/Scrim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/zui/launcher/graphics/Scrim;",
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
.method public a(Lcom/zui/launcher/graphics/Scrim;)Ljava/lang/Float;
    .locals 0

    iget p0, p1, Lcom/zui/launcher/graphics/Scrim;->mScrimProgress:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/zui/launcher/graphics/Scrim;F)V
    .locals 0

    invoke-static {p1, p2}, Lcom/zui/launcher/graphics/Scrim;->a(Lcom/zui/launcher/graphics/Scrim;F)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/zui/launcher/graphics/Scrim;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/graphics/Scrim$a;->a(Lcom/zui/launcher/graphics/Scrim;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/graphics/Scrim;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/graphics/Scrim$a;->b(Lcom/zui/launcher/graphics/Scrim;F)V

    return-void
.end method
