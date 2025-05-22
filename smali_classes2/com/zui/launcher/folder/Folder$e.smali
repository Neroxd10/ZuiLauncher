.class Lcom/zui/launcher/folder/Folder$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/folder/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zui/launcher/ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)I
    .locals 1

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->rank:I

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->rank:I

    if-eq p0, v0, :cond_0

    sub-int/2addr p0, v0

    return p0

    :cond_0
    iget p0, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-eq p0, v0, :cond_1

    sub-int/2addr p0, v0

    return p0

    :cond_1
    iget p0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/zui/launcher/ItemInfo;

    check-cast p2, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/folder/Folder$e;->a(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)I

    move-result p0

    return p0
.end method
