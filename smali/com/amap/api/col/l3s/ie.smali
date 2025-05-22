.class public final Lcom/amap/api/col/l3s/ie;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/services/interfaces/IInputtipsSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

.field private c:Landroid/os/Handler;

.field private d:Lcom/amap/api/services/help/InputtipsQuery;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ie;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/ie;->b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ie;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ie;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/ie;->d:Lcom/amap/api/services/help/InputtipsQuery;

    invoke-static {}, Lcom/amap/api/col/l3s/gw;->a()Lcom/amap/api/col/l3s/gw;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/ie;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ie;)Lcom/amap/api/services/help/Inputtips$InputtipsListener;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ie;->b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/ie;Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3s/ie;->a(Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/help/InputtipsQuery;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/services/help/Tip;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/ie;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3s/gu;->a(Landroid/content/Context;)Lcom/amap/api/col/l3s/gu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/help/InputtipsQuery;->getKeyword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/services/help/InputtipsQuery;->getKeyword()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/gs;

    iget-object p0, p0, Lcom/amap/api/col/l3s/ie;->a:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/l3s/gs;-><init>(Landroid/content/Context;Lcom/amap/api/services/help/InputtipsQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/ge;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    :cond_0
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    const-string p1, "Inputtips"

    const-string v0, "requestInputtips"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    instance-of p1, p0, Lcom/amap/api/services/core/AMapException;

    if-nez p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    check-cast p0, Lcom/amap/api/services/core/AMapException;

    throw p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/ie;)Lcom/amap/api/services/help/InputtipsQuery;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ie;->d:Lcom/amap/api/services/help/InputtipsQuery;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/ie;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ie;->c:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final getQuery()Lcom/amap/api/services/help/InputtipsQuery;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ie;->d:Lcom/amap/api/services/help/InputtipsQuery;

    return-object p0
.end method

.method public final requestInputtips()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/services/help/Tip;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/ie;->d:Lcom/amap/api/services/help/InputtipsQuery;

    invoke-direct {p0, v0}, Lcom/amap/api/col/l3s/ie;->a(Lcom/amap/api/services/help/InputtipsQuery;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final requestInputtips(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/col/l3s/ie;->requestInputtips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final requestInputtips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/services/help/InputtipsQuery;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/services/help/InputtipsQuery;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/ie;->d:Lcom/amap/api/services/help/InputtipsQuery;

    invoke-virtual {v0, p3}, Lcom/amap/api/services/help/InputtipsQuery;->setType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/ie;->requestInputtipsAsyn()V

    return-void

    :cond_0
    new-instance p0, Lcom/amap/api/services/core/AMapException;

    const-string p1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p0, p1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestInputtipsAsyn()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/hr;->a()Lcom/amap/api/col/l3s/hr;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/l3s/ie$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/ie$1;-><init>(Lcom/amap/api/col/l3s/ie;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3s/hr;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "Inputtips"

    const-string v1, "requestInputtipsAsynThrowable"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setInputtipsListener(Lcom/amap/api/services/help/Inputtips$InputtipsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ie;->b:Lcom/amap/api/services/help/Inputtips$InputtipsListener;

    return-void
.end method

.method public final setQuery(Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ie;->d:Lcom/amap/api/services/help/InputtipsQuery;

    return-void
.end method
