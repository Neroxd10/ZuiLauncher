.class final Lcom/amap/api/col/l3s/op$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/op;->b(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/amap/api/col/l3s/op;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/op;I)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/op$1;->b:Lcom/amap/api/col/l3s/op;

    iput p2, p0, Lcom/amap/api/col/l3s/op$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "ttl"

    const-string v1, "ipsv6"

    const-string v2, "ips"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/col/l3s/ov;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?host=dualstack.apilocate.amap.com&query="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/amap/api/col/l3s/op$1;->a:I

    sget v5, Lcom/amap/api/col/l3s/op;->b:I

    if-ne v4, v5, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/amap/api/col/l3s/oq;

    invoke-direct {v4}, Lcom/amap/api/col/l3s/oq;-><init>()V

    iput-object v3, v4, Lcom/amap/api/col/l3s/oq;->f:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/amap/api/col/l3s/oq;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/kw;->a()Lcom/amap/api/col/l3s/kw;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/amap/api/col/l3s/kw;->b(Lcom/amap/api/col/l3s/ld;)[B

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    sget v5, Lcom/amap/api/col/l3s/op;->a:I

    invoke-static {v4, v5}, Lcom/amap/api/col/l3s/op;->a(Lorg/json/JSONArray;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/amap/api/col/l3s/op$1;->b:Lcom/amap/api/col/l3s/op;

    sget v6, Lcom/amap/api/col/l3s/op;->a:I

    invoke-static {v5, v6}, Lcom/amap/api/col/l3s/op;->a(Lcom/amap/api/col/l3s/op;I)Lcom/amap/api/col/l3s/od;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/od;->a()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amap/api/col/l3s/op;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/amap/api/col/l3s/op$1;->b:Lcom/amap/api/col/l3s/op;

    sget v6, Lcom/amap/api/col/l3s/op;->a:I

    invoke-static {v5, v6}, Lcom/amap/api/col/l3s/op;->a(Lcom/amap/api/col/l3s/op;I)Lcom/amap/api/col/l3s/od;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/amap/api/col/l3s/od;->a([Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amap/api/col/l3s/op$1;->b:Lcom/amap/api/col/l3s/op;

    sget v5, Lcom/amap/api/col/l3s/op;->a:I

    invoke-static {v4, v5}, Lcom/amap/api/col/l3s/op;->b(Lcom/amap/api/col/l3s/op;I)V

    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    sget v5, Lcom/amap/api/col/l3s/op;->b:I

    invoke-static {v4, v5}, Lcom/amap/api/col/l3s/op;->a(Lorg/json/JSONArray;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/amap/api/col/l3s/op$1;->b:Lcom/amap/api/col/l3s/op;

    sget v6, Lcom/amap/api/col/l3s/op;->b:I

    invoke-static {v5, v6}, Lcom/amap/api/col/l3s/op;->a(Lcom/amap/api/col/l3s/op;I)Lcom/amap/api/col/l3s/od;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amap/api/col/l3s/od;->a()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amap/api/col/l3s/op;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/amap/api/col/l3s/op$1;->b:Lcom/amap/api/col/l3s/op;

    sget v6, Lcom/amap/api/col/l3s/op;->b:I

    invoke-static {v5, v6}, Lcom/amap/api/col/l3s/op;->a(Lcom/amap/api/col/l3s/op;I)Lcom/amap/api/col/l3s/od;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/amap/api/col/l3s/od;->a([Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amap/api/col/l3s/op$1;->b:Lcom/amap/api/col/l3s/op;

    sget v5, Lcom/amap/api/col/l3s/op;->b:I

    invoke-static {v4, v5}, Lcom/amap/api/col/l3s/op;->b(Lcom/amap/api/col/l3s/op;I)V

    :cond_2
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/col/l3s/op$1;->b:Lcom/amap/api/col/l3s/op;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/l3s/op;->a(Lcom/amap/api/col/l3s/op;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "key"

    const-string v3, "dnsError"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "reason"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/op$1;->b:Lcom/amap/api/col/l3s/op;

    invoke-static {p0}, Lcom/amap/api/col/l3s/op;->a(Lcom/amap/api/col/l3s/op;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "O018"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/pa;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
