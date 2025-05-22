.class public Lcom/zui/launcher/util/IntSparseArrayMap;
.super Landroid/util/SparseArray;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/IntSparseArrayMap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/SparseArray<",
        "TE;>;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/util/SparseArray;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/util/IntSparseArrayMap;->clone()Lcom/zui/launcher/util/IntSparseArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/zui/launcher/util/IntSparseArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zui/launcher/util/IntSparseArrayMap<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/util/IntSparseArrayMap;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/util/IntSparseArrayMap;->clone()Lcom/zui/launcher/util/IntSparseArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public containsKey(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/util/IntSparseArrayMap$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/util/IntSparseArrayMap$a;-><init>(Lcom/zui/launcher/util/IntSparseArrayMap;)V

    return-object v0
.end method
