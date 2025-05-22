.class public Lcom/zui/launcher/FetchLenovoWidgetUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Lcom/zui/launcher/FetchLenovoWidgetUtil;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/LenovoWidgetsProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/FetchLenovoWidgetUtil;->a:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/FetchLenovoWidgetUtil;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->loadLeosWidgets(Landroid/content/Context;)V

    return-void
.end method

.method private a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LenovoWidgetsProviderInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/FetchLenovoWidgetUtil;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/zui/launcher/FetchLenovoWidgetUtil;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 3

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected start tag: found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", expected "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zui/launcher/FetchLenovoWidgetUtil;
    .locals 1

    sget-object v0, Lcom/zui/launcher/FetchLenovoWidgetUtil;->c:Lcom/zui/launcher/FetchLenovoWidgetUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/FetchLenovoWidgetUtil;

    invoke-direct {v0, p0}, Lcom/zui/launcher/FetchLenovoWidgetUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zui/launcher/FetchLenovoWidgetUtil;->c:Lcom/zui/launcher/FetchLenovoWidgetUtil;

    :cond_0
    sget-object p0, Lcom/zui/launcher/FetchLenovoWidgetUtil;->c:Lcom/zui/launcher/FetchLenovoWidgetUtil;

    return-object p0
.end method


# virtual methods
.method public getAllReloadLeosWidgets(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LenovoWidgetsProviderInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->loadLeosWidgets(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->a()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getMinSize(Ljava/lang/String;)[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->a()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    iget-object v2, v1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->widgetView:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x0

    iget p1, v1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->minWidth:I

    aput p1, v0, p0

    const/4 p0, 0x1

    iget p1, v1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->minHeight:I

    aput p1, v0, p0

    :cond_2
    return-object v0
.end method

.method public getSpanXY(Ljava/lang/String;)[I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->getMinSize(Ljava/lang/String;)[I

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/CellLayout;->rectToCell(II[I)[I

    return-object p1
.end method

.method public loadLeosWidgets(Landroid/content/Context;)V
    .locals 13

    iget-object v0, p0, Lcom/zui/launcher/FetchLenovoWidgetUtil;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/FetchLenovoWidgetUtil;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f160012

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zui/launcher/Utilities;->isGamePhone()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const v1, 0x7f160011

    goto :goto_0

    :cond_1
    const v1, 0x7f160013

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    const-string v3, "LeosWidgets"

    invoke-static {v1, v3}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_7

    :cond_2
    const/4 v8, 0x1

    if-eq v6, v8, :cond_7

    const/4 v9, 0x2

    if-eq v6, v9, :cond_3

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    invoke-direct {v6}, Lcom/zui/launcher/LenovoWidgetsProviderInfo;-><init>()V

    sget-object v10, Lcom/zui/launcher/R$styleable;->LeosWidget:[I

    invoke-virtual {p1, v2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->widgetView:Ljava/lang/String;

    iget-object v12, p0, Lcom/zui/launcher/FetchLenovoWidgetUtil;->a:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_4
    invoke-virtual {v10, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->appName:Ljava/lang/String;

    invoke-static {}, Lcom/zui/launcher/Utilities;->isZuiRow()Z

    move-result v11

    if-ne v11, v8, :cond_5

    iget-object v11, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->widgetView:Ljava/lang/String;

    if-eqz v11, :cond_5

    iget-object v11, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->widgetView:Ljava/lang/String;

    const-string v12, "com.zui.timelaweather.activity.TimeWeatherWidgetView"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const v11, 0x7f080580

    invoke-virtual {p1, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->icon:Landroid/graphics/drawable/Drawable;

    const v11, 0x7f120685

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_2
    iput-object v11, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->appName:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :goto_3
    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v11

    float-to-int v11, v11

    iput v11, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->minWidth:I

    invoke-virtual {v10, v7, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->minHeight:I

    new-array v9, v9, [I

    iget v11, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->minWidth:I

    invoke-static {v11, v7, v9}, Lcom/zui/launcher/CellLayout;->rectToCell(II[I)[I

    aget v7, v9, v4

    iput v7, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->x:I

    aget v7, v9, v8

    iput v7, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->y:I

    iget-object v7, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->appName:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->appName:Ljava/lang/String;

    const-string v9, "#x#"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->appName:Ljava/lang/String;

    const-string v9, "#x#"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->x:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->y:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->appName:Ljava/lang/String;

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {v10, v8, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->configure:Z

    const/4 v7, 0x6

    invoke-virtual {v10, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->single:Z

    add-int/lit8 v7, v5, 0x1

    iput v5, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->rank:I

    const-string v5, "uiui"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "widgetInfo --> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/zui/launcher/FetchLenovoWidgetUtil;->a:Ljava/util/Map;

    iget-object v8, v6, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->widgetView:Ljava/lang/String;

    invoke-interface {v5, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v7

    goto/16 :goto_1

    :cond_7
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "LeosWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchInstallPackageUtil-->loadFavorites():Got exception parsing widgets. e ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catch_1
    move-exception p0

    const-string p1, "LeosWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchInstallPackageUtil-->loadFavorites():Got exception parsing widgets.e->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catch_2
    move-exception p0

    const-string p1, "LeosWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FetchInstallPackageUtil-->loadFavorites():Got exception parsing widgets.e ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public readConfigInfo(Lcom/zui/launcher/LenovoWidgetViewInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/FetchLenovoWidgetUtil;->a()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    iget-object v2, v1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->widgetView:Ljava/lang/String;

    iget-object v3, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x2

    new-array p0, p0, [I

    iget v2, v1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->minWidth:I

    iget v3, v1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->minHeight:I

    invoke-static {v2, v3, p0}, Lcom/zui/launcher/CellLayout;->rectToCell(II[I)[I

    aget v0, p0, v0

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    const/4 v0, 0x1

    aget p0, p0, v0

    iput p0, p1, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iput p0, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget-boolean p0, v1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->single:Z

    iput-boolean p0, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->single:Z

    iget-boolean p0, v1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->configure:Z

    iput-boolean p0, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->configure:Z

    :cond_2
    :goto_0
    return v0
.end method
