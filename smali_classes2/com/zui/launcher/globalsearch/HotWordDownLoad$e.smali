.class Lcom/zui/launcher/globalsearch/HotWordDownLoad$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/HotWordDownLoad;->queryWidgetHotWordDatabases(ZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/zui/launcher/globalsearch/HotWordDownLoad;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$e;->c:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$e;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$e;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    sget-object v1, Lcom/zui/launcher/GlobalSearchDbSettings$HotWordSettings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/zui/launcher/Constants;->HOTWORD_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_0
    sget-object v2, Lcom/zui/launcher/Constants;->HOTWORD_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Lcom/zui/launcher/Constants;->HOTWORD_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    sget-object v6, Lcom/zui/launcher/Constants;->HOTWORD_PROJECTION:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    if-ne v7, v5, :cond_2

    new-instance v2, Lcom/zui/launcher/globalsearch/HotWordData;

    invoke-direct {v2, v7, v8, v9}, Lcom/zui/launcher/globalsearch/HotWordData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$e;->c:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-static {v2, v5}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Z)Z

    goto :goto_1

    :cond_2
    iget-object v10, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$e;->c:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-static {v10, v3}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->h(Lcom/zui/launcher/globalsearch/HotWordDownLoad;Z)Z

    new-instance v10, Lcom/zui/launcher/globalsearch/HotWordData;

    invoke-direct {v10, v7, v8, v9}, Lcom/zui/launcher/globalsearch/HotWordData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->f()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    sput-boolean v5, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->loadFinish:Z

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    iget-boolean v0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$e;->b:Z

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/HotWordDownLoad$e;->c:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->e(Lcom/zui/launcher/globalsearch/HotWordDownLoad;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    return-void
.end method
