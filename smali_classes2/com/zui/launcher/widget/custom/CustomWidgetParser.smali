.class public Lcom/zui/launcher/widget/custom/CustomWidgetParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/res/TypedArray;Landroid/os/Parcel;Landroid/content/Context;)Lcom/zui/launcher/widget/custom/CustomAppWidgetProviderInfo;
    .locals 5

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    new-instance v2, Lcom/zui/launcher/widget/custom/CustomAppWidgetProviderInfo;

    invoke-direct {v2, p1, v1, v0}, Lcom/zui/launcher/widget/custom/CustomAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;ZI)V

    new-instance p1, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#custom-widget-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, v2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 p2, 0x3

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, v2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const/4 p2, 0x4

    invoke-virtual {p0, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/4 p2, 0x5

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v2, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    const/16 p2, 0x8

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v2, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, v2, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    const/4 p2, 0x7

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    iput p0, v2, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    return-object v2
.end method

.method private static b(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :try_start_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    sput-object v0, Lcom/zui/launcher/widget/custom/CustomWidgetParser;->a:Ljava/util/List;

    sput-object v1, Lcom/zui/launcher/widget/custom/CustomWidgetParser;->b:Landroid/util/SparseArray;

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2, v3, v4}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f160003

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    :cond_1
    :goto_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v5, :cond_3

    :cond_2
    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    const-string v6, "widget"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    sget-object v7, Lcom/zui/launcher/R$styleable;->CustomAppWidgetProviderInfo:[I

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {v6, v3, p0}, Lcom/zui/launcher/widget/custom/CustomWidgetParser;->a(Landroid/content/res/TypedArray;Landroid/os/Parcel;Landroid/content/Context;)Lcom/zui/launcher/widget/custom/CustomAppWidgetProviderInfo;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    iget v6, v7, Lcom/zui/launcher/widget/custom/CustomAppWidgetProviderInfo;->providerId:I

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_5

    :try_start_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getCustomWidgets(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/zui/launcher/widget/custom/CustomWidgetParser;->a:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/widget/custom/CustomWidgetParser;->b(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lcom/zui/launcher/widget/custom/CustomWidgetParser;->a:Ljava/util/List;

    return-object p0
.end method

.method public static getWidgetIdForCustomProvider(Landroid/content/Context;Landroid/content/ComponentName;)I
    .locals 1

    sget-object v0, Lcom/zui/launcher/widget/custom/CustomWidgetParser;->b:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/widget/custom/CustomWidgetParser;->b(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lcom/zui/launcher/widget/custom/CustomWidgetParser;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    sget-object p1, Lcom/zui/launcher/widget/custom/CustomWidgetParser;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    rsub-int/lit8 p0, p0, -0x64

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getWidgetProvider(Landroid/content/Context;I)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;
    .locals 2

    sget-object v0, Lcom/zui/launcher/widget/custom/CustomWidgetParser;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/widget/custom/CustomWidgetParser;->a:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/widget/custom/CustomWidgetParser;->b(Landroid/content/Context;)V

    :cond_1
    sget-object p0, Lcom/zui/launcher/widget/custom/CustomWidgetParser;->b:Landroid/util/SparseArray;

    rsub-int/lit8 p1, p1, -0x64

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    sget-object p1, Lcom/zui/launcher/widget/custom/CustomWidgetParser;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
