.class public abstract Lcom/amap/api/col/l3s/cf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/col/l3s/cf;->b:I

    iput-object p1, p0, Lcom/amap/api/col/l3s/cf;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3s/cf;->a:Ljava/lang/Object;

    return-void
.end method

.method private d()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    :cond_0
    :goto_0
    iget v4, p0, Lcom/amap/api/col/l3s/cf;->b:I

    if-ge v1, v4, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/amap/api/col/l3s/cf;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3s/ex;->f()Lcom/amap/api/col/l3s/je;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cf;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/cf;->b()Ljava/util/Map;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/amap/api/col/l3s/iv;->a(Landroid/content/Context;Lcom/amap/api/col/l3s/je;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/col/l3s/iv$b;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/amap/api/col/l3s/cf;->a(Lcom/amap/api/col/l3s/iv$b;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/amap/api/col/l3s/cf;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    iget v1, p0, Lcom/amap/api/col/l3s/cf;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    const-string v5, "AbstractProtocalHandler"

    const-string v6, "getDataMayThrow AMapException"

    invoke-static {v4, v5, v6}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lcom/amap/api/col/l3s/cf;->b:I

    if-lt v1, v4, :cond_0

    if-eqz v3, :cond_2

    iget-object v2, v3, Lcom/amap/api/col/l3s/iv$b;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/amap/api/maps/AMapException;

    iget-object v0, v3, Lcom/amap/api/col/l3s/iv$b;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_3
    return-object v2
.end method


# virtual methods
.method protected abstract a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TV;"
        }
    .end annotation
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Lcom/amap/api/col/l3s/iv$b;)Lorg/json/JSONObject;
.end method

.method protected abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/l3s/cf;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/cf;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
