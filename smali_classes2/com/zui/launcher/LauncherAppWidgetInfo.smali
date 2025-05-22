.class public Lcom/zui/launcher/LauncherAppWidgetInfo;
.super Lcom/zui/launcher/ItemInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/LauncherAppWidgetInfo$a;
    }
.end annotation


# static fields
.field public static final CUSTOM_WIDGET_ID:I = -0x64

.field public static final FEATURE_MAX_SIZE:I = 0x20

.field public static final FEATURE_MIN_SIZE:I = 0x10

.field public static final FEATURE_OPTIONAL_CONFIGURATION:I = 0x2

.field public static final FEATURE_PREVIEW_LAYOUT:I = 0x4

.field public static final FEATURE_RECONFIGURABLE:I = 0x1

.field public static final FEATURE_ROUNDED_CORNERS:I = 0x40

.field public static final FEATURE_TARGET_CELL_SIZE:I = 0x8

.field public static final FLAG_DIRECT_CONFIG:I = 0x20

.field public static final FLAG_ID_ALLOCATED:I = 0x10

.field public static final FLAG_ID_NOT_VALID:I = 0x1

.field public static final FLAG_PROVIDER_NOT_READY:I = 0x2

.field public static final FLAG_RESTORE_STARTED:I = 0x8

.field public static final FLAG_UI_NOT_READY:I = 0x4

.field public static final NO_ID:I = -0x1

.field public static final OPTION_SEARCH_WIDGET:I = 0x1

.field public static final RESTORE_COMPLETED:I


# instance fields
.field public appWidgetId:I

.field public bindOptions:Landroid/content/Intent;

.field public configOptional:Z

.field private f:Z

.field g:Landroid/view/View;

.field h:Landroid/appwidget/AppWidgetHostView;

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LauncherAppWidgetInfo$a;",
            ">;"
        }
    .end annotation
.end field

.field public iconBitmap:Landroid/graphics/Bitmap;

.field public installProgress:I

.field public label:Ljava/lang/String;

.field public mAppWidgetHostId:I

.field public needConfig:I

.field public options:I

.field public pendingItemInfo:Lcom/zui/launcher/model/PackageItemInfo;

.field public providerName:Landroid/content/ComponentName;

.field public restoreStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    iput v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->installProgress:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->h:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x0

    iput v1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->needConfig:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->i:Ljava/util/ArrayList;

    iput v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->mAppWidgetHostId:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 3

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    iput v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->installProgress:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->h:Landroid/appwidget/AppWidgetHostView;

    const/4 v1, 0x0

    iput v1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->needConfig:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->i:Ljava/util/ArrayList;

    iput v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->mAppWidgetHostId:I

    iput p1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    iput-object p2, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iput v1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getAppWidgetHostId(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->mAppWidgetHostId:I

    return-void
.end method


# virtual methods
.method a(Lcom/zui/launcher/LauncherAppWidgetInfo$a;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LauncherAppWidgetInfo$a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/zui/launcher/LauncherAppWidgetInfo$a;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method c()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppWidgetInfo;->b()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LauncherAppWidgetInfo$a;

    invoke-interface {v1}, Lcom/zui/launcher/LauncherAppWidgetInfo$a;->onRecommendStatusChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearListeners()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->i:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method d(Lcom/zui/launcher/Launcher;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->h:Landroid/appwidget/AppWidgetHostView;

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v2, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static {v0, p1, v1, v2}, Lcom/zui/launcher/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->f:Z

    return-void
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/zui/launcher/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appWidgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method e(Lcom/zui/launcher/Launcher;Landroid/appwidget/AppWidgetHostView;)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v1, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static {p2, p1, v0, v1}, Lcom/zui/launcher/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->f:Z

    :cond_0
    return-void
.end method

.method f(Lcom/zui/launcher/LauncherAppWidgetInfo$a;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final hasOptionFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->options:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasRestoreFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCustomWidget()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v0, -0x64

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecommend()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReconfigOptional()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->configOptional:Z

    return p0
.end method

.method public final isWidgetIdAllocated()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onAddToDatabase(Lcom/zui/launcher/util/ContentWriter;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/zui/launcher/ItemInfo;->onAddToDatabase(Lcom/zui/launcher/util/ContentWriter;)V

    iget v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appWidgetProvider"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "restored"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->options:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Landroid/content/Intent;)Lcom/zui/launcher/util/ContentWriter;

    iget v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->needConfig:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "needConfig"

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/zui/launcher/util/ContentWriter;

    iget-object v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/zui/launcher/util/ContentWriter;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/util/ContentWriter;->putIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Lcom/zui/launcher/util/ContentWriter;

    :cond_1
    return-void
.end method

.method public onBindAppWidget(Lcom/zui/launcher/Launcher;)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->d(Lcom/zui/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public setReconfigOptional(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/LauncherAppWidgetInfo;->configOptional:Z

    return-void
.end method
