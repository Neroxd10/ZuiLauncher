.class public Lcom/amap/api/col/l3s/gd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/gd$a;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field private static b:Landroid/content/res/AssetManager; = null

.field private static c:Landroid/content/res/Resources; = null

.field private static d:Landroid/content/res/Resources; = null

.field private static e:Z = true

.field private static f:Landroid/content/Context; = null

.field private static g:Ljava/lang/String; = "amap_resource"

.field private static h:Ljava/lang/String; = "1_0_0"

.field private static i:Ljava/lang/String; = ".png"

.field private static j:Ljava/lang/String; = ".jar"

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Landroid/content/res/Resources$Theme;

.field private static p:Landroid/content/res/Resources$Theme;

.field private static q:Ljava/lang/reflect/Field;

.field private static r:Ljava/lang/reflect/Field;

.field private static s:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/col/l3s/gd;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amap/api/col/l3s/gd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amap/api/col/l3s/gd;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3s/gd;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/col/l3s/gd;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amap/api/col/l3s/gd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amap/api/col/l3s/gd;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3s/gd;->l:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/amap/api/col/l3s/gd;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amap/api/col/l3s/gd;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amap/api/col/l3s/gd;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3s/gd;->n:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/col/l3s/gd;->o:Landroid/content/res/Resources$Theme;

    sput-object v0, Lcom/amap/api/col/l3s/gd;->p:Landroid/content/res/Resources$Theme;

    sput-object v0, Lcom/amap/api/col/l3s/gd;->q:Ljava/lang/reflect/Field;

    sput-object v0, Lcom/amap/api/col/l3s/gd;->r:Ljava/lang/reflect/Field;

    sput-object v0, Lcom/amap/api/col/l3s/gd;->s:Landroid/app/Activity;

    const/4 v0, -0x1

    sput v0, Lcom/amap/api/col/l3s/gd;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/content/res/AssetManager;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.content.res.AssetManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/AssetManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "addAssetPath"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v6

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    const-string v1, "ResourcesUtil"

    const-string v2, "getAssetManager(String apkPath)"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method public static a()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3s/gd;->c:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    sget-object v0, Lcom/amap/api/col/l3s/gd;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/amap/api/col/l3s/gd;->a()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    sget-boolean v0, Lcom/amap/api/col/l3s/gd;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3s/gc;

    sget v2, Lcom/amap/api/col/l3s/gd;->a:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    sget v2, Lcom/amap/api/col/l3s/gd;->a:I

    :goto_0
    const-class v3, Lcom/amap/api/col/l3s/gd;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/amap/api/col/l3s/gc;-><init>(Landroid/content/Context;ILjava/lang/ClassLoader;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "ResourcesUtil"

    const-string v2, "selfInflate(Activity activity, int resource, ViewGroup root)"

    invoke-static {p0, v0, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_2
    return-object v1

    :catchall_1
    move-exception p0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    throw p0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/io/OutputStream;
    .locals 4

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/amap/api/col/l3s/gd;->m:Ljava/lang/String;

    sget-object v2, Lcom/amap/api/col/l3s/gd;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    sput-object p0, Lcom/amap/api/col/l3s/gd;->f:Landroid/content/Context;

    invoke-static {p0}, Lcom/amap/api/col/l3s/gd;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/col/l3s/gd;->m:Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amap/api/col/l3s/gd;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amap/api/col/l3s/gd;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amap/api/col/l3s/gd;->n:Ljava/lang/String;

    sget-boolean v1, Lcom/amap/api/col/l3s/gd;->e:Z

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lcom/amap/api/col/l3s/gd;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    sget-object v1, Lcom/amap/api/col/l3s/gd;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/amap/api/col/l3s/gd;->a(Ljava/lang/String;)Landroid/content/res/AssetManager;

    move-result-object v1

    sput-object v1, Lcom/amap/api/col/l3s/gd;->b:Landroid/content/res/AssetManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v2}, Landroid/util/DisplayMetrics;->setToDefaults()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    new-instance v3, Landroid/content/res/Resources;

    invoke-direct {v3, v1, v2, p0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    sput-object v3, Lcom/amap/api/col/l3s/gd;->c:Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    :cond_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "LBS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v0, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    :cond_3
    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    :cond_4
    return-object v0

    :goto_1
    if-nez v0, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    :cond_5
    throw v1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3s/gd;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3s/gd;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 10

    const-string v0, "copyResourceJarToAppFilesDir(Context ctx)"

    const-string v1, "ResourcesUtil"

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amap/api/col/l3s/gd;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amap/api/col/l3s/gd;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amap/api/col/l3s/gd;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amap/api/col/l3s/gd;->n:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    sget-object v4, Lcom/amap/api/col/l3s/gd;->l:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance p0, Ljava/io/File;

    sget-object v4, Lcom/amap/api/col/l3s/gd;->n:Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v7, 0x1

    if-eqz p0, :cond_0

    int-to-long v8, v6

    cmp-long p0, v4, v8

    if-nez p0, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p0, v7

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_2

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {p0, v1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v7

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/amap/api/col/l3s/gd;->e()V

    invoke-static {v3}, Lcom/amap/api/col/l3s/gd;->a(Ljava/io/InputStream;)Ljava/io/OutputStream;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {p0, v1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return v7

    :catchall_0
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {p0, v1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {p0, v1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_5
    return v2

    :catchall_1
    move-exception p0

    if-eqz v3, :cond_6

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v2, v1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_6
    throw p0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3s/gd;->g:Ljava/lang/String;

    return-object v0
.end method

.method private static e()V
    .locals 4

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/amap/api/col/l3s/gd;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/col/l3s/gd$a;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/gd$a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
