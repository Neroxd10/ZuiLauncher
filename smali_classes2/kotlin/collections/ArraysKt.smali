.class public final Lkotlin/collections/ArraysKt;
.super Lkotlin/collections/ArraysKt___ArraysKt;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "kotlin/collections/ArraysKt__ArraysJVMKt",
        "kotlin/collections/ArraysKt__ArraysKt",
        "kotlin/collections/ArraysKt___ArraysJvmKt",
        "kotlin/collections/ArraysKt___ArraysKt"
    }
    k = 0x4
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x31
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/ArraysKt___ArraysKt;-><init>()V

    return-void
.end method

.method public static bridge synthetic asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic contains([BB)Z
    .locals 0
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([BB)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic contains([CC)Z
    .locals 0
    .param p0    # [C
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([CC)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic contains([II)Z
    .locals 0
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic contains([JJ)Z
    .locals 0
    .param p0    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([JJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic contains([SS)Z
    .locals 0
    .param p0    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([SS)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic copyInto([B[BIII)[B
    .locals 0
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([B[BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;III)[TT;"
        }
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyInto$default([B[BIIIILjava/lang/Object;)[B
    .locals 0

    invoke-static/range {p0 .. p6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyOfRange([BII)[B
    .locals 0
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "copyOfRange"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyOfRange([III)[I
    .locals 0
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "copyOfRange"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([III)[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyOfRange([JII)[J
    .locals 0
    .param p0    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "copyOfRange"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([JII)[J

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "copyOfRange"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyOfRange([SII)[S
    .locals 0
    .param p0    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .annotation build Lkotlin/SinceKotlin;
        version = "1.3"
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "copyOfRange"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([SII)[S

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic fill([BBII)V
    .locals 0
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([BBII)V

    return-void
.end method

.method public static bridge synthetic fill([IIII)V
    .locals 0
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([IIII)V

    return-void
.end method

.method public static bridge synthetic fill([JJII)V
    .locals 0
    .param p0    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([JJII)V

    return-void
.end method

.method public static bridge synthetic fill([Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;II)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method public static bridge synthetic fill([SSII)V
    .locals 0
    .param p0    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2, p3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([SSII)V

    return-void
.end method

.method public static bridge synthetic fill$default([IIIIILjava/lang/Object;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([IIIIILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic getIndices([B)Lkotlin/ranges/IntRange;
    .locals 0
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([B)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic getIndices([I)Lkotlin/ranges/IntRange;
    .locals 0
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic getIndices([J)Lkotlin/ranges/IntRange;
    .locals 0
    .param p0    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([J)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic getIndices([Ljava/lang/Object;)Lkotlin/ranges/IntRange;
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lkotlin/ranges/IntRange;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([Ljava/lang/Object;)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic getIndices([S)Lkotlin/ranges/IntRange;
    .locals 0
    .param p0    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([S)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic getLastIndex([B)I
    .locals 0
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([B)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic getLastIndex([I)I
    .locals 0
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic getLastIndex([J)I
    .locals 0
    .param p0    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([J)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic getLastIndex([Ljava/lang/Object;)I
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic getLastIndex([S)I
    .locals 0
    .param p0    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([S)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic indexOf([BB)I
    .locals 0
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([BB)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic indexOf([II)I
    .locals 0
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic indexOf([JJ)I
    .locals 0
    .param p0    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([JJ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic indexOf([SS)I
    .locals 0
    .param p0    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([SS)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic joinTo$default([Ljava/lang/Object;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;
    .locals 0

    invoke-static/range {p0 .. p9}, Lkotlin/collections/ArraysKt___ArraysKt;->joinTo$default([Ljava/lang/Object;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic lastIndexOf([BB)I
    .locals 0
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->lastIndexOf([BB)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic lastIndexOf([II)I
    .locals 0
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->lastIndexOf([II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic lastIndexOf([JJ)I
    .locals 0
    .param p0    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->lastIndexOf([JJ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic lastIndexOf([SS)I
    .locals 0
    .param p0    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->lastIndexOf([SS)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic reverse([B)V
    .locals 0
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([B)V

    return-void
.end method

.method public static bridge synthetic reverse([BII)V
    .locals 0
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([BII)V

    return-void
.end method

.method public static bridge synthetic reverse([I)V
    .locals 0
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([I)V

    return-void
.end method

.method public static bridge synthetic reverse([III)V
    .locals 0
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([III)V

    return-void
.end method

.method public static bridge synthetic reverse([J)V
    .locals 0
    .param p0    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([J)V

    return-void
.end method

.method public static bridge synthetic reverse([JII)V
    .locals 0
    .param p0    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([JII)V

    return-void
.end method

.method public static bridge synthetic reverse([S)V
    .locals 0
    .param p0    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([S)V

    return-void
.end method

.method public static bridge synthetic reverse([SII)V
    .locals 0
    .param p0    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.4"
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([SII)V

    return-void
.end method

.method public static bridge synthetic single([C)C
    .locals 0
    .param p0    # [C
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->single([C)C

    move-result p0

    return p0
.end method

.method public static bridge synthetic singleOrNull([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->singleOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([BLjava/util/Collection;)[B
    .locals 0
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLjava/util/Collection;)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([BLkotlin/ranges/IntRange;)[B
    .locals 0
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/ranges/IntRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([ILjava/util/Collection;)[I
    .locals 0
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([ILjava/util/Collection;)[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([ILkotlin/ranges/IntRange;)[I
    .locals 0
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/ranges/IntRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([ILkotlin/ranges/IntRange;)[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([JLjava/util/Collection;)[J
    .locals 0
    .param p0    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[J"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([JLjava/util/Collection;)[J

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([JLkotlin/ranges/IntRange;)[J
    .locals 0
    .param p0    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/ranges/IntRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([JLkotlin/ranges/IntRange;)[J

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([SLjava/util/Collection;)[S
    .locals 0
    .param p0    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[S"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([SLjava/util/Collection;)[S

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([SLkotlin/ranges/IntRange;)[S
    .locals 0
    .param p0    # [S
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/ranges/IntRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([SLkotlin/ranges/IntRange;)[S

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toList([Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toMutableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
