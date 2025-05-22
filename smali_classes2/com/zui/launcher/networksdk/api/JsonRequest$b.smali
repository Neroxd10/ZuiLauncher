.class Lcom/zui/launcher/networksdk/api/JsonRequest$b;
.super Lcom/loopj/android/http/JsonHttpResponseHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networksdk/api/JsonRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/zui/launcher/networksdk/api/JsonRequestCallback;

.field public b:Ljava/lang/String;

.field private c:Lorg/json/JSONArray;

.field private d:[Lorg/apache/http/Header;

.field private e:Lorg/json/JSONObject;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field final synthetic i:Lcom/zui/launcher/networksdk/api/JsonRequest;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/networksdk/api/JsonRequest;Lcom/zui/launcher/networksdk/api/JsonRequestCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-direct {p0}, Lcom/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->a:Lcom/zui/launcher/networksdk/api/JsonRequestCallback;

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->c:Lorg/json/JSONArray;

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->d:[Lorg/apache/http/Header;

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->e:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g:I

    invoke-virtual {p0, p2}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->h(Lcom/zui/launcher/networksdk/api/JsonRequestCallback;)V

    invoke-virtual {p0, p3}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->j(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/networksdk/api/JsonRequest$b;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->e:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/networksdk/api/JsonRequest$b;)Lorg/json/JSONArray;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->c:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/networksdk/api/JsonRequest$b;)[Lorg/apache/http/Header;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->d:[Lorg/apache/http/Header;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/networksdk/api/JsonRequest$b;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g:I

    return p0
.end method


# virtual methods
.method public e()Lcom/zui/launcher/networksdk/api/JsonRequestCallback;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->a:Lcom/zui/launcher/networksdk/api/JsonRequestCallback;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public h(Lcom/zui/launcher/networksdk/api/JsonRequestCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->a:Lcom/zui/launcher/networksdk/api/JsonRequestCallback;

    return-void
.end method

.method public i(Lcom/loopj/android/http/RequestHandle;)V
    .locals 0

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->b:Ljava/lang/String;

    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p3, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f:Ljava/lang/String;

    if-eqz p4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Throwable e ="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f:Ljava/lang/String;

    :cond_0
    iput-object p2, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->d:[Lorg/apache/http/Header;

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g:I

    iget-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->e(Lcom/zui/launcher/networksdk/api/JsonRequest;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x3

    iput p2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g()Ljava/lang/String;

    move-result-object p3

    const-string p4, "url"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f:Ljava/lang/String;

    const-string p4, "errMsg"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->h:Ljava/lang/String;

    const-string p4, "packageName"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest;->e(Lcom/zui/launcher/networksdk/api/JsonRequest;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f:Ljava/lang/String;

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g:I

    if-eqz p3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Throwable e ="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f:Ljava/lang/String;

    :cond_1
    iput-object p2, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->d:[Lorg/apache/http/Header;

    iget-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->e(Lcom/zui/launcher/networksdk/api/JsonRequest;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x3

    iput p2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g()Ljava/lang/String;

    move-result-object p3

    const-string p4, "url"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f:Ljava/lang/String;

    const-string p4, "errMsg"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->h:Ljava/lang/String;

    const-string p4, "packageName"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest;->e(Lcom/zui/launcher/networksdk/api/JsonRequest;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f:Ljava/lang/String;

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g:I

    if-eqz p3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Throwable e ="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f:Ljava/lang/String;

    :cond_1
    iput-object p2, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->d:[Lorg/apache/http/Header;

    iget-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->e(Lcom/zui/launcher/networksdk/api/JsonRequest;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x3

    iput p2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g()Ljava/lang/String;

    move-result-object p3

    const-string p4, "url"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->f:Ljava/lang/String;

    const-string p4, "errMsg"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->h:Ljava/lang/String;

    const-string p4, "packageName"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest;->e(Lcom/zui/launcher/networksdk/api/JsonRequest;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/api/JsonRequest;->e(Lcom/zui/launcher/networksdk/api/JsonRequest;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->h:Ljava/lang/String;

    const-string v3, "packageName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest;->e(Lcom/zui/launcher/networksdk/api/JsonRequest;)Landroid/os/Handler;

    move-result-object p0

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {v0}, Lcom/zui/launcher/networksdk/api/JsonRequest;->e(Lcom/zui/launcher/networksdk/api/JsonRequest;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->h:Ljava/lang/String;

    const-string v3, "packageName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest;->e(Lcom/zui/launcher/networksdk/api/JsonRequest;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V
    .locals 1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->e:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->c:Lorg/json/JSONArray;

    iput-object p2, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->d:[Lorg/apache/http/Header;

    const/4 p1, 0x1

    iput p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g:I

    iget-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->e(Lcom/zui/launcher/networksdk/api/JsonRequest;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x2

    iput p2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g()Ljava/lang/String;

    move-result-object p3

    const-string v0, "url"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->h:Ljava/lang/String;

    const-string v0, "packageName"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest;->e(Lcom/zui/launcher/networksdk/api/JsonRequest;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 1

    iput-object p3, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->e:Lorg/json/JSONObject;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->c:Lorg/json/JSONArray;

    iput-object p2, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->d:[Lorg/apache/http/Header;

    const/4 p1, 0x1

    iput p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g:I

    iget-object p1, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/api/JsonRequest;->e(Lcom/zui/launcher/networksdk/api/JsonRequest;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x2

    iput p2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->g()Ljava/lang/String;

    move-result-object p3

    const-string v0, "url"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->h:Ljava/lang/String;

    const-string v0, "packageName"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/JsonRequest$b;->i:Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {p0}, Lcom/zui/launcher/networksdk/api/JsonRequest;->e(Lcom/zui/launcher/networksdk/api/JsonRequest;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
