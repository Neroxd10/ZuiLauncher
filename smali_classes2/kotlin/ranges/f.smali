.class final Lkotlin/ranges/f;
.super Lkotlin/collections/UIntIterator;
.source ""


# annotations
.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation


# instance fields
.field private final a:I

.field private b:Z

.field private final c:I

.field private d:I


# direct methods
.method private constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Lkotlin/collections/UIntIterator;-><init>()V

    iput p2, p0, Lkotlin/ranges/f;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lkotlin/UnsignedKt;->uintCompare(II)I

    move-result p2

    if-lez p3, :cond_0

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lkotlin/ranges/f;->b:Z

    invoke-static {p3}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p2

    iput p2, p0, Lkotlin/ranges/f;->c:I

    iget-boolean p2, p0, Lkotlin/ranges/f;->b:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Lkotlin/ranges/f;->a:I

    :goto_1
    iput p1, p0, Lkotlin/ranges/f;->d:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lkotlin/ranges/f;-><init>(III)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/ranges/f;->b:Z

    return p0
.end method

.method public nextUInt-pVg5ArA()I
    .locals 2

    iget v0, p0, Lkotlin/ranges/f;->d:I

    iget v1, p0, Lkotlin/ranges/f;->a:I

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lkotlin/ranges/f;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lkotlin/ranges/f;->b:Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_1
    iget v1, p0, Lkotlin/ranges/f;->c:I

    add-int/2addr v1, v0

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    iput v1, p0, Lkotlin/ranges/f;->d:I

    :goto_0
    return v0
.end method
