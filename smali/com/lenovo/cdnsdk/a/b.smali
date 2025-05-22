.class public final Lcom/lenovo/cdnsdk/a/b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lenovo/cdnsdk/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/lenovo/cdnsdk/listener/CdnListener;Lcom/lenovo/cdnsdk/b/o;)V
    .locals 1

    if-eqz p0, :cond_1

    iget-object v0, p1, Lcom/lenovo/cdnsdk/b/o;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/lenovo/cdnsdk/b/o;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/lenovo/cdnsdk/listener/CdnListener;->onSuccess(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p1, 0x3ec

    invoke-interface {p0, p1}, Lcom/lenovo/cdnsdk/listener/CdnListener;->onError(I)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;ILcom/lenovo/cdnsdk/listener/CdnListener;)V
    .locals 3

    sget-object v0, Lcom/lenovo/cdnsdk/a/d;->a:Lcom/lenovo/cdnsdk/a/d;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "__AREA__"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/lenovo/cdnsdk/b/e;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p2}, Lcom/lenovo/cdnsdk/a/d;->a(Ljava/lang/String;Lcom/lenovo/cdnsdk/listener/CdnListener;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/lenovo/cdnsdk/listener/CdnListener;)V
    .locals 1

    sget-object v0, Lcom/lenovo/cdnsdk/a/d;->a:Lcom/lenovo/cdnsdk/a/d;

    invoke-virtual {v0, p0, p1}, Lcom/lenovo/cdnsdk/a/d;->a(Ljava/lang/String;Lcom/lenovo/cdnsdk/listener/CdnListener;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Lcom/lenovo/cdnsdk/listener/CdnListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lenovo/cdnsdk/listener/CdnListener;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/lenovo/cdnsdk/a/d;->a:Lcom/lenovo/cdnsdk/a/d;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "__DREASON__"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    const-string v3, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-static {p0}, Lcom/lenovo/cdnsdk/b/e;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p2}, Lcom/lenovo/cdnsdk/a/d;->a(Ljava/lang/String;Lcom/lenovo/cdnsdk/listener/CdnListener;)V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/cdnsdk/listener/CdnListener;Lcom/lenovo/cdnsdk/b/o;)V
    .locals 2

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-------onError-------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/lenovo/cdnsdk/b/o;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/cdnsdk/b/e;->a(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/lenovo/cdnsdk/b/o;->c:Ljava/lang/Throwable;

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_0

    const/16 p1, 0x3eb

    invoke-interface {p0, p1}, Lcom/lenovo/cdnsdk/listener/CdnListener;->onError(I)V

    return-void

    :cond_0
    const/16 p1, 0x3ea

    invoke-interface {p0, p1}, Lcom/lenovo/cdnsdk/listener/CdnListener;->onError(I)V

    :cond_1
    return-void
.end method
