.class Lcom/zui/launcher/IconCreateFactory$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/IconCreateFactory;->f(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/zui/launcher/WorkspaceItemInfo;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;Ljava/lang/String;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/IconCreateFactory$a;->a:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/IconCreateFactory$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/launcher/IconCreateFactory$a;->c:Lcom/zui/launcher/WorkspaceItemInfo;

    iput-object p4, p0, Lcom/zui/launcher/IconCreateFactory$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v0, 0x2

    new-array v0, v0, [I

    new-instance v1, Lcom/zui/launcher/util/IntArray;

    invoke-direct {v1}, Lcom/zui/launcher/util/IntArray;-><init>()V

    iget-object v2, p0, Lcom/zui/launcher/IconCreateFactory$a;->a:Lcom/zui/launcher/Launcher;

    iget-object v3, p0, Lcom/zui/launcher/IconCreateFactory$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v5, p0, Lcom/zui/launcher/IconCreateFactory$a;->c:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v6, v2, Lcom/zui/launcher/ItemInfo;->container:I

    iput v6, v5, Lcom/zui/launcher/ItemInfo;->container:I

    iget v6, v2, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v6, v5, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v5, v2, Lcom/zui/launcher/ItemInfo;->cellX:I

    aput v5, v0, v4

    iget v2, v2, Lcom/zui/launcher/ItemInfo;->cellY:I

    aput v2, v0, v3

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/zui/launcher/IconCreateFactory$a;->a:Lcom/zui/launcher/Launcher;

    iget-object v5, p0, Lcom/zui/launcher/IconCreateFactory$a;->c:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v2, v5}, Lcom/zui/launcher/Launcher;->addInRecommendMap(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-static {}, Lcom/zui/launcher/LauncherModel;->getScreensList()Lcom/zui/launcher/util/IntArray;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "workspaceScreens.size --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "qaz"

    invoke-static {v6, v5}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v5

    iget-object v6, p0, Lcom/zui/launcher/IconCreateFactory$a;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v6, v2, v3}, Lcom/zui/launcher/LauncherModel;->getFinalPosition(Landroid/content/Context;Lcom/zui/launcher/util/IntArray;Z)Landroid/util/Pair;

    move-result-object v6

    if-nez v6, :cond_1

    const-string p0, "IconCreateFactory"

    const-string v0, "no space for this icon. so return"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v7, p0, Lcom/zui/launcher/IconCreateFactory$a;->c:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, [I

    aget v8, v8, v4

    aput v8, v0, v4

    check-cast v7, [I

    aget v7, v7, v3

    aput v7, v0, v3

    invoke-virtual {v2}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v2

    if-le v2, v5, :cond_2

    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/IntArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/IntArray;->add(I)V

    :cond_2
    move v2, v4

    :goto_0
    iget-object v5, p0, Lcom/zui/launcher/IconCreateFactory$a;->d:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/zui/launcher/IconCreateFactory$a;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v5}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v5

    iget-object v6, p0, Lcom/zui/launcher/IconCreateFactory$a;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5, v6}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v5

    iget v5, v5, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, p0, Lcom/zui/launcher/IconCreateFactory$a;->d:Ljava/lang/String;

    new-instance v8, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v8, v5, v5}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v6, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-direct {v6, v5}, Lcom/zui/launcher/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/zui/launcher/IconCreateFactory$a;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v5}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/LauncherAppState;->getLauncherContext()Lcom/zui/launcher/LauncherContext;

    move-result-object v5

    iget-object v7, p0, Lcom/zui/launcher/IconCreateFactory$a;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5, v6, v7}, Lcom/zui/launcher/LauncherContext;->createCustomIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/zui/launcher/IconCreateFactory$a;->c:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v6, v5}, Lcom/zui/launcher/WorkspaceItemInfo;->setIcon(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v5, p0, Lcom/zui/launcher/IconCreateFactory$a;->a:Lcom/zui/launcher/Launcher;

    iget-object v6, p0, Lcom/zui/launcher/IconCreateFactory$a;->b:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/zui/launcher/LauncherModel;->deleteCacheByPackageName(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zui/launcher/IconCreateFactory$a;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v5}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/LauncherAppState;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v6

    iget-object v7, p0, Lcom/zui/launcher/IconCreateFactory$a;->c:Lcom/zui/launcher/WorkspaceItemInfo;

    iget v8, v7, Lcom/zui/launcher/ItemInfo;->container:I

    iget v9, v7, Lcom/zui/launcher/ItemInfo;->screenId:I

    aget v10, v0, v4

    aget v11, v0, v3

    invoke-virtual/range {v6 .. v11}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    iget-object v3, p0, Lcom/zui/launcher/IconCreateFactory$a;->a:Lcom/zui/launcher/Launcher;

    iget-object v5, p0, Lcom/zui/launcher/IconCreateFactory$a;->c:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static {v3, v5, v4}, Lcom/zui/launcher/LauncherModel;->addCacheInDatabaseHelper(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;Z)V

    sget-object v3, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v4, Lcom/zui/launcher/IconCreateFactory$a$a;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/zui/launcher/IconCreateFactory$a$a;-><init>(Lcom/zui/launcher/IconCreateFactory$a;ZLcom/zui/launcher/util/IntArray;[I)V

    invoke-virtual {v3, v4}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
