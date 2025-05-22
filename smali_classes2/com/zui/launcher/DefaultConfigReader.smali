.class public Lcom/zui/launcher/DefaultConfigReader;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final FILE_NAME:Ljava/lang/String; = "zui_launcher_config.xml"

.field public static final KEY_DEFAULT_DESKTOP_STYLE:Ljava/lang/String; = "default_desktop_style"

.field public static final KEY_HAS_BLUE_POINT:Ljava/lang/String; = "has_blue_point"

.field public static final KEY_IS_LAYOUT_LOCKED:Ljava/lang/String; = "is_layout_locked"

.field public static final KEY_OVERLAY_VERSION:Ljava/lang/String; = "overlay_screen_version"

.field public static final KEY_USE_ANDROID_DEFAULT_LAYOUT:Ljava/lang/String; = "use_android_default_layout"

.field public static final KEY_USE_BLUE_POINT:Ljava/lang/String; = "use_blue_point"

.field public static final KEY_USE_DUMMY_ICON:Ljava/lang/String; = "use_dummy_icon"

.field public static final KEY_VERSION_FOR_JD:Ljava/lang/String; = "version_for_jd"

.field public static final KEY_VERSION_FOR_ROW:Ljava/lang/String; = "version_for_row"

.field public static final NOT_USE_DUMMY_ICON_ALL:I = 0x0

.field public static final OVERLAY_VERSION_ANDROID:Ljava/lang/String; = "google"

.field public static final OVERLAY_VERSION_ZUI:Ljava/lang/String; = "zui"

.field public static final PHONE_DR:Ljava/lang/String; = "/system/media/"

.field public static final TAG_ITEM:Ljava/lang/String; = "item"

.field public static final USE_DUMMY_ICON_ALL:I = 0x1

.field public static final USE_DUMMY_ICON_IN_STANDARD_DESKTOP:I = 0x2

.field private static a:Lcom/zui/launcher/DefaultConfigReader;

.field public static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zui/launcher/DefaultConfigReader;->mMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/zui/launcher/DefaultConfigReader;->a:Lcom/zui/launcher/DefaultConfigReader;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/zui/launcher/DefaultConfigReader;->c(Landroid/content/Context;)Z

    return-void
.end method

.method private a(Ljava/io/InputStream;)Z
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    :try_start_0
    const-string v1, "UTF-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    sget-object v1, Lcom/zui/launcher/DefaultConfigReader;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_3

    :cond_2
    if-eq v2, v4, :cond_3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v2, "item"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "name"

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "value"

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/zui/launcher/DefaultConfigReader;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v4

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return p0

    :catch_3
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return p0

    :goto_4
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    throw p0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 3

    new-instance p1, Ljava/io/File;

    const-string v0, "/system/media/zui_launcher_config.xml"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v2}, Lcom/zui/launcher/DefaultConfigReader;->a(Ljava/io/InputStream;)Z

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return v1

    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :cond_2
    :goto_3
    throw p0
.end method

.method private c(Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/DefaultConfigReader;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zui/launcher/DefaultConfigReader;
    .locals 1

    sget-object v0, Lcom/zui/launcher/DefaultConfigReader;->a:Lcom/zui/launcher/DefaultConfigReader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/DefaultConfigReader;

    invoke-direct {v0, p0}, Lcom/zui/launcher/DefaultConfigReader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zui/launcher/DefaultConfigReader;->a:Lcom/zui/launcher/DefaultConfigReader;

    :cond_0
    sget-object p0, Lcom/zui/launcher/DefaultConfigReader;->a:Lcom/zui/launcher/DefaultConfigReader;

    return-object p0
.end method


# virtual methods
.method public getConfigMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/zui/launcher/DefaultConfigReader;->mMap:Ljava/util/HashMap;

    return-object p0
.end method
