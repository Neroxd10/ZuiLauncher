.class Lcom/zui/launcher/util/IntSparseArrayMap$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/util/IntSparseArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/zui/launcher/util/IntSparseArrayMap;


# direct methods
.method constructor <init>(Lcom/zui/launcher/util/IntSparseArrayMap;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/util/IntSparseArrayMap$a;->b:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/util/IntSparseArrayMap$a;->a:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/zui/launcher/util/IntSparseArrayMap$a;->a:I

    iget-object p0, p0, Lcom/zui/launcher/util/IntSparseArrayMap$a;->b:Lcom/zui/launcher/util/IntSparseArrayMap;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/util/IntSparseArrayMap$a;->b:Lcom/zui/launcher/util/IntSparseArrayMap;

    iget v1, p0, Lcom/zui/launcher/util/IntSparseArrayMap$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/zui/launcher/util/IntSparseArrayMap$a;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
