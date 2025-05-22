.class Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/HotWordDownLoad;->bulkInsertHotWord(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:I

.field final synthetic d:Ljava/util/List;

.field final synthetic e:[Landroid/content/ContentValues;

.field final synthetic f:Landroid/content/Context;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/util/List;[Landroid/content/ContentValues;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->a:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->b:Landroid/net/Uri;

    iput p4, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->c:I

    iput-object p5, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->e:[Landroid/content/ContentValues;

    iput-object p7, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->f:Landroid/content/Context;

    iput-object p8, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, "values length --> "

    const-string v1, "GlobalSearch.HotWordDownLoad"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->a:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->b:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move v5, v3

    :goto_0
    iget v6, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->c:I

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/globalsearch/HotWordData;

    iget v8, v6, Lcom/zui/launcher/globalsearch/HotWordData;->flag:I

    iget-object v9, v6, Lcom/zui/launcher/globalsearch/HotWordData;->word:Ljava/lang/String;

    iget-object v10, v6, Lcom/zui/launcher/globalsearch/HotWordData;->url:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v11, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-static {v11}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b(Lcom/zui/launcher/globalsearch/HotWordDownLoad;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    :cond_0
    iget-object v11, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-static {v11}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->b(Lcom/zui/launcher/globalsearch/HotWordDownLoad;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/zui/launcher/GlobalSearchDbSettings$HotWordSettings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v11, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->a:Landroid/content/ContentResolver;

    const-string v12, "generateNewHotWordId"

    invoke-static {v6, v11, v12, v7}, Lcom/zui/launcher/GlobalSearchDbSettings;->call(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    const-string v11, "value"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "flag"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "word"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "url"

    invoke-virtual {v6, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->e:[Landroid/content/ContentValues;

    aput-object v6, v8, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->e:[Landroid/content/ContentValues;

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->b:Landroid/net/Uri;

    iget-object v5, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->e:[Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->splitWidgetHotWordList(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->c(Lcom/zui/launcher/globalsearch/HotWordDownLoad;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->saveInterval(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->saveInterval(Ljava/lang/String;Z)V

    :goto_3
    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->e(Lcom/zui/launcher/globalsearch/HotWordDownLoad;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sput-boolean v4, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->loadFinish:Z

    goto :goto_4

    :catchall_0
    move-exception v5

    goto :goto_5

    :catch_0
    move-exception v5

    :try_start_1
    iget-object v6, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-static {v6, v4}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->d(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Z)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception ex --> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->e:[Landroid/content/ContentValues;

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->b:Landroid/net/Uri;

    iget-object v5, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->e:[Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->splitWidgetHotWordList(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->c(Lcom/zui/launcher/globalsearch/HotWordDownLoad;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :goto_4
    return-void

    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->e:[Landroid/content/ContentValues;

    array-length v0, v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->b:Landroid/net/Uri;

    iget-object v6, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->e:[Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->splitWidgetHotWordList(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->c(Lcom/zui/launcher/globalsearch/HotWordDownLoad;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->saveInterval(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->saveInterval(Ljava/lang/String;Z)V

    :goto_6
    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$c;->h:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->e(Lcom/zui/launcher/globalsearch/HotWordDownLoad;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sput-boolean v4, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->loadFinish:Z

    throw v5
.end method
