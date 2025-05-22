.class public Lcom/zui/launcher/CacheInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NO_ID:I = -0x1


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:I

.field public id:I

.field public intent:Landroid/content/Intent;

.field public modified:J

.field public screen:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/CacheInfo;->id:I

    iput v0, p0, Lcom/zui/launcher/CacheInfo;->container:I

    iput v0, p0, Lcom/zui/launcher/CacheInfo;->screen:I

    iput v0, p0, Lcom/zui/launcher/CacheInfo;->cellX:I

    iput v0, p0, Lcom/zui/launcher/CacheInfo;->cellY:I

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/CacheInfo;->id:I

    iput v0, p0, Lcom/zui/launcher/CacheInfo;->container:I

    iput v0, p0, Lcom/zui/launcher/CacheInfo;->screen:I

    iput v0, p0, Lcom/zui/launcher/CacheInfo;->cellX:I

    iput v0, p0, Lcom/zui/launcher/CacheInfo;->cellY:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->id:I

    iput v0, p0, Lcom/zui/launcher/CacheInfo;->id:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iput v0, p0, Lcom/zui/launcher/CacheInfo;->container:I

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->getFolderItemPosByRank(Landroid/content/Context;I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/zui/launcher/CacheInfo;->screen:I

    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/zui/launcher/CacheInfo;->cellX:I

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v0, p0, Lcom/zui/launcher/CacheInfo;->screen:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/zui/launcher/CacheInfo;->cellX:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    :goto_0
    iput v0, p0, Lcom/zui/launcher/CacheInfo;->cellY:I

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/zui/launcher/CacheInfo;->title:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iput-object p1, p0, Lcom/zui/launcher/CacheInfo;->intent:Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/CacheInfo;->modified:J

    return-void
.end method

.method public static filterIntentHashCode(Landroid/content/Intent;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public filterIntentHashCode()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/CacheInfo;->intent:Landroid/content/Intent;

    invoke-static {p0}, Lcom/zui/launcher/CacheInfo;->filterIntentHashCode(Landroid/content/Intent;)I

    move-result p0

    return p0
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/CacheInfo;->title:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "title"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/CacheInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v0, "intent"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/zui/launcher/CacheInfo;->container:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/zui/launcher/CacheInfo;->screen:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "screen"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/zui/launcher/CacheInfo;->cellX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p0, p0, Lcom/zui/launcher/CacheInfo;->cellY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "cellY"

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "title-------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/CacheInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "\n container--------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/CacheInfo;->container:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n screen--------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/CacheInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n cellX--------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/CacheInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n cellY--------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/CacheInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n intent--------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/CacheInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateValuesWithCoordinates(Landroid/content/ContentValues;II)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "cellX"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "cellY"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
