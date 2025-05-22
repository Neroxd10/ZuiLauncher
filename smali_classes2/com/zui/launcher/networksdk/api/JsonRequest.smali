.class public Lcom/zui/launcher/networksdk/api/JsonRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/networksdk/api/JsonRequest$b;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String; = "JsonRequest"

.field private static d:Lcom/zui/launcher/networksdk/api/JsonRequest;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/networksdk/api/JsonRequest$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->a:Ljava/util/HashMap;

    new-instance v0, Lcom/zui/launcher/networksdk/api/JsonRequest$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/networksdk/api/JsonRequest$a;-><init>(Lcom/zui/launcher/networksdk/api/JsonRequest;)V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->b:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot instantiate outside UI thread."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Landroid/os/Message;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "packageName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->a:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/networksdk/api/JsonRequest$b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->e()Lcom/zui/launcher/networksdk/api/JsonRequestCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->c(Lcom/zui/launcher/networksdk/api/JsonRequest$b;)[Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/zui/launcher/networksdk/api/JsonRequestCallback;->onFailue(Ljava/lang/String;[Lorg/apache/http/Header;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->k(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/zui/launcher/networksdk/api/JsonRequestCallback;->onFinish()V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->k(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/networksdk/api/JsonRequest$b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->e()Lcom/zui/launcher/networksdk/api/JsonRequestCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->k(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->d(Lcom/zui/launcher/networksdk/api/JsonRequest$b;)I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->c(Lcom/zui/launcher/networksdk/api/JsonRequest$b;)[Lorg/apache/http/Header;

    move-result-object p0

    const-string p1, ""

    invoke-interface {v2, p1, p0}, Lcom/zui/launcher/networksdk/api/JsonRequestCallback;->onFailue(Ljava/lang/String;[Lorg/apache/http/Header;)V

    :cond_0
    invoke-interface {v2}, Lcom/zui/launcher/networksdk/api/JsonRequestCallback;->onFinish()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->k(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Landroid/os/Message;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->e()Lcom/zui/launcher/networksdk/api/JsonRequestCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/zui/launcher/networksdk/api/JsonRequestCallback;->onStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private d(Landroid/os/Message;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/networksdk/api/JsonRequest$b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->e()Lcom/zui/launcher/networksdk/api/JsonRequestCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->a(Lcom/zui/launcher/networksdk/api/JsonRequest$b;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->b(Lcom/zui/launcher/networksdk/api/JsonRequest$b;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->c(Lcom/zui/launcher/networksdk/api/JsonRequest$b;)[Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/zui/launcher/networksdk/api/JsonRequestCallback;->onSucess(Lorg/json/JSONObject;Lorg/json/JSONArray;[Lorg/apache/http/Header;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->k(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/zui/launcher/networksdk/api/JsonRequestCallback;->onFinish()V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->k(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic e(Lcom/zui/launcher/networksdk/api/JsonRequest;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Lcom/zui/launcher/networksdk/api/JsonRequest;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->c(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/networksdk/api/JsonRequest;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->b(Landroid/os/Message;)V

    return-void
.end method

.method public static getInstance()Lcom/zui/launcher/networksdk/api/JsonRequest;
    .locals 1

    sget-object v0, Lcom/zui/launcher/networksdk/api/JsonRequest;->d:Lcom/zui/launcher/networksdk/api/JsonRequest;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-direct {v0}, Lcom/zui/launcher/networksdk/api/JsonRequest;-><init>()V

    sput-object v0, Lcom/zui/launcher/networksdk/api/JsonRequest;->d:Lcom/zui/launcher/networksdk/api/JsonRequest;

    :cond_0
    sget-object v0, Lcom/zui/launcher/networksdk/api/JsonRequest;->d:Lcom/zui/launcher/networksdk/api/JsonRequest;

    return-object v0
.end method

.method static synthetic h(Lcom/zui/launcher/networksdk/api/JsonRequest;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->d(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic i(Lcom/zui/launcher/networksdk/api/JsonRequest;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->a(Landroid/os/Message;)V

    return-void
.end method

.method private j(Ljava/lang/String;Lcom/zui/launcher/networksdk/api/JsonRequest$b;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private k(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private l(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p0, "applist"

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 p1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "pn"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public getRequest(Ljava/lang/String;Lcom/zui/launcher/networksdk/api/JsonRequestCallback;Lcom/loopj/android/http/AsyncHttpClient;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p2}, Lcom/zui/launcher/networksdk/api/JsonRequestCallback;->getParams()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zui/launcher/networksdk/api/JsonRequest;->l(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v4, v2}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->c:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "url is exist!!! please wait callback!!! url="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p0, p1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    new-instance v3, Lcom/zui/launcher/networksdk/api/JsonRequest$b;

    invoke-direct {v3, p0, p2, p1, v1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;-><init>(Lcom/zui/launcher/networksdk/api/JsonRequest;Lcom/zui/launcher/networksdk/api/JsonRequestCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v4, v3, p3}, Lcom/zui/launcher/networksdk/http/HttpUtil;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/JsonHttpResponseHandler;Lcom/loopj/android/http/AsyncHttpClient;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v3, p1}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i(Lcom/loopj/android/http/RequestHandle;)V

    invoke-direct {p0, v2, v3}, Lcom/zui/launcher/networksdk/api/JsonRequest;->j(Ljava/lang/String;Lcom/zui/launcher/networksdk/api/JsonRequest$b;)V

    sget-object p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->c:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "getRequest add sucess!!!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0

    :cond_4
    :goto_2
    sget-object p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "url=null or url=\'\' or callback=null !!!! url="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public postRequest(Ljava/lang/String;Lcom/zui/launcher/networksdk/api/JsonRequestCallback;Lcom/loopj/android/http/AsyncHttpClient;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p2}, Lcom/zui/launcher/networksdk/api/JsonRequestCallback;->getParams()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->l(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3, v1}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->c:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "url is exist!!! please wait callback!!! url="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p0, p1}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    new-instance v4, Lcom/zui/launcher/networksdk/api/JsonRequest$b;

    invoke-direct {v4, p0, p2, p1, v2}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;-><init>(Lcom/zui/launcher/networksdk/api/JsonRequest;Lcom/zui/launcher/networksdk/api/JsonRequestCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v3, v4, p3}, Lcom/zui/launcher/networksdk/http/HttpUtil;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/JsonHttpResponseHandler;Lcom/loopj/android/http/AsyncHttpClient;)Lcom/loopj/android/http/RequestHandle;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {v4, p2}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i(Lcom/loopj/android/http/RequestHandle;)V

    invoke-direct {p0, v1, v4}, Lcom/zui/launcher/networksdk/api/JsonRequest;->j(Ljava/lang/String;Lcom/zui/launcher/networksdk/api/JsonRequest$b;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    sget-object p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RequestHandle is faulie!!! url="

    :goto_2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_3
    sget-object p0, Lcom/zui/launcher/networksdk/api/JsonRequest;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "url=null or url=\'\' or callback=null !!!! url="

    goto :goto_2
.end method
