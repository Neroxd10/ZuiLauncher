.class public Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;
.super Landroid/appwidget/AppWidgetProviderInfo;
.source ""

# interfaces
.implements Lcom/zui/launcher/icons/ComponentWithLabelAndIcon;


# static fields
.field public static final CLS_CUSTOM_WIDGET_PREFIX:Ljava/lang/String; = "#custom-widget-"


# instance fields
.field private a:Z

.field public maxSpanX:I

.field public maxSpanY:I

.field public minSpanX:I

.field public minSpanY:I

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private a(Landroid/graphics/Rect;IIF)I
    .locals 0

    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p0

    iget p0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p0

    add-int/2addr p2, p3

    int-to-float p0, p2

    int-to-float p1, p3

    add-float/2addr p4, p1

    div-float/2addr p0, p4

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private b(Landroid/graphics/Rect;IIF)I
    .locals 0

    iget p0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p0

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p0

    add-int/2addr p2, p3

    int-to-float p0, p2

    int-to-float p1, p3

    add-float/2addr p4, p1

    div-float/2addr p0, p4

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1f
    .end annotation

    instance-of v0, p1, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance p1, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {p1, v0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :goto_0
    invoke-virtual {p1, p0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method public final getComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getFullResIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {p1, v0, p0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getIcon(Landroid/content/Context;Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->isCustomWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {p2, p1, p0}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/zui/launcher/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProviderInfo;->loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMinSpans()Landroid/graphics/Point;
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    iget v2, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    :cond_1
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final getUser()Landroid/os/UserHandle;
    .locals 0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public getWidgetFeatures()I
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_P:Z

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->widgetFeatures:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initSpans(Landroid/content/Context;)V
    .locals 14
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1f
    .end annotation

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget v2, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {p1, v5, v3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iget-object v5, v0, Lcom/zui/launcher/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {v10, p1}, Lcom/zui/launcher/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual {v10}, Lcom/zui/launcher/DeviceProfile;->shouldInsetWidgets()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    iget v11, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v12, v10, Lcom/zui/launcher/DeviceProfile;->cellLayoutBorderSpacingPx:I

    iget v13, p1, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    invoke-direct {p0, v4, v11, v12, v13}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->a(Landroid/graphics/Rect;IIF)I

    move-result v11

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v11, p0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget v12, v10, Lcom/zui/launcher/DeviceProfile;->cellLayoutBorderSpacingPx:I

    iget v13, p1, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    invoke-direct {p0, v4, v11, v12, v13}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->b(Landroid/graphics/Rect;IIF)I

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    sget-boolean v11, Lcom/zui/launcher/Utilities;->ATLEAST_S:Z

    if-eqz v11, :cond_2

    iget v11, p0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeWidth:I

    if-lez v11, :cond_1

    iget v12, v10, Lcom/zui/launcher/DeviceProfile;->cellLayoutBorderSpacingPx:I

    iget v13, p1, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    invoke-direct {p0, v4, v11, v12, v13}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->a(Landroid/graphics/Rect;IIF)I

    move-result v11

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_1
    iget v11, p0, Landroid/appwidget/AppWidgetProviderInfo;->maxResizeHeight:I

    if-lez v11, :cond_2

    iget v12, v10, Lcom/zui/launcher/DeviceProfile;->cellLayoutBorderSpacingPx:I

    iget v13, p1, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    invoke-direct {p0, v4, v11, v12, v13}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->b(Landroid/graphics/Rect;IIF)I

    move-result v11

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_2
    iget v11, p0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v12, v10, Lcom/zui/launcher/DeviceProfile;->cellLayoutBorderSpacingPx:I

    iget v13, p1, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    invoke-direct {p0, v4, v11, v12, v13}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->a(Landroid/graphics/Rect;IIF)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v11, p0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget v10, v10, Lcom/zui/launcher/DeviceProfile;->cellLayoutBorderSpacingPx:I

    iget v12, p1, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    invoke-direct {p0, v4, v11, v10, v12}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->b(Landroid/graphics/Rect;IIF)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_0

    :cond_3
    sget-boolean p1, Lcom/zui/launcher/Utilities;->ATLEAST_S:Z

    if-eqz p1, :cond_4

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellWidth:I

    if-lt p1, v6, :cond_4

    if-gt p1, v1, :cond_4

    iget v3, p0, Landroid/appwidget/AppWidgetProviderInfo;->targetCellHeight:I

    if-lt v3, v7, :cond_4

    if-gt v3, v2, :cond_4

    move v8, p1

    move v9, v3

    :cond_4
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->maxSpanX:I

    iput v2, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->maxSpanY:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->a:Z

    iget p1, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    iget p1, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    iget p1, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget p1, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    return-void
.end method

.method public isConfigurationOptional()Z
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->isReconfigurable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCustomWidget()Z
    .locals 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "#custom-widget-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isMinSizeFulfilled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->a:Z

    return p0
.end method

.method public isReconfigurable()Z
    .locals 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->getWidgetFeatures()I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
