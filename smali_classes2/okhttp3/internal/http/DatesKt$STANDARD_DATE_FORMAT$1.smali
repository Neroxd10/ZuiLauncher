.class public final Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;
.super Ljava/lang/ThreadLocal;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/DatesKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/text/DateFormat;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "okhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1",
        "Ljava/lang/ThreadLocal;",
        "Ljava/text/DateFormat;",
        "initialValue",
        "()Ljava/text/DateFormat;",
        "okhttp"
    }
    k = 0x1
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
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lokhttp3/internal/http/DatesKt$STANDARD_DATE_FORMAT$1;->initialValue()Ljava/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method protected initialValue()Ljava/text/DateFormat;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    sget-object v0, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p0
.end method
