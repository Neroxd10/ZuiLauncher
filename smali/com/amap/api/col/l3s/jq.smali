.class public final Lcom/amap/api/col/l3s/jq;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:I = 0x1

.field public static b:I = 0x2


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/amap/api/col/l3s/jq;->c:Ljava/lang/String;

    iput p1, p0, Lcom/amap/api/col/l3s/jq;->d:I

    iput-object p2, p0, Lcom/amap/api/col/l3s/jq;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/col/l3s/jq;->e:J

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/col/l3s/jq;
    .locals 2

    new-instance v0, Lcom/amap/api/col/l3s/jq;

    sget v1, Lcom/amap/api/col/l3s/jq;->a:I

    invoke-direct {v0, v1, p0, p1}, Lcom/amap/api/col/l3s/jq;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/amap/api/col/l3s/jq;->b:I

    if-ne p0, v0, :cond_0

    const-string p0, "error"

    return-object p0

    :cond_0
    const-string p0, "info"

    return-object p0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/col/l3s/jq;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3s/jq;

    invoke-static {v2}, Lcom/amap/api/col/l3s/jq;->b(Lcom/amap/api/col/l3s/jq;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static a(Lcom/amap/api/col/l3s/jq;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/jq;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/col/l3s/jq;
    .locals 2

    new-instance v0, Lcom/amap/api/col/l3s/jq;

    sget v1, Lcom/amap/api/col/l3s/jq;->b:I

    invoke-direct {v0, v1, p0, p1}, Lcom/amap/api/col/l3s/jq;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b(Lcom/amap/api/col/l3s/jq;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "info"

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/jq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "session"

    iget-object v2, p0, Lcom/amap/api/col/l3s/jq;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/amap/api/col/l3s/jq;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/jq;->d:I

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/jq;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/jq;->d:I

    invoke-static {p0}, Lcom/amap/api/col/l3s/jq;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
