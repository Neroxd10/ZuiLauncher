.class public final Lkotlin/ranges/RangesKt;
.super Lkotlin/ranges/e;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "kotlin/ranges/RangesKt__RangesKt",
        "kotlin/ranges/RangesKt___RangesKt"
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

    invoke-direct {p0}, Lkotlin/ranges/e;-><init>()V

    return-void
.end method

.method public static bridge synthetic coerceAtLeast(II)I
    .locals 0

    invoke-static {p0, p1}, Lkotlin/ranges/e;->coerceAtLeast(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic coerceAtMost(II)I
    .locals 0

    invoke-static {p0, p1}, Lkotlin/ranges/e;->coerceAtMost(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic coerceIn(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlin/ranges/e;->coerceIn(III)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic coerceIn(JJJ)J
    .locals 0

    invoke-static/range {p0 .. p5}, Lkotlin/ranges/e;->coerceIn(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic coerceIn(JLkotlin/ranges/ClosedRange;)J
    .locals 0
    .param p2    # Lkotlin/ranges/ClosedRange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/ranges/ClosedRange<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/ranges/e;->coerceIn(JLkotlin/ranges/ClosedRange;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic downTo(II)Lkotlin/ranges/IntProgression;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lkotlin/ranges/e;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;
    .locals 0
    .param p0    # Lkotlin/ranges/IntProgression;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lkotlin/ranges/e;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic until(II)Lkotlin/ranges/IntRange;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lkotlin/ranges/e;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method
