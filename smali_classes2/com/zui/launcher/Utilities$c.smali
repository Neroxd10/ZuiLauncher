.class Lcom/zui/launcher/Utilities$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Utilities;->saveUsageStat(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/ComponentName;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Utilities$c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/Utilities$c;->b:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/zui/launcher/Utilities$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/launcher/Utilities$c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->getSortCntWeekTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->getSortCntTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Utilities$c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/launcher/Utilities$c;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/zui/launcher/Utilities$c;->b:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/zui/launcher/Utilities$c;->c:Ljava/lang/String;

    invoke-static {v3, v4, v5, v2, v0}, Lcom/zui/launcher/Utilities;->queryUsageStatInfo(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/globalsearch/GlobalSearchUsageStatInfo;

    move-result-object v3

    const-string v4, "cnt_total"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-nez v3, :cond_0

    sget-object v3, Lcom/zui/launcher/GlobalSearchDbSettings$UsageStat;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    iget-object v8, p0, Lcom/zui/launcher/Utilities$c;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/zui/launcher/GlobalSearchDbSettings$UsageStat;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "generateNewUsageStatId"

    invoke-static {v9, v8, v10, v5}, Lcom/zui/launcher/GlobalSearchDbSettings;->call(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    const-string v8, "value"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v8, "_id"

    invoke-virtual {v6, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, p0, Lcom/zui/launcher/Utilities$c;->d:Ljava/lang/String;

    const-string v8, "title"

    invoke-virtual {v6, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zui/launcher/Utilities$c;->b:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "component"

    invoke-virtual {v6, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/Utilities$c;->c:Ljava/lang/String;

    const-string v5, "launcher_key"

    invoke-virtual {v6, v5, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    iget-wide v7, v3, Lcom/zui/launcher/globalsearch/GlobalSearchUsageStatInfo;->id:J

    invoke-static {v7, v8}, Lcom/zui/launcher/GlobalSearchDbSettings$UsageStat;->getContentUri(J)Landroid/net/Uri;

    move-result-object v7

    iget v8, v3, Lcom/zui/launcher/globalsearch/GlobalSearchUsageStatInfo;->countTotal:I

    add-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v4, v3, Lcom/zui/launcher/globalsearch/GlobalSearchUsageStatInfo;->countWeekTime:I

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v2, v3, Lcom/zui/launcher/globalsearch/GlobalSearchUsageStatInfo;->countTime:I

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1, v7, p0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method
