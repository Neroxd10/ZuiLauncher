.class public final Lokhttp3/internal/platform/android/AndroidLogKt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\"\u001a\u0010\u0004\u001a\u00020\u0001*\u00020\u00008B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Ljava/util/logging/LogRecord;",
        "",
        "getAndroidLevel",
        "(Ljava/util/logging/LogRecord;)I",
        "androidLevel",
        "okhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
    pn = ""
    xi = 0x0
    xs = ""
.end annotation


# direct methods
.method private static final a(Ljava/util/logging/LogRecord;)I
    .locals 2

    invoke-virtual {p0}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/logging/Level;->intValue()I

    move-result p0

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public static final synthetic access$getAndroidLevel$p(Ljava/util/logging/LogRecord;)I
    .locals 0

    invoke-static {p0}, Lokhttp3/internal/platform/android/AndroidLogKt;->a(Ljava/util/logging/LogRecord;)I

    move-result p0

    return p0
.end method
