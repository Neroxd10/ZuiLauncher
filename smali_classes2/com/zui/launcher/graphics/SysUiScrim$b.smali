.class Lcom/zui/launcher/graphics/SysUiScrim$b;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/graphics/SysUiScrim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/zui/launcher/graphics/SysUiScrim;",
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
.method public a(Lcom/zui/launcher/graphics/SysUiScrim;)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/graphics/SysUiScrim;->c(Lcom/zui/launcher/graphics/SysUiScrim;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/zui/launcher/graphics/SysUiScrim;F)V
    .locals 0

    invoke-static {p1, p2}, Lcom/zui/launcher/graphics/SysUiScrim;->d(Lcom/zui/launcher/graphics/SysUiScrim;F)F

    invoke-static {p1}, Lcom/zui/launcher/graphics/SysUiScrim;->e(Lcom/zui/launcher/graphics/SysUiScrim;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/zui/launcher/graphics/SysUiScrim;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/graphics/SysUiScrim$b;->a(Lcom/zui/launcher/graphics/SysUiScrim;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/graphics/SysUiScrim;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/graphics/SysUiScrim$b;->b(Lcom/zui/launcher/graphics/SysUiScrim;F)V

    return-void
.end method
