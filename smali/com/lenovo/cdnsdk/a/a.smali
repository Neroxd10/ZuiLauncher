.class public final Lcom/lenovo/cdnsdk/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/lenovo/cdnsdk/a/a;

.field private static b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cdn_sdk"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/lenovo/cdnsdk/a/a;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/lenovo/cdnsdk/a/a;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/lenovo/cdnsdk/a/a;
    .locals 2

    const-class v0, Lcom/lenovo/cdnsdk/a/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/cdnsdk/a/a;->a:Lcom/lenovo/cdnsdk/a/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/cdnsdk/a/a;

    invoke-direct {v1, p0}, Lcom/lenovo/cdnsdk/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/lenovo/cdnsdk/a/a;->a:Lcom/lenovo/cdnsdk/a/a;

    :cond_0
    sget-object p0, Lcom/lenovo/cdnsdk/a/a;->a:Lcom/lenovo/cdnsdk/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/lenovo/cdnsdk/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/lenovo/cdnsdk/a/a;->b(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private static b(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/lenovo/cdnsdk/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/lenovo/cdnsdk/a/a;->b(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
