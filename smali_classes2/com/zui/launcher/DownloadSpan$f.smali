.class Lcom/zui/launcher/DownloadSpan$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/DownloadSpan;->S(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/zui/launcher/ItemInfo;

.field final synthetic c:Z

.field final synthetic d:Lcom/zui/launcher/DownloadSpan;


# direct methods
.method constructor <init>(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;Lcom/zui/launcher/ItemInfo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan$f;->d:Lcom/zui/launcher/DownloadSpan;

    iput-object p2, p0, Lcom/zui/launcher/DownloadSpan$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/launcher/DownloadSpan$f;->b:Lcom/zui/launcher/ItemInfo;

    iput-boolean p4, p0, Lcom/zui/launcher/DownloadSpan$f;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "pn"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "vc"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRequestData()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan$f;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/DownloadSpan$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "applist"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " searchApp onFailure ~~~json= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zui/launcher/DownloadSpan$f;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$f;->d:Lcom/zui/launcher/DownloadSpan;

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan;->v(Lcom/zui/launcher/DownloadSpan;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/zui/launcher/DownloadSpan$f;->d:Lcom/zui/launcher/DownloadSpan;

    invoke-static {v3}, Lcom/zui/launcher/DownloadSpan;->v(Lcom/zui/launcher/DownloadSpan;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120343

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/zui/launcher/DownloadSpan$f;->b:Lcom/zui/launcher/ItemInfo;

    iget-object v5, v5, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$f;->d:Lcom/zui/launcher/DownloadSpan;

    iget-object v3, p0, Lcom/zui/launcher/DownloadSpan$f;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/zui/launcher/DownloadSpan;->e(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan$f;->d:Lcom/zui/launcher/DownloadSpan;

    iget-object v3, p0, Lcom/zui/launcher/DownloadSpan$f;->a:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/zui/launcher/DownloadSpan;->c(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " searchApp ~~~ add to retry= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "timed out"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$f;->d:Lcom/zui/launcher/DownloadSpan;

    iget-boolean v0, p0, Lcom/zui/launcher/DownloadSpan$f;->c:Z

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/zui/launcher/DownloadSpan$f;->a:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/zui/launcher/DownloadSpan;->f(Lcom/zui/launcher/DownloadSpan;ZLjava/lang/String;)V

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appsSearch+"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$f;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher.Download"

    const-string v0, "end"

    invoke-static {p1, v0, p0, v1}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onFinish()V
    .locals 0

    const-string p0, " searchApp onFinish ~~~ "

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " searchApp jsonOrstring === "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/zui/launcher/category/proto/ConstProtoValue;->protodataList:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    sget-object v5, Lcom/zui/launcher/category/proto/ConstProtoValue;->protodownloadurl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchApp url======"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$f;->d:Lcom/zui/launcher/DownloadSpan;

    iget-object v2, p0, Lcom/zui/launcher/DownloadSpan$f;->b:Lcom/zui/launcher/ItemInfo;

    iget-object v3, p0, Lcom/zui/launcher/DownloadSpan$f;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Lcom/zui/launcher/DownloadSpan;->startTask(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Launcher.Download"

    const-string v2, "end"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appsSearch+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/launcher/DownloadSpan$f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3, v1}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception ~~~ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan$LOG;->e(Ljava/lang/String;)V

    :cond_1
    move p1, v0

    :goto_1
    if-nez p1, :cond_3

    const-string p1, "searchApp cannot find this app"

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/zui/launcher/DownloadSpan$f;->c:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$f;->d:Lcom/zui/launcher/DownloadSpan;

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan;->v(Lcom/zui/launcher/DownloadSpan;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/zui/launcher/DownloadSpan$f;->d:Lcom/zui/launcher/DownloadSpan;

    invoke-static {v2}, Lcom/zui/launcher/DownloadSpan;->v(Lcom/zui/launcher/DownloadSpan;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120344

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zui/launcher/DownloadSpan$f;->b:Lcom/zui/launcher/ItemInfo;

    iget-object v4, v4, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$f;->d:Lcom/zui/launcher/DownloadSpan;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan$f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/launcher/DownloadSpan$f;->b:Lcom/zui/launcher/ItemInfo;

    invoke-static {p1, v1, v2}, Lcom/zui/launcher/DownloadSpan;->y(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;Lcom/zui/launcher/ItemInfo;)V

    :goto_2
    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$f;->d:Lcom/zui/launcher/DownloadSpan;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan$f;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/zui/launcher/DownloadSpan;->c(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$f;->d:Lcom/zui/launcher/DownloadSpan;

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan;->u(Lcom/zui/launcher/DownloadSpan;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan$f;->d:Lcom/zui/launcher/DownloadSpan;

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan;->u(Lcom/zui/launcher/DownloadSpan;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan$f;->d:Lcom/zui/launcher/DownloadSpan;

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan$f;->b:Lcom/zui/launcher/ItemInfo;

    invoke-static {v1, p0}, Lcom/zui/launcher/DownloadSpan;->d(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/ItemInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/zui/launcher/Launcher;->setRecommendInfosReady(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method
