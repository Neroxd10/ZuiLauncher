.class Lcom/zui/launcher/networksdk/OKHttpUtils$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/networksdk/OKHttpUtils;->f(Lcom/zui/launcher/networksdk/ResultCallback;Lokhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/Request;

.field final synthetic b:Lcom/zui/launcher/networksdk/ResultCallback;

.field final synthetic c:Lcom/zui/launcher/networksdk/OKHttpUtils;


# direct methods
.method constructor <init>(Lcom/zui/launcher/networksdk/OKHttpUtils;Lokhttp3/Request;Lcom/zui/launcher/networksdk/ResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->c:Lcom/zui/launcher/networksdk/OKHttpUtils;

    iput-object p2, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->a:Lokhttp3/Request;

    iput-object p3, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->b:Lcom/zui/launcher/networksdk/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->c:Lcom/zui/launcher/networksdk/OKHttpUtils;

    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->a:Lokhttp3/Request;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->b:Lcom/zui/launcher/networksdk/ResultCallback;

    invoke-static {p1, v0, p2, p0}, Lcom/zui/launcher/networksdk/OKHttpUtils;->a(Lcom/zui/launcher/networksdk/OKHttpUtils;Lokhttp3/Request;Ljava/lang/Exception;Lcom/zui/launcher/networksdk/ResultCallback;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->b:Lcom/zui/launcher/networksdk/ResultCallback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/zui/launcher/networksdk/OKHttpUtils$FailResponse;

    invoke-direct {p1}, Lcom/zui/launcher/networksdk/OKHttpUtils$FailResponse;-><init>()V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/networksdk/OKHttpUtils$FailResponse;->setResponse(Lokhttp3/Response;)V

    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->c:Lcom/zui/launcher/networksdk/OKHttpUtils;

    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    iget-object p0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->b:Lcom/zui/launcher/networksdk/ResultCallback;

    invoke-static {v0, v1, p1, p0}, Lcom/zui/launcher/networksdk/OKHttpUtils;->a(Lcom/zui/launcher/networksdk/OKHttpUtils;Lokhttp3/Request;Ljava/lang/Exception;Lcom/zui/launcher/networksdk/ResultCallback;)V

    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "OKHttpUtils"

    if-eqz v0, :cond_2

    :try_start_1
    const-string p1, "onResponse string  isEmpty "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->b:Lcom/zui/launcher/networksdk/ResultCallback;

    iget-object v0, v0, Lcom/zui/launcher/networksdk/ResultCallback;->a:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->c:Lcom/zui/launcher/networksdk/OKHttpUtils;

    iget-object v1, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->b:Lcom/zui/launcher/networksdk/ResultCallback;

    :goto_0
    invoke-static {v0, p1, v1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->b(Lcom/zui/launcher/networksdk/OKHttpUtils;Ljava/lang/Object;Lcom/zui/launcher/networksdk/ResultCallback;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->c:Lcom/zui/launcher/networksdk/OKHttpUtils;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/OKHttpUtils;->c(Lcom/zui/launcher/networksdk/OKHttpUtils;)Lcom/google/gson/Gson;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->c:Lcom/zui/launcher/networksdk/OKHttpUtils;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/OKHttpUtils;->c(Lcom/zui/launcher/networksdk/OKHttpUtils;)Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->b:Lcom/zui/launcher/networksdk/ResultCallback;

    iget-object v1, v1, Lcom/zui/launcher/networksdk/ResultCallback;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->c:Lcom/zui/launcher/networksdk/OKHttpUtils;

    iget-object v1, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->b:Lcom/zui/launcher/networksdk/ResultCallback;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->c:Lcom/zui/launcher/networksdk/OKHttpUtils;

    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    iget-object p0, p0, Lcom/zui/launcher/networksdk/OKHttpUtils$a;->b:Lcom/zui/launcher/networksdk/ResultCallback;

    invoke-static {v0, v1, p1, p0}, Lcom/zui/launcher/networksdk/OKHttpUtils;->a(Lcom/zui/launcher/networksdk/OKHttpUtils;Lokhttp3/Request;Ljava/lang/Exception;Lcom/zui/launcher/networksdk/ResultCallback;)V

    :cond_4
    :goto_1
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void
.end method
