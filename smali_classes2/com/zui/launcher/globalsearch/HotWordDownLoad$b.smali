.class Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;
.super Lcom/zui/launcher/networksdk/ResultCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/HotWordDownLoad;->hotWordDownLoad(Ljava/lang/String;Lcom/zui/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/networksdk/ResultCallback<",
        "Lcom/zui/launcher/globalsearch/HotWordInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/zui/launcher/Launcher;

.field final synthetic d:Lcom/zui/launcher/globalsearch/HotWordDownLoad;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Ljava/lang/String;Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;->d:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;->c:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/zui/launcher/globalsearch/HotWordInfo;)V
    .locals 4

    const-string v0, "GlobalSearch.HotWordDownLoad"

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p1, Lcom/zui/launcher/globalsearch/HotWordInfo;->errorMessage:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkHotWordLocalData  errorMessage --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", hotWordInfo -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/HotWordInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "success"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/zui/launcher/globalsearch/HotWordInfo;->data:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;->d:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->a(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Z)Z

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;->d:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;->c:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->bulkInsertHotWord(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;->d:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p0, v2}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->saveInterval(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;->d:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkHotWordLocalData onResponse Exception --> "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public onError(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkHotWordLocalData onError Exception --> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlobalSearch.HotWordDownLoad"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;->d:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;->b:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->saveInterval(Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/globalsearch/HotWordInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad$b;->b(Lcom/zui/launcher/globalsearch/HotWordInfo;)V

    return-void
.end method
