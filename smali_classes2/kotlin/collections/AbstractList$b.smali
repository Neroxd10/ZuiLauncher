.class Lkotlin/collections/AbstractList$b;
.super Lkotlin/collections/AbstractList$a;
.source ""

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList<",
        "TE;>.a;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field final synthetic c:Lkotlin/collections/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/AbstractList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/collections/AbstractList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/collections/AbstractList$b;->c:Lkotlin/collections/AbstractList;

    invoke-direct {p0, p1}, Lkotlin/collections/AbstractList$a;-><init>(Lkotlin/collections/AbstractList;)V

    sget-object p1, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget-object v0, p0, Lkotlin/collections/AbstractList$b;->c:Lkotlin/collections/AbstractList;

    invoke-virtual {v0}, Lkotlin/collections/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    invoke-virtual {p0, p2}, Lkotlin/collections/AbstractList$a;->c(I)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasPrevious()Z
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/AbstractList$a;->b()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextIndex()I
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/AbstractList$a;->b()I

    move-result p0

    return p0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/collections/AbstractList$b;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/collections/AbstractList$b;->c:Lkotlin/collections/AbstractList;

    invoke-virtual {p0}, Lkotlin/collections/AbstractList$a;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lkotlin/collections/AbstractList$a;->c(I)V

    invoke-virtual {p0}, Lkotlin/collections/AbstractList$a;->b()I

    move-result p0

    invoke-virtual {v0, p0}, Lkotlin/collections/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public previousIndex()I
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/AbstractList$a;->b()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation is not supported for read-only collection"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
