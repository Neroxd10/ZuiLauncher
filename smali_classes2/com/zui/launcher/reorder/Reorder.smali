.class public Lcom/zui/launcher/reorder/Reorder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/reorder/Reorder$SwapItem;,
        Lcom/zui/launcher/reorder/Reorder$Type;
    }
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/reorder/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/zui/launcher/reorder/Reorder$SwapItem;)Ljava/lang/String;
    .locals 1

    iget-object p0, p1, Lcom/zui/launcher/reorder/Reorder$SwapItem;->t:Lcom/zui/launcher/reorder/Reorder$Type;

    sget-object v0, Lcom/zui/launcher/reorder/Reorder$Type;->chessman:Lcom/zui/launcher/reorder/Reorder$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/zui/launcher/reorder/Reorder$Type;->stone:Lcom/zui/launcher/reorder/Reorder$Type;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/zui/launcher/reorder/Reorder$SwapItem;->item:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/ItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    :goto_1
    iget-object p1, p1, Lcom/zui/launcher/reorder/Reorder$SwapItem;->t:Lcom/zui/launcher/reorder/Reorder$Type;

    sget-object v0, Lcom/zui/launcher/reorder/Reorder$Type;->chessman:Lcom/zui/launcher/reorder/Reorder$Type;

    if-ne p1, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "chess: "

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_2
    sget-object v0, Lcom/zui/launcher/reorder/Reorder$Type;->stone:Lcom/zui/launcher/reorder/Reorder$Type;

    if-ne p1, v0, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stone: "

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method


# virtual methods
.method public printAllOrder([[[Lcom/zui/launcher/reorder/Reorder$SwapItem;)Ljava/lang/String;
    .locals 8

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    if-nez p1, :cond_0

    const-string p0, "NULL"

    return-object p0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    aget-object v3, p1, v1

    aget-object v3, v3, v1

    array-length v3, v3

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_3

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_2

    move v6, v1

    :goto_2
    if-ge v6, v2, :cond_1

    aget-object v7, p1, v4

    aget-object v7, v7, v6

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/zui/launcher/reorder/Reorder$SwapItem;->t:Lcom/zui/launcher/reorder/Reorder$Type;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, "   "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public printOrder([[Lcom/zui/launcher/reorder/Reorder$SwapItem;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-nez p1, :cond_0

    const-string p0, "NULL"

    return-object p0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    aget-object v3, p1, v2

    array-length v3, v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_1

    aget-object v6, p1, v5

    aget-object v6, v6, v4

    invoke-direct {p0, v6}, Lcom/zui/launcher/reorder/Reorder;->a(Lcom/zui/launcher/reorder/Reorder$SwapItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "      "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reorder([[Lcom/zui/launcher/reorder/Reorder$SwapItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/reorder/Reorder;->a:Lcom/zui/launcher/reorder/a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/zui/launcher/reorder/a;->reorder([[Lcom/zui/launcher/reorder/Reorder$SwapItem;)Z

    move-result p0

    return p0
.end method

.method public reorderAll([[[Lcom/zui/launcher/reorder/Reorder$SwapItem;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/reorder/Reorder;->reorderAll([[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Z)Z

    move-result p0

    return p0
.end method

.method public reorderAll([[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Z)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/reorder/Reorder;->a:Lcom/zui/launcher/reorder/a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/reorder/a;->reorderAll([[[Lcom/zui/launcher/reorder/Reorder$SwapItem;Z)Z

    move-result p0

    return p0
.end method

.method public reorderReverse([[Lcom/zui/launcher/reorder/Reorder$SwapItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/reorder/Reorder;->a:Lcom/zui/launcher/reorder/a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/zui/launcher/reorder/a;->reorderReverse([[Lcom/zui/launcher/reorder/Reorder$SwapItem;)Z

    move-result p0

    return p0
.end method

.method public setReorderAlgorithm(Lcom/zui/launcher/reorder/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/reorder/Reorder;->a:Lcom/zui/launcher/reorder/a;

    return-void
.end method
