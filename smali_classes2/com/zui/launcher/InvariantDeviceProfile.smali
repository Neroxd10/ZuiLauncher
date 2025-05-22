.class public Lcom/zui/launcher/InvariantDeviceProfile;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/InvariantDeviceProfile$a;,
        Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;,
        Lcom/zui/launcher/InvariantDeviceProfile$GridOption;,
        Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;
    }
.end annotation


# static fields
.field public static final CHANGE_FLAG_GRID:I = 0x1

.field public static final CHANGE_FLAG_ICON_PARAMS:I = 0x2

.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/launcher/InvariantDeviceProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_ICON_PATH_REF:Ljava/lang/String; = "pref_icon_shape_path"

.field public static final TAG:Ljava/lang/String; = "IDP"

.field private static final g:I


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field public badgeBackground:I

.field public badgeCircleHeightDp:F

.field public badgeTextSizeDp:F

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/zui/launcher/util/ConfigMonitor;

.field public defaultLayoutId:I

.field public defaultWallpaperSize:Landroid/graphics/Point;

.field public defaultWidgetPadding:Landroid/graphics/Rect;

.field private e:Lcom/zui/launcher/InvariantDeviceProfile$a;

.field private f:I

.field public fillResIconDpi:I

.field public iconBitmapSize:I

.field public iconDrawablePaddingDp:F

.field public iconPaddingTopDp:F

.field public iconPaddingTopHotseatDp:F

.field public iconShapePath:Ljava/lang/String;

.field public iconSize:F

.field public iconTextSize:F

.field public iconVisualSizeDp:F

.field public iconVisualSizePx:I

.field public landCellPaddingEndDp:F

.field public landHotseatPaddingEndDp:F

.field public landHotseatPaddingStartDp:F

.field public landIconDrawablePaddingDp:F

.field public landscapeIconSize:F

.field public landscapeProfile:Lcom/zui/launcher/DeviceProfile;

.field public numColumns:I

.field public numColumnsApps:I

.field public numFolderColumns:I

.field public numFolderRows:I

.field public numHotseatIcons:I

.field public numRows:I

.field public portraitProfile:Lcom/zui/launcher/DeviceProfile;

