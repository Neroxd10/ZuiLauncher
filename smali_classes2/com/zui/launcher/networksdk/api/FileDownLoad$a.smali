.class Lcom/zui/launcher/networksdk/api/FileDownLoad$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networksdk/api/FileDownLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/networksdk/api/FileDownLoad;


# direct methods
.method constructor <init>(Lcom/zui/launcher/networksdk/api/FileDownLoad;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$a;->a:Lcom/zui/launcher/networksdk/api/FileDownLoad;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0x131a

    if-eq v0, v1, :cond_5

    const/16 v1, -0x1319

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PARGRESS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PARGRESS_COMPLETEDONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PARGRESS_SAVEPATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PARGRESS_DONE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    sget-object v5, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PROGRESS_TOTALLEN:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object p1, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$a;->a:Lcom/zui/launcher/networksdk/api/FileDownLoad;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->a(Lcom/zui/launcher/networksdk/api/FileDownLoad;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->a()Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;

    move-result-object v7

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->b()Lcom/zui/launcher/networksdk/download/Downloader;

    move-result-object v8

    if-eqz v1, :cond_4

    if-eqz v7, :cond_2

    invoke-interface {v7, v3, v4, v5, v6}, Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;->onUpdata(JJ)V

    invoke-interface {v7, v2}, Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;->onSucess(Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;->onFinish()V

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$a;->a:Lcom/zui/launcher/networksdk/api/FileDownLoad;

    invoke-static {p0, v0}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->b(Lcom/zui/launcher/networksdk/api/FileDownLoad;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->c()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v8}, Lcom/zui/launcher/networksdk/download/Downloader;->deleteAll()V

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Lcom/zui/launcher/networksdk/download/Downloader;->deleteDB()V

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_7

    invoke-interface {v7, v3, v4, v5, v6}, Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;->onUpdata(JJ)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PARGRESS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    sget-object v1, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PARGRESS_ERRORMSG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$a;->a:Lcom/zui/launcher/networksdk/api/FileDownLoad;

    invoke-static {v1}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->a(Lcom/zui/launcher/networksdk/api/FileDownLoad;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/FileDownLoad$a;->a:Lcom/zui/launcher/networksdk/api/FileDownLoad;

    invoke-static {p0, v0}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->b(Lcom/zui/launcher/networksdk/api/FileDownLoad;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zui/launcher/networksdk/api/FileDownLoad$b;->a()Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;->onFailue(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/zui/launcher/networksdk/api/FileDownLoad$FileDownLoadCallback;->onFinish()V

    :cond_7
    :goto_0
    return-void
.end method
