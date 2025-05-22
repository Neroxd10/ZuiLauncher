.class public Lcom/lenovo/leos/cloud/lcp/common/track/TrackExceptionUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackExceptionUtil;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackExceptionUtil;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackExceptionUtil;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static currentTaskException()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackExceptionUtil;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public static currentTaskException(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/track/TrackExceptionUtil;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static getRootCauseException()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackExceptionUtil;->currentTaskException()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null exception"

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackExceptionUtil;->currentTaskException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackExceptionUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getRootCauseMessage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackExceptionUtil;->currentTaskException()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackExceptionUtil;->currentTaskException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackExceptionUtil;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
