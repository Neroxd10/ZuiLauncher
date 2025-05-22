.class Lcom/zui/launcher/icons/FastBitmapDrawable$a;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/icons/FastBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/zui/launcher/icons/FastBitmapDrawable;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/icons/FastBitmapDrawable;)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/icons/FastBitmapDrawable;->a(Lcom/zui/launcher/icons/FastBitmapDrawable;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/zui/launcher/icons/FastBitmapDrawable;Ljava/lang/Float;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p1, p0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->b(Lcom/zui/launcher/icons/FastBitmapDrawable;F)F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/icons/FastBitmapDrawable$a;->a(Lcom/zui/launcher/icons/FastBitmapDrawable;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/icons/FastBitmapDrawable$a;->b(Lcom/zui/launcher/icons/FastBitmapDrawable;Ljava/lang/Float;)V

    return-void
.end method