.field public supportedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/DeviceProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/launcher/x0;->a:Lcom/zui/launcher/x0;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_icon_mask"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/zui/launcher/InvariantDeviceProfile;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->f:I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->f:I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->d:Lcom/zui/launcher/util/ConfigMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/util/ConfigMonitor;->unregister()V

    :cond_0
    new-instance v0, Lcom/zui/launcher/util/ConfigMonitor;

    sget-object v1, Lcom/zui/launcher/config/BaseFlags;->APPLY_CONFIG_AT_RUNTIME:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/zui/launcher/c1;

    invoke-direct {v1, p0}, Lcom/zui/launcher/c1;-><init>(Lcom/zui/launcher/InvariantDeviceProfile;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/zui/launcher/w0;

    invoke-direct {v1, p0}, Lcom/zui/launcher/w0;-><init>(Lcom/zui/launcher/InvariantDeviceProfile;)V

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/zui/launcher/util/ConfigMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->d:Lcom/zui/launcher/util/ConfigMonitor;

    new-instance v0, Lcom/zui/launcher/InvariantDeviceProfile$a;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/InvariantDeviceProfile$a;-><init>(Lcom/zui/launcher/InvariantDeviceProfile;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->e:Lcom/zui/launcher/InvariantDeviceProfile$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->f:I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/InvariantDeviceProfile;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown grid name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor <init>(Lcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->f:I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderRows:I

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderRows:I

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderColumns:I

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderColumns:I

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->iconSize:F

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->iconSize:F

    iget-object v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->iconShapePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->iconShapePath:Ljava/lang/String;

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->landscapeIconSize:F

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->landscapeIconSize:F

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->iconTextSize:F

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->iconTextSize:F

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->defaultLayoutId:I

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->defaultLayoutId:I

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->b:I

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->b:I

    iget-object v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->a:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->a:Landroid/util/SparseArray;

    iget-object v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->e:Lcom/zui/launcher/InvariantDeviceProfile$a;

    iput-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->e:Lcom/zui/launcher/InvariantDeviceProfile$a;

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->iconVisualSizeDp:F

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->iconVisualSizeDp:F

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->iconPaddingTopDp:F

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->iconPaddingTopDp:F

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->iconPaddingTopHotseatDp:F

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->iconPaddingTopHotseatDp:F

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->iconDrawablePaddingDp:F

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->iconDrawablePaddingDp:F

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->landIconDrawablePaddingDp:F

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->landIconDrawablePaddingDp:F

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->badgeCircleHeightDp:F

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->badgeCircleHeightDp:F

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->badgeTextSizeDp:F

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->badgeTextSizeDp:F

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->badgeBackground:I

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->badgeBackground:I

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->landCellPaddingEndDp:F

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->landCellPaddingEndDp:F

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numColumnsApps:I

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumnsApps:I

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->landHotseatPaddingStartDp:F

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->landHotseatPaddingStartDp:F

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->landHotseatPaddingEndDp:F

    iput v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->landHotseatPaddingEndDp:F

    iget p1, p1, Lcom/zui/launcher/InvariantDeviceProfile;->iconBitmapSize:I

    iput p1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->iconBitmapSize:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/InvariantDeviceProfile;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->r(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->d:Lcom/zui/launcher/util/ConfigMonitor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/ConfigMonitor;->unregister()V

    new-instance v0, Lcom/zui/launcher/util/ConfigMonitor;

    new-instance v1, Lcom/zui/launcher/c1;

    invoke-direct {v1, p0}, Lcom/zui/launcher/c1;-><init>(Lcom/zui/launcher/InvariantDeviceProfile;)V

    invoke-direct {v0, p1, v1}, Lcom/zui/launcher/util/ConfigMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->d:Lcom/zui/launcher/util/ConfigMonitor;

    iget-object p1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;

    invoke-interface {v0, p2, p0}, Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;->onIdpChanged(ILcom/zui/launcher/InvariantDeviceProfile;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static c(FFFF)F
    .locals 2

    sub-float/2addr p2, p0

    float-to-double v0, p2

    sub-float/2addr p3, p1

    float-to-double p0, p3

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/zui/launcher/InvariantDeviceProfile;->g:I

    if-nez v0, :cond_0

    const-string p0, "IDP"

    const-string v0, "Icon mask res identifier failed to retrieve."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/zui/launcher/InvariantDeviceProfile;->g:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private e(II)I
    .locals 0

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    return p0
.end method

.method private f(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumnsApps:I

    return p1
.end method

.method static g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f160007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_4

    :cond_1
    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    const-string v3, "grid-option"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    invoke-direct {v3, p0, v7}, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    :cond_2
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    if-ne v8, v4, :cond_3

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v7, :cond_0

    :cond_3
    if-eq v8, v5, :cond_0

    if-ne v8, v6, :cond_2

    const-string v8, "display-option"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    invoke-direct {v8, v3, p0, v9}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/zui/launcher/InvariantDeviceProfile$GridOption;Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    invoke-static {v2}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->a(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)Lcom/zui/launcher/InvariantDeviceProfile$GridOption;

    move-result-object v3

    iget-object v3, v3, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    invoke-static {v0}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->m(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No display option with canBeDefault=true"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_b

    :try_start_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-string v0, "window"

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v11, v12}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-static/range {p1 .. p2}, Lcom/zui/launcher/InvariantDeviceProfile;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, v11, Landroid/graphics/Point;->x:I

    iget v4, v11, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v1}, Lcom/zui/launcher/Utilities;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result v3

    iget v4, v12, Landroid/graphics/Point;->x:I

    iget v5, v12, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, v1}, Lcom/zui/launcher/Utilities;->dpiFromPx(ILandroid/util/DisplayMetrics;)F

    move-result v4

    new-instance v5, Lcom/zui/launcher/y0;

    invoke-direct {v5, v3, v4}, Lcom/zui/launcher/y0;-><init>(FF)V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v3, v4, v2}, Lcom/zui/launcher/InvariantDeviceProfile;->i(FFLjava/util/ArrayList;)Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    invoke-static {v2}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->a(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)Lcom/zui/launcher/InvariantDeviceProfile$GridOption;

    move-result-object v13

    iget v2, v13, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->numRows:I

    iput v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    iget v2, v13, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->numColumns:I

    iput v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {v13}, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->a(Lcom/zui/launcher/InvariantDeviceProfile$GridOption;)I

    move-result v2

    iput v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-static {v13}, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->b(Lcom/zui/launcher/InvariantDeviceProfile$GridOption;)I

    move-result v2

    iput v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->defaultLayoutId:I

    invoke-static {v13}, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->c(Lcom/zui/launcher/InvariantDeviceProfile$GridOption;)I

    move-result v2

    iput v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->b:I

    invoke-static {v13}, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->d(Lcom/zui/launcher/InvariantDeviceProfile$GridOption;)I

    move-result v2

    iput v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderRows:I

    invoke-static {v13}, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->e(Lcom/zui/launcher/InvariantDeviceProfile$GridOption;)I

    move-result v2

    iput v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderColumns:I

    invoke-static {v13}, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->f(Lcom/zui/launcher/InvariantDeviceProfile$GridOption;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->a:Landroid/util/SparseArray;

    iget-object v2, v13, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v13, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    invoke-static {v10, v2}, Lcom/zui/launcher/util/SettingsValue;->setCurrentLayoutConfigKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {v3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->r(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v2

    iput v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->iconSize:F

    invoke-static/range {p1 .. p1}, Lcom/zui/launcher/InvariantDeviceProfile;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->iconShapePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->s(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v2

    iput v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->landscapeIconSize:F

    iget v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->iconSize:F

    invoke-static {v2, v1}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-static {v3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->t(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v2

    iput v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->iconTextSize:F

    iget v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->iconBitmapSize:I

    iget v4, v9, Lcom/zui/launcher/InvariantDeviceProfile;->iconSize:F

    float-to-int v4, v4

    invoke-direct {v9, v2, v4}, Lcom/zui/launcher/InvariantDeviceProfile;->e(II)I

    move-result v2

    iput v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-static {v3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->b(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v2

    iput v2, v9, Lcom/zui/launcher/InvariantDeviceProfile;->iconVisualSizeDp:F

    invoke-static {v2, v1}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, v9, Lcom/zui/launcher/InvariantDeviceProfile;->iconVisualSizePx:I

    invoke-static {v3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->c(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v1

    iput v1, v9, Lcom/zui/launcher/InvariantDeviceProfile;->iconPaddingTopDp:F

    invoke-static {v3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->d(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v1

    iput v1, v9, Lcom/zui/launcher/InvariantDeviceProfile;->iconPaddingTopHotseatDp:F

    invoke-static {v3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->e(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v1

    iput v1, v9, Lcom/zui/launcher/InvariantDeviceProfile;->iconDrawablePaddingDp:F

    invoke-static {v3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->f(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v1

    iput v1, v9, Lcom/zui/launcher/InvariantDeviceProfile;->landIconDrawablePaddingDp:F

    invoke-static {v3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->g(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v1

    iput v1, v9, Lcom/zui/launcher/InvariantDeviceProfile;->badgeCircleHeightDp:F

    invoke-static {v3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->h(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v1

    iput v1, v9, Lcom/zui/launcher/InvariantDeviceProfile;->badgeTextSizeDp:F

    invoke-static {v3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->i(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)I

    move-result v1

    iput v1, v9, Lcom/zui/launcher/InvariantDeviceProfile;->badgeBackground:I

    invoke-static {v3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->j(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v1

    iput v1, v9, Lcom/zui/launcher/InvariantDeviceProfile;->landCellPaddingEndDp:F

    invoke-direct/range {p0 .. p1}, Lcom/zui/launcher/InvariantDeviceProfile;->f(Landroid/content/Context;)I

    move-result v1

    iput v1, v9, Lcom/zui/launcher/InvariantDeviceProfile;->numColumnsApps:I

    invoke-static {v3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->k(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v1

    iput v1, v9, Lcom/zui/launcher/InvariantDeviceProfile;->landHotseatPaddingStartDp:F

    invoke-static {v3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->l(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v1

    iput v1, v9, Lcom/zui/launcher/InvariantDeviceProfile;->landHotseatPaddingEndDp:F

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    new-instance v8, Lcom/zui/launcher/DeviceProfile;

    const/4 v7, 0x1

    const/16 v16, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object v3, v11

    move-object v4, v12

    move v5, v15

    move v6, v14

    move-object/from16 v17, v13

    move-object v13, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/zui/launcher/DeviceProfile;-><init>(Landroid/content/Context;Lcom/zui/launcher/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZZ)V

    iput-object v13, v9, Lcom/zui/launcher/InvariantDeviceProfile;->landscapeProfile:Lcom/zui/launcher/DeviceProfile;

    new-instance v13, Lcom/zui/launcher/DeviceProfile;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v13

    move v5, v14

    move v6, v15

    invoke-direct/range {v0 .. v8}, Lcom/zui/launcher/DeviceProfile;-><init>(Landroid/content/Context;Lcom/zui/launcher/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZZ)V

    iput-object v13, v9, Lcom/zui/launcher/InvariantDeviceProfile;->portraitProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/graphics/Point;

    int-to-float v1, v15

    invoke-static {v15, v14}, Lcom/zui/launcher/InvariantDeviceProfile;->s(II)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1, v15}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    mul-int/lit8 v14, v14, 0x2

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1, v15}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    iput-object v0, v9, Lcom/zui/launcher/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v10, v0, v1}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v9, Lcom/zui/launcher/InvariantDeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v9, Lcom/zui/launcher/InvariantDeviceProfile;->portraitProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v9, Lcom/zui/launcher/InvariantDeviceProfile;->landscapeProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/zui/launcher/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method static i(FFLjava/util/ArrayList;)Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;",
            ">;)",
            "Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    invoke-static {v1}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->n(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v2

    invoke-static {v1}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->o(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v3

    invoke-static {p0, p1, v2, v3}, Lcom/zui/launcher/InvariantDeviceProfile;->c(FFFF)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    invoke-direct {v1}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;-><init>()V

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    int-to-float v2, v0

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    invoke-static {v2}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->n(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v4

    invoke-static {v2}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->o(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {p0, p1, v4, v5, v6}, Lcom/zui/launcher/InvariantDeviceProfile;->t(FFFFF)F

    move-result v4

    add-float/2addr v3, v4

    new-instance v5, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    invoke-direct {v5}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;-><init>()V

    invoke-static {v5, v2}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->p(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    invoke-static {v5, v4}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->q(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;F)Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    invoke-static {v1, v5}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->p(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    div-float/2addr p0, v3

    invoke-static {v1, p0}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->q(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;F)Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    return-object v1
.end method

.method private j(Landroid/content/Context;)V
    .locals 0

    const-string p0, "ConfigMonitor"

    const-string p1, "restarting launcher"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public static synthetic k(Lcom/zui/launcher/InvariantDeviceProfile;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->j(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic l(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;
    .locals 1

    new-instance v0, Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-direct {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic n(FFLcom/zui/launcher/InvariantDeviceProfile$DisplayOption;Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)I
    .locals 1

    invoke-static {p2}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->n(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v0

    invoke-static {p2}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->o(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result p2

    invoke-static {p0, p1, v0, p2}, Lcom/zui/launcher/InvariantDeviceProfile;->c(FFFF)F

    move-result p2

    invoke-static {p3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->n(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result v0

    invoke-static {p3}, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;->o(Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)F

    move-result p3

    invoke-static {p0, p1, v0, p3}, Lcom/zui/launcher/InvariantDeviceProfile;->c(FFFF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static synthetic q(Lcom/zui/launcher/InvariantDeviceProfile;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->r(Landroid/content/Context;)V

    return-void
.end method

.method private r(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-direct {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;-><init>(Lcom/zui/launcher/InvariantDeviceProfile;)V

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->f:I

    iget v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    iget v2, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iget v2, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderColumns:I

    iget v2, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderColumns:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderRows:I

    iget v2, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderRows:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    iget v2, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->f:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->f:I

    :cond_1
    iget v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->iconSize:F

    iget v2, v0, Lcom/zui/launcher/InvariantDeviceProfile;->iconSize:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->iconBitmapSize:I

    iget v2, v0, Lcom/zui/launcher/InvariantDeviceProfile;->iconBitmapSize:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->iconShapePath:Ljava/lang/String;

    iget-object v2, v0, Lcom/zui/launcher/InvariantDeviceProfile;->iconShapePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->iconVisualSizeDp:F

    iget v2, v0, Lcom/zui/launcher/InvariantDeviceProfile;->iconVisualSizeDp:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->f:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->f:I

    :cond_3
    iget-object v1, p0, Lcom/zui/launcher/InvariantDeviceProfile;->iconShapePath:Ljava/lang/String;

    iget-object v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->iconShapePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/zui/launcher/graphics/IconShape;->init(Landroid/content/Context;)V

    :cond_4
    iget v0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->f:I

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->b(Landroid/content/Context;I)V

    return-void
.end method

.method private static s(II)F
    .locals 0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    const p1, 0x3e9d89d7

    mul-float/2addr p0, p1

    const p1, 0x3f80fc10

    add-float/2addr p0, p1

    return p0
.end method

.method private static t(FFFFF)F
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/zui/launcher/InvariantDeviceProfile;->c(FFFF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    return p0

    :cond_0
    const-wide p1, 0x40f86a0000000000L    # 100000.0

    float-to-double v0, p0

    float-to-double p3, p4

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    div-double/2addr p1, p3

    double-to-float p0, p1

    return p0
.end method


# virtual methods
.method public addOnChangeListener(Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public changeConfig(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/zui/launcher/MainThreadExecutor;-><init>()V

    new-instance v1, Lcom/zui/launcher/b1;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/b1;-><init>(Lcom/zui/launcher/InvariantDeviceProfile;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAttrValue(I)Landroid/util/TypedValue;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->a:Landroid/util/SparseArray;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/TypedValue;

    :goto_0
    return-object p0
.end method

.method public getChangeFlags()Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->f:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->landscapeProfile:Lcom/zui/launcher/DeviceProfile;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->portraitProfile:Lcom/zui/launcher/DeviceProfile;

    :goto_0
    return-object p0
.end method

.method public synthetic m(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->r(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic o(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->r(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic p(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-direct {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;-><init>(Lcom/zui/launcher/InvariantDeviceProfile;)V

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherAppState;->resetData(Lcom/zui/launcher/InvariantDeviceProfile;)V

    return-void
.end method

.method public removeOnChangeListener(Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCurrentGrid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/zui/launcher/Utilities;->setChangeGridOptionFlag(Landroid/content/Context;Z)V

    invoke-static {v0, p2}, Lcom/zui/launcher/util/SettingsValue;->setCurrentLayoutConfigKey(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/FetchLenovoWidgetUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->loadLeosWidgets(Landroid/content/Context;)V

    new-instance p1, Lcom/zui/launcher/MainThreadExecutor;

    invoke-direct {p1}, Lcom/zui/launcher/MainThreadExecutor;-><init>()V

    new-instance p2, Lcom/zui/launcher/a1;

    invoke-direct {p2, p0, v0}, Lcom/zui/launcher/a1;-><init>(Lcom/zui/launcher/InvariantDeviceProfile;Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCurrentGridNew(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/zui/launcher/util/SettingsValue;->setCurrentLayoutConfigKey(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/FetchLenovoWidgetUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->loadLeosWidgets(Landroid/content/Context;)V

    new-instance p2, Lcom/zui/launcher/MainThreadExecutor;

    invoke-direct {p2}, Lcom/zui/launcher/MainThreadExecutor;-><init>()V

    new-instance v0, Lcom/zui/launcher/z0;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/z0;-><init>(Lcom/zui/launcher/InvariantDeviceProfile;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public verifyConfigChangedInBackground(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_icon_shape_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p1}, Lcom/zui/launcher/InvariantDeviceProfile;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/zui/launcher/InvariantDeviceProfile;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lcom/zui/launcher/InvariantDeviceProfile;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->b(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public verifyThemeChanged(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getSavedTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lzui/themes/ThemeManager;->getInstance(Landroid/content/Context;)Lzui/themes/ThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lzui/themes/ThemeManager;->getCurrentTheme()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###### verifyThemeChanged  oldTheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " currentTheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/util/Debug;->debugThemeLog(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "###### verifyThemeChanged CHANGE_FLAG_ICON_PARAMS #########"

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugThemeLog(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/zui/launcher/Utilities;->saveCurrentTheme(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->b(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
