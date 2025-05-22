.class final Lcom/amap/api/col/l3s/gu$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/amap/api/col/l3s/iv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/gu$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/gu$1;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/gu$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/gu$1$1;->a:Lcom/amap/api/col/l3s/gu$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/iv$b;)V
    .locals 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p1, Lcom/amap/api/col/l3s/iv$b;->g:Lcom/amap/api/col/l3s/iv$b$a;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/amap/api/col/l3s/gv;

    iget-object v3, p1, Lcom/amap/api/col/l3s/iv$b;->g:Lcom/amap/api/col/l3s/iv$b$a;

    iget-boolean v3, v3, Lcom/amap/api/col/l3s/iv$b$a;->b:Z

    iget-object v4, p1, Lcom/amap/api/col/l3s/iv$b;->g:Lcom/amap/api/col/l3s/iv$b$a;

    iget-boolean v4, v4, Lcom/amap/api/col/l3s/iv$b$a;->a:Z

    invoke-direct {v2, v3, v4}, Lcom/amap/api/col/l3s/gv;-><init>(ZZ)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string v2, "amap_search"

    if-eqz p1, :cond_1

    :try_start_1
    iget-object v3, p1, Lcom/amap/api/col/l3s/iv$b;->f:Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/amap/api/col/l3s/iv$b;->f:Lorg/json/JSONObject;

    const-string v4, "184"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/amap/api/col/l3s/gu;->a(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/amap/api/col/l3s/gu;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "cache_control"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2, v5, v3}, Lcom/amap/api/col/l3s/hp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_4

    iget-object v3, p1, Lcom/amap/api/col/l3s/iv$b;->f:Lorg/json/JSONObject;

    if-eqz v3, :cond_4

    iget-object p1, p1, Lcom/amap/api/col/l3s/iv$b;->f:Lorg/json/JSONObject;

    const-string v3, "185"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/amap/api/col/l3s/gu;->b(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/amap/api/col/l3s/gu;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "parm_control"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v2, v4, p1}, Lcom/amap/api/col/l3s/hp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    const-string v2, "ManifestConfig"

    const-string v3, "run"

    invoke-static {p1, v2, v3}, Lcom/amap/api/col/l3s/gm;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/amap/api/col/l3s/gu$1$1;->a:Lcom/amap/api/col/l3s/gu$1;

    iget-object p1, p1, Lcom/amap/api/col/l3s/gu$1;->a:Lcom/amap/api/col/l3s/gu;

    invoke-static {p1}, Lcom/amap/api/col/l3s/gu;->a(Lcom/amap/api/col/l3s/gu;)Lcom/amap/api/col/l3s/gu$a;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/amap/api/col/l3s/gu$1$1;->a:Lcom/amap/api/col/l3s/gu$1;

    iget-object p0, p0, Lcom/amap/api/col/l3s/gu$1;->a:Lcom/amap/api/col/l3s/gu;

    invoke-static {p0}, Lcom/amap/api/col/l3s/gu;->a(Lcom/amap/api/col/l3s/gu;)Lcom/amap/api/col/l3s/gu$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void

    :catchall_1
    move-exception p1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/col/l3s/gu$1$1;->a:Lcom/amap/api/col/l3s/gu$1;

    iget-object v1, v1, Lcom/amap/api/col/l3s/gu$1;->a:Lcom/amap/api/col/l3s/gu;

    invoke-static {v1}, Lcom/amap/api/col/l3s/gu;->a(Lcom/amap/api/col/l3s/gu;)Lcom/amap/api/col/l3s/gu$a;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/amap/api/col/l3s/gu$1$1;->a:Lcom/amap/api/col/l3s/gu$1;

    iget-object p0, p0, Lcom/amap/api/col/l3s/gu$1;->a:Lcom/amap/api/col/l3s/gu;

    invoke-static {p0}, Lcom/amap/api/col/l3s/gu;->a(Lcom/amap/api/col/l3s/gu;)Lcom/amap/api/col/l3s/gu$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    throw p1

    :cond_4
    :goto_2
    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/amap/api/col/l3s/gu$1$1;->a:Lcom/amap/api/col/l3s/gu$1;

    iget-object p1, p1, Lcom/amap/api/col/l3s/gu$1;->a:Lcom/amap/api/col/l3s/gu;

    invoke-static {p1}, Lcom/amap/api/col/l3s/gu;->a(Lcom/amap/api/col/l3s/gu;)Lcom/amap/api/col/l3s/gu$a;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/amap/api/col/l3s/gu$1$1;->a:Lcom/amap/api/col/l3s/gu$1;

    iget-object p0, p0, Lcom/amap/api/col/l3s/gu$1;->a:Lcom/amap/api/col/l3s/gu;

    invoke-static {p0}, Lcom/amap/api/col/l3s/gu;->a(Lcom/amap/api/col/l3s/gu;)Lcom/amap/api/col/l3s/gu$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void
.end method
