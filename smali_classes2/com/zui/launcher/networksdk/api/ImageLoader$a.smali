.class Lcom/zui/launcher/networksdk/api/ImageLoader$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networksdk/api/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/networksdk/api/ImageLoader;


# direct methods
.method constructor <init>(Lcom/zui/launcher/networksdk/api/ImageLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$a;->a:Lcom/zui/launcher/networksdk/api/ImageLoader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0x131a

    const/4 v2, 0x1

    if-eq v0, v1, :cond_b

    const/16 v1, -0x1319

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PARGRESS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v3, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PARGRESS_COMPLETEDONE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PARGRESS_SAVEPATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PARGRESS_DONE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    sget-object v6, Lcom/zui/launcher/networksdk/download/DownLoadConst;->HANDLER_PROGRESS_TOTALLEN:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object p1, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$a;->a:Lcom/zui/launcher/networksdk/api/ImageLoader;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/api/ImageLoader;->c(Lcom/zui/launcher/networksdk/api/ImageLoader;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/networksdk/api/ImageLoader$c;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/zui/launcher/networksdk/api/ImageLoader;->f()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error \u4e0d\u5b58\u5728\u7684\u56fe\u7247!!! url="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->c()Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;

    move-result-object v8

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->e()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    invoke-static {}, Lcom/zui/launcher/networksdk/api/ImageLoader;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "error \u56fe\u7247\u8def\u5f84\u4e0d\u4e00\u81f4!!!url="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/networksdk/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$a;->a:Lcom/zui/launcher/networksdk/api/ImageLoader;

    invoke-static {p0, v0}, Lcom/zui/launcher/networksdk/api/ImageLoader;->e(Lcom/zui/launcher/networksdk/api/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->b()Lcom/zui/launcher/networksdk/download/Downloader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->deleteAll()V

    if-eqz v3, :cond_f

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    :cond_4
    if-ne v1, v2, :cond_a

    invoke-static {}, Lcom/zui/launcher/networksdk/api/ImageLoader;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/launcher/networksdk/LogUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\u5b8c\u6210!!!  url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/zui/launcher/networksdk/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$a;->a:Lcom/zui/launcher/networksdk/api/ImageLoader;

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->d()Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    move-result-object v9

    invoke-static {v1, v9, v3}, Lcom/zui/launcher/networksdk/api/ImageLoader;->g(Lcom/zui/launcher/networksdk/api/ImageLoader;Lcom/zui/launcher/networksdk/api/ImageLoader$b;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v8, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->d()Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->d()Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    move-result-object v9

    iget-object v9, v9, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->a:Landroid/widget/ImageView;

    if-eqz v9, :cond_5

    iget-object v10, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$a;->a:Lcom/zui/launcher/networksdk/api/ImageLoader;

    invoke-static {v10, v9, v1, v2, v0}, Lcom/zui/launcher/networksdk/api/ImageLoader;->h(Lcom/zui/launcher/networksdk/api/ImageLoader;Landroid/widget/ImageView;Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    :cond_5
    invoke-interface {v8, v4, v5, v6, v7}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onUpdata(JJ)V

    invoke-interface {v8, v0, v1}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onSucess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-interface {v8}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onFinish()V

    goto :goto_1

    :cond_6
    const-string v1, "\u65e0\u6cd5\u89e3\u6790\u6b64\u56fe\u7247!!!"

    invoke-interface {v8, v0, v1}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onFailue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->d()Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    move-result-object v4

    iget-object v4, v4, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->a:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$a;->a:Lcom/zui/launcher/networksdk/api/ImageLoader;

    invoke-static {v5, v4, v1, v2, v0}, Lcom/zui/launcher/networksdk/api/ImageLoader;->h(Lcom/zui/launcher/networksdk/api/ImageLoader;Landroid/widget/ImageView;Landroid/graphics/Bitmap;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    if-eqz v8, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f02\u5e38!!! e="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onFailue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onFinish()V

    :cond_8
    :goto_1
    if-eqz v3, :cond_9

    invoke-static {p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->a(Lcom/zui/launcher/networksdk/api/ImageLoader$c;)Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->c:Z

    if-nez v1, :cond_9

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_9
    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$a;->a:Lcom/zui/launcher/networksdk/api/ImageLoader;

    invoke-static {p0, v0}, Lcom/zui/launcher/networksdk/api/ImageLoader;->e(Lcom/zui/launcher/networksdk/api/ImageLoader;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->b()Lcom/zui/launcher/networksdk/download/Downloader;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->deleteAll()V

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->c()Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-interface {p0, v4, v5, v6, v7}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onUpdata(JJ)V

    goto :goto_2

    :cond_b
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

    iget-object v1, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$a;->a:Lcom/zui/launcher/networksdk/api/ImageLoader;

    invoke-static {v1}, Lcom/zui/launcher/networksdk/api/ImageLoader;->c(Lcom/zui/launcher/networksdk/api/ImageLoader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/networksdk/api/ImageLoader$c;

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    iget v3, v1, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->e:I

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->e:I

    if-lez v3, :cond_d

    iget-object p1, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$a;->a:Lcom/zui/launcher/networksdk/api/ImageLoader;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/api/ImageLoader;->d(Lcom/zui/launcher/networksdk/api/ImageLoader;)Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->removeTaskIdSet(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$a;->a:Lcom/zui/launcher/networksdk/api/ImageLoader;

    invoke-static {p0}, Lcom/zui/launcher/networksdk/api/ImageLoader;->d(Lcom/zui/launcher/networksdk/api/ImageLoader;)Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    move-result-object p0

    invoke-virtual {v1}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->b()Lcom/zui/launcher/networksdk/download/Downloader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->addDownloadTask(Lcom/zui/launcher/networksdk/download/Downloader;)V

    goto :goto_2

    :cond_d
    invoke-virtual {v1}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->c()Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v1, v0, p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onFailue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onFinish()V

    :cond_e
    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader$a;->a:Lcom/zui/launcher/networksdk/api/ImageLoader;

    invoke-static {p0, v0}, Lcom/zui/launcher/networksdk/api/ImageLoader;->e(Lcom/zui/launcher/networksdk/api/ImageLoader;Ljava/lang/String;)V

    :cond_f
    :goto_2
    return-void
.end method
