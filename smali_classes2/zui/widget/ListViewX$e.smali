.class final Lzui/widget/ListViewX$e;
.super Landroid/util/IntProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/ListViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lzui/widget/ListViewX;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lzui/widget/ListViewX;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Lzui/widget/ListViewX;->A(Lzui/widget/ListViewX;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public b(Lzui/widget/ListViewX;I)V
    .locals 0

    invoke-static {p1}, Lzui/widget/ListViewX;->A(Lzui/widget/ListViewX;)I

    move-result p0

    sub-int p0, p2, p0

    invoke-static {p1, p2}, Lzui/widget/ListViewX;->B(Lzui/widget/ListViewX;I)I

    invoke-static {p1, p2}, Lzui/widget/ListViewX;->b(Lzui/widget/ListViewX;I)I

    invoke-static {p1}, Lzui/widget/ListViewX;->x(Lzui/widget/ListViewX;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lzui/widget/ListViewX;->g(Lzui/widget/ListViewX;)I

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1, p0}, Lzui/widget/ListViewX;->C(Lzui/widget/ListViewX;I)V

    :cond_0
    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lzui/widget/ListViewX;->w(Lzui/widget/ListViewX;IZ)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lzui/widget/ListViewX;

    invoke-virtual {p0, p1}, Lzui/widget/ListViewX$e;->a(Lzui/widget/ListViewX;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lzui/widget/ListViewX;

    invoke-virtual {p0, p1, p2}, Lzui/widget/ListViewX$e;->b(Lzui/widget/ListViewX;I)V

    return-void
.end method
