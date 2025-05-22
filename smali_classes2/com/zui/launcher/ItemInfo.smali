.class public Lcom/zui/launcher/ItemInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NO_ID:I = -0x1


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field public cellX:I

.field public cellY:I

.field public container:I

.field public contentDescription:Ljava/lang/CharSequence;

.field private d:I

.field public dockCellX:I

.field public dropPos:[I

.field private e:Z

.field public id:I

.field public itemType:I

.field public limitState:I

.field public limitTime:J

.field public minSpanX:I

.field public minSpanY:I

.field public overTimeState:I

.field public parentView:Landroid/view/ViewGroup;

.field public rank:I

.field public screenId:I

.field public spanX:I

.field public spanY:I

.field public subItemType:I

.field public title:Ljava/lang/CharSequence;

.field public user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->id:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->container:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->cellY:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v1, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    iput v1, p0, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iput v1, p0, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/zui/launcher/ItemInfo;->rank:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zui/launcher/ItemInfo;->dropPos:[I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    iput-boolean v1, p0, Lcom/zui/launcher/ItemInfo;->a:Z

    iput-boolean v1, p0, Lcom/zui/launcher/ItemInfo;->b:Z

    iput-boolean v1, p0, Lcom/zui/launcher/ItemInfo;->c:Z

    iput v1, p0, Lcom/zui/launcher/ItemInfo;->d:I

    iput-boolean v1, p0, Lcom/zui/launcher/ItemInfo;->e:Z

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/ItemInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->id:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->container:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->cellY:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v1, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    iput v1, p0, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iput v1, p0, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/zui/launcher/ItemInfo;->rank:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zui/launcher/ItemInfo;->dropPos:[I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    iput-boolean v1, p0, Lcom/zui/launcher/ItemInfo;->a:Z

    iput-boolean v1, p0, Lcom/zui/launcher/ItemInfo;->b:Z

    iput-boolean v1, p0, Lcom/zui/launcher/ItemInfo;->c:Z

    iput v1, p0, Lcom/zui/launcher/ItemInfo;->d:I

    iput-boolean v1, p0, Lcom/zui/launcher/ItemInfo;->e:Z

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ItemInfo;->copyFrom(Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method

.method public static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Favorite"

    const-string v0, "Could not write icon"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public copyFrom(Lcom/zui/launcher/ItemInfo;)V
    .locals 2

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->id:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->id:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->rank:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->rank:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->container:I

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->subItemType:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->parentView:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->parentView:Landroid/view/ViewGroup;

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-wide v0, p1, Lcom/zui/launcher/ItemInfo;->limitTime:J

    iput-wide v0, p0, Lcom/zui/launcher/ItemInfo;->limitTime:J

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->limitState:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->limitState:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->overTimeState:I

    iput p1, p0, Lcom/zui/launcher/ItemInfo;->overTimeState:I

    return-void
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-static {v1}, Lcom/zui/launcher/LauncherSettings$Favorites;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-static {v1}, Lcom/zui/launcher/LauncherSettings$Favorites;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cell("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") span("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") minSpan("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " subItemType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->subItemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " dockCellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->dockCellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " limitTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/zui/launcher/ItemInfo;->limitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " limitState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->limitState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " overTimeState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->overTimeState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDownloadProgress()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->d:I

    return p0
.end method

.method public getDownloadProgressWithState(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p0, 0x64

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/zui/launcher/ItemInfo;->d:I

    :goto_0
    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getViewId()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->id:I

    return p0
.end method

.method public isDisabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDownloadPause()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/ItemInfo;->b:Z

    return p0
.end method

.method public isInstalling()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/ItemInfo;->c:Z

    return p0
.end method

.method public isReadyDownload()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/ItemInfo;->e:Z

    return p0
.end method

.method public isStartDownload()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/ItemInfo;->a:Z

    return p0
.end method

.method public onAddToDatabase(Lcom/zui/launcher/util/ContentWriter;)V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->screenId:I

    const/16 v1, -0xc9

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ItemInfo;->writeToValues(Lcom/zui/launcher/util/ContentWriter;)V

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "profileId"

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/zui/launcher/util/ContentWriter;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFromValues(Landroid/content/ContentValues;)V
    .locals 1

    const-string v0, "itemType"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const-string v0, "container"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->container:I

    const-string v0, "screen"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->screenId:I

    const-string v0, "cellX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->cellX:I

    const-string v0, "cellY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->cellY:I

    const-string v0, "spanX"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    const-string v0, "spanY"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    const-string v0, "rank"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->rank:I

    const-string v0, "subItemType"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/ItemInfo;->subItemType:I

    return-void
.end method

.method public setDownloadPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/ItemInfo;->b:Z

    return-void
.end method

.method public setDownloadProgress(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/ItemInfo;->d:I

    return-void
.end method

.method public setInstallLock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/ItemInfo;->c:Z

    return-void
.end method

.method public setLimitState(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/ItemInfo;->limitState:I

    return-void
.end method

.method public setLimitTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zui/launcher/ItemInfo;->limitTime:J

    return-void
.end method

.method public setOverTimeState(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/ItemInfo;->overTimeState:I

    return-void
.end method

.method public setReadyDownload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/ItemInfo;->e:Z

    return-void
.end method

.method public setStartDownload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/ItemInfo;->a:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateValuesWithCoordinates(Lcom/zui/launcher/util/ContentWriter;II)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "cellX"

    invoke-virtual {p1, p2, p0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "cellY"

    invoke-virtual {p1, p2, p0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    return-void
.end method

.method public writeToValues(Lcom/zui/launcher/util/ContentWriter;)V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "screen"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellX"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cellY"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spanX"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "spanY"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rank"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->subItemType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "subItemType"

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    return-void
.end method
