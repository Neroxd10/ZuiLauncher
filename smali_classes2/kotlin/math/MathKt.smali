.class public final Lkotlin/math/MathKt;
.super Lkotlin/math/c;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "kotlin/math/MathKt__MathHKt",
        "kotlin/math/MathKt__MathJVMKt"
    }
    k = 0x4
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x31
.end annotation


# static fields
.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/math/c;-><init>()V

    return-void
.end method

.method public static bridge synthetic getSign(I)I
    .locals 0

    invoke-static {p0}, Lkotlin/math/c;->getSign(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic getSign(J)I
    .locals 0

    invoke-static {p0, p1}, Lkotlin/math/c;->getSign(J)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic roundToInt(D)I
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    invoke-static {p0, p1}, Lkotlin/math/c;->roundToInt(D)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic roundToLong(D)J
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.2"
    .end annotation

    invoke-static {p0, p1}, Lkotlin/math/c;->roundToLong(D)J

    move-result-wide p0

    return-wide p0
.end method
