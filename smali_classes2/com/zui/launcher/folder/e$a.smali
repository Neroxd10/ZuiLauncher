.class Lcom/zui/launcher/folder/e$a;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/folder/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/zui/launcher/folder/e;",
        "[F>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/folder/e;)[F
    .locals 2

    invoke-static {}, Lcom/zui/launcher/folder/e;->a()[F

    move-result-object p0

    invoke-static {p1}, Lcom/zui/launcher/folder/e;->b(Lcom/zui/launcher/folder/e;)Lcom/zui/launcher/folder/f;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/folder/f;->c:F

    const/4 v1, 0x0

    aput v0, p0, v1

    invoke-static {}, Lcom/zui/launcher/folder/e;->a()[F

    move-result-object p0

    invoke-static {p1}, Lcom/zui/launcher/folder/e;->b(Lcom/zui/launcher/folder/e;)Lcom/zui/launcher/folder/f;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/folder/f;->a:F

    const/4 v1, 0x1

    aput v0, p0, v1

    invoke-static {}, Lcom/zui/launcher/folder/e;->a()[F

    move-result-object p0

    invoke-static {p1}, Lcom/zui/launcher/folder/e;->b(Lcom/zui/launcher/folder/e;)Lcom/zui/launcher/folder/f;

    move-result-object p1

    iget p1, p1, Lcom/zui/launcher/folder/f;->b:F

    const/4 v0, 0x2

    aput p1, p0, v0

    invoke-static {}, Lcom/zui/launcher/folder/e;->a()[F

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/zui/launcher/folder/e;[F)V
    .locals 0

    invoke-static {p1, p2}, Lcom/zui/launcher/folder/e;->c(Lcom/zui/launcher/folder/e;[F)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/zui/launcher/folder/e;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/e$a;->a(Lcom/zui/launcher/folder/e;)[F

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/folder/e;

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/folder/e$a;->b(Lcom/zui/launcher/folder/e;[F)V

    return-void
.end method
