.class Lcom/zui/launcher/Utilities$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Utilities;->saveKeywordHistory(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Utilities$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/Utilities$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lcom/zui/launcher/Utilities$a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Utilities$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->queryAllKeywordHistory(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/Utilities$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/Utilities$SearchKeyWord;

    const/4 v2, 0x1

    const-string v3, "usageCount"

    const-string v4, "searchTime"

    const/4 v5, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lcom/zui/launcher/GlobalSearchDbSettings$SearchHistory;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iget-object v7, p0, Lcom/zui/launcher/Utilities$a;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/zui/launcher/GlobalSearchDbSettings$SearchHistory;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "generateNewHistoryId"

    invoke-static {v8, v7, v9, v5}, Lcom/zui/launcher/GlobalSearchDbSettings;->call(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "value"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, p0, Lcom/zui/launcher/Utilities$a;->b:Ljava/lang/String;

    const-string v7, "keyword"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    new-instance v0, Lcom/zui/launcher/Utilities$SearchKeyWord;

    iget-object v11, p0, Lcom/zui/launcher/Utilities$a;->b:Ljava/lang/String;

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/zui/launcher/Utilities$SearchKeyWord;-><init>(JLjava/lang/String;JI)V

    invoke-static {}, Lcom/zui/launcher/Utilities;->a()Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object p0, p0, Lcom/zui/launcher/Utilities$a;->b:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    iget-wide v6, v1, Lcom/zui/launcher/Utilities$SearchKeyWord;->id:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/zui/launcher/Utilities$SearchKeyWord;->searchTime:J

    invoke-static {v6, v7}, Lcom/zui/launcher/GlobalSearchDbSettings$SearchHistory;->getContentUri(J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v4, v1, Lcom/zui/launcher/Utilities$SearchKeyWord;->usageCount:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/zui/launcher/Utilities$SearchKeyWord;->usageCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v6, p0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method
