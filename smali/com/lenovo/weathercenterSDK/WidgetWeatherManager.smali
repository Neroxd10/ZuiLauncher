.class public Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;,
        Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;
    }
.end annotation


# static fields
.field public static DEBUG:Z = true

.field private static final r:[B

.field private static s:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Z

.field private g:Lcom/lenovo/weathercenter/IWidgetWeather;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProvider;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/lenovo/weathercenter/IWidgetWeatherListener;

.field private n:Landroid/content/ServiceConnection;

.field private o:Landroid/os/IBinder$DeathRecipient;

.field p:Landroid/content/BroadcastReceiver;

.field private q:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->r:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->c:Ljava/util/concurrent/ExecutorService;

    iput-boolean v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->e:Z

    iput-boolean v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->f:Z

    iput-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->g:Lcom/lenovo/weathercenter/IWidgetWeather;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->h:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->l:Ljava/util/List;

    new-instance v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$a;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$a;-><init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->m:Lcom/lenovo/weathercenter/IWidgetWeatherListener;

    new-instance v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$b;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$b;-><init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->n:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$c;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$c;-><init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->o:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$d;

    invoke-direct {v0, p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$d;-><init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->p:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$e;-><init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->q:Landroid/os/Handler;

    const/16 v0, 0xbb9

    iput v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a:I

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.zui.weather"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->G()V

    :goto_0
    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->s()V

    :cond_1
    return-void
.end method

.method private A(ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u901a\u77e5Widget: onLocationWeatherchanged, city:\u6ce8\u518c\u76d1\u542c\u7684size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;

    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;->onLocationWeatherchanged(ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private B(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;)V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->i:Ljava/util/Map;

    if-ne p1, v0, :cond_0

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private declared-synchronized C(ILcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    iget v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a:I

    const/16 v1, 0xbbc

    if-eq v0, v1, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WidgetWeatherManager: add listener "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/XLog;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WidgetWeatherManager: remove listener "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized D(ILcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    iget v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a:I

    const/16 v1, 0xbbc

    if-eq v0, v1, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->k:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "WeatherSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetWeatherManager: add listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mContextsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "  context: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->k:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WidgetWeatherManager: remove listener "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/XLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized E(ILcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;Landroid/appwidget/AppWidgetProvider;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_2

    :try_start_0
    iget v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a:I

    const/16 v1, 0xbbc

    if-eq v0, v1, :cond_2

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->l:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "WeatherSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetWeatherManager: add listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mContextsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  listener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "  context: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->l:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WidgetWeatherManager: remove listener "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/XLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private F(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->g:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->f:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->j:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->t(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;)Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;

    move-result-object v1

    iget-object v2, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->b:Lcom/lenovo/weathercenter/entity/CityDetail;

    invoke-direct {p0, v2}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->y(Lcom/lenovo/weathercenter/entity/CityDetail;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-direct {p0, v3, p1, v2, v1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->A(ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->B(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->I(Ljava/lang/String;Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;)V

    goto :goto_0

    :cond_1
    const-string p0, "--------WeatherAll item is null-------------"

    invoke-static {p0}, Lcom/lenovo/weathercenterSDK/XLog;->i(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private G()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->d:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->e:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->e:Z

    :cond_0
    return-void
.end method

.method private declared-synchronized H()Ljava/lang/Runnable;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->h:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private I(Ljava/lang/String;Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;)V
    .locals 2

    iget v0, p2, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->k:I

    if-gtz v0, :cond_0

    const-string v0, "---------> \u8c03\u7528loopAppWidgetLister, \u8bbe\u4e3a null"

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->i(Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->A(ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->B(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;)V

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->f:Z

    if-nez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->f:Z

    iget-object p2, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->q:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0x14

    iput p1, p2, Landroid/os/Message;->what:I

    const-string p1, "mHandler.sendMessageDelayed  --- 416"

    invoke-static {p1}, Lcom/lenovo/weathercenterSDK/XLog;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->q:Landroid/os/Handler;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized J()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->c:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a:I

    const/16 v1, 0xbbb

    if-ne v0, v1, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->H()Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private K()Landroid/content/Intent;
    .locals 3

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "WeatherCenterWidgetDataService"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.lenovo.weathercenter"

    const-string v2, "com.lenovo.weathercenter.WidgetDataService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic a(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;IILcom/lenovo/weathercenter/entity/CityDetail;Lcom/lenovo/weathercenter/entity/Air;Lcom/lenovo/weathercenter/entity/Condition;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->u(IILcom/lenovo/weathercenter/entity/CityDetail;Lcom/lenovo/weathercenter/entity/Air;Lcom/lenovo/weathercenter/entity/Condition;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->s()V

    return-void
.end method

.method static synthetic d(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->x(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic e(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->J()V

    return-void
.end method

.method static synthetic f(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;ILandroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->z(ILandroid/os/Message;)V

    return-void
.end method

.method static synthetic g(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->i:Ljava/util/Map;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;
    .locals 2

    sget-object v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->s:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->r:[B

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->s:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    invoke-direct {v1, p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->s:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->s:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    return-object p0
.end method

.method static synthetic h(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->B(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;)V

    return-void
.end method

.method static synthetic i(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->f:Z

    return p1
.end method

.method static synthetic j(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->A(ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;)V

    return-void
.end method

.method static synthetic k(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;I)I
    .locals 0

    iput p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a:I

    return p1
.end method

.method static synthetic l(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->q:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic m(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Lcom/lenovo/weathercenter/IWidgetWeather;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->g:Lcom/lenovo/weathercenter/IWidgetWeather;

    return-object p0
.end method

.method static synthetic n(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;Lcom/lenovo/weathercenter/IWidgetWeather;)Lcom/lenovo/weathercenter/IWidgetWeather;
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->g:Lcom/lenovo/weathercenter/IWidgetWeather;

    return-object p1
.end method

.method static synthetic o(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->o:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic p(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic q(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;)Lcom/lenovo/weathercenter/IWidgetWeatherListener;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->m:Lcom/lenovo/weathercenter/IWidgetWeatherListener;

    return-object p0
.end method

.method private declared-synchronized r(Ljava/lang/Runnable;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->b:I

    iget v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a:I

    const/16 v2, 0xbb9

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->s()V

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a:I

    const/16 v2, 0xbbb

    if-eq v1, v2, :cond_1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    instance-of v0, p1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    instance-of v2, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;

    iget v2, v2, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->b:I

    move-object v3, v1

    check-cast v3, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;

    iget v3, v3, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->b:I

    if-ne v2, v3, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;

    iget v2, v2, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    move-object v2, p1

    check-cast v2, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;

    iget v2, v2, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->b:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;

    iget-object v2, v2, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->a:Lcom/lenovo/weathercenter/entity/CityDetail;

    check-cast v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;

    iget-object v1, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;->a:Lcom/lenovo/weathercenter/entity/CityDetail;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v1, :cond_2

    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private s()V
    .locals 4

    const-string v0, "WidgetWeatherManager bindService...."

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/XLog;->i(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->K()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->n:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xbba

    iput v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private t(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;)Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;
    .locals 10

    new-instance p0, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;

    invoke-direct {p0}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;-><init>()V

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->c:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/weathercenter/entity/Forecast;

    invoke-virtual {v0}, Lcom/lenovo/weathercenter/entity/Forecast;->getMaxTemperature()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->setMaxTemperature(I)V

    invoke-virtual {v0}, Lcom/lenovo/weathercenter/entity/Forecast;->getMinTemperature()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->setMinTemperature(I)V

    invoke-virtual {v0}, Lcom/lenovo/weathercenter/entity/Forecast;->getWeatherIdDay()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->setWeatherIdDay(I)V

    invoke-virtual {v0}, Lcom/lenovo/weathercenter/entity/Forecast;->getWeatherIdNight()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->setWeatherIdNight(I)V

    invoke-virtual {v0}, Lcom/lenovo/weathercenter/entity/Forecast;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->setServerId(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->b:Lcom/lenovo/weathercenter/entity/CityDetail;

    invoke-virtual {v2}, Lcom/lenovo/weathercenter/entity/CityDetail;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->setmTimeZone(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/lenovo/weathercenter/entity/Forecast;->getSunRiseTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v0}, Lcom/lenovo/weathercenter/entity/Forecast;->getSunSetTime()J

    move-result-wide v8

    mul-long/2addr v8, v6

    cmp-long v0, v2, v8

    if-gez v0, :cond_0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->setIsday(Z)V

    :cond_1
    iget-object v0, p1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->d:Lcom/lenovo/weathercenter/entity/Condition;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lenovo/weathercenter/entity/Condition;->getHumidity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->setHumidity(I)V

    iget-object v0, p1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->d:Lcom/lenovo/weathercenter/entity/Condition;

    invoke-virtual {v0}, Lcom/lenovo/weathercenter/entity/Condition;->getTemperature()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->setTemperature(I)V

    iget-object v0, p1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->d:Lcom/lenovo/weathercenter/entity/Condition;

    invoke-virtual {v0}, Lcom/lenovo/weathercenter/entity/Condition;->getWeatherID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->setWeatherID(I)V

    iget-object v0, p1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->d:Lcom/lenovo/weathercenter/entity/Condition;

    invoke-virtual {v0}, Lcom/lenovo/weathercenter/entity/Condition;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->setServerId(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->e:Lcom/lenovo/weathercenter/entity/Air;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/lenovo/weathercenter/entity/Air;->getValuePM25()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->setValuePM25(I)V

    iget-object v0, p1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->e:Lcom/lenovo/weathercenter/entity/Air;

    invoke-virtual {v0}, Lcom/lenovo/weathercenter/entity/Air;->getValuePM10()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->setValuePM10(I)V

    iget-object v0, p1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->e:Lcom/lenovo/weathercenter/entity/Air;

    invoke-virtual {v0}, Lcom/lenovo/weathercenter/entity/Air;->getValueAQI()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->setValueAQI(I)V

    iget-object p1, p1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->e:Lcom/lenovo/weathercenter/entity/Air;

    invoke-virtual {p1}, Lcom/lenovo/weathercenter/entity/Air;->getServerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->setServerId(Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method

.method private u(IILcom/lenovo/weathercenter/entity/CityDetail;Lcom/lenovo/weathercenter/entity/Air;Lcom/lenovo/weathercenter/entity/Condition;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/lenovo/weathercenter/entity/CityDetail;",
            "Lcom/lenovo/weathercenter/entity/Air;",
            "Lcom/lenovo/weathercenter/entity/Condition;",
            "Ljava/util/List<",
            "Lcom/lenovo/weathercenter/entity/Forecast;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/lenovo/weathercenter/entity/CityDetail;->getServerId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;-><init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$a;)V

    iput-object p3, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->b:Lcom/lenovo/weathercenter/entity/CityDetail;

    iput-object v0, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->a:Ljava/lang/String;

    iget-object p3, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->q:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput-object p6, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->c:Ljava/util/List;

    const/16 p1, 0x13

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x12

    iput p1, p3, Landroid/os/Message;->what:I

    iput-object p5, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->d:Lcom/lenovo/weathercenter/entity/Condition;

    goto :goto_1

    :pswitch_2
    iput-object p4, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->e:Lcom/lenovo/weathercenter/entity/Air;

    const/16 p1, 0x11

    :goto_0
    iput p1, p3, Landroid/os/Message;->what:I

    :goto_1
    iput-object v1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, p3, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->q:Landroid/os/Handler;

    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private v()V
    .locals 2

    iget v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a:I

    const/16 v1, 0xbbb

    if-eq v0, v1, :cond_0

    const-string v0, "WeatherSDK"

    const-string v1, "Service\u672a\u8fde\u63a5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a:I

    const/16 v1, 0xbb9

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->s()V

    :cond_0
    return-void
.end method

.method private declared-synchronized w(ILjava/lang/Runnable;Lcom/lenovo/weathercenter/entity/CityDetail;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->g:Lcom/lenovo/weathercenter/IWidgetWeather;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->g:Lcom/lenovo/weathercenter/IWidgetWeather;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->g:Lcom/lenovo/weathercenter/IWidgetWeather;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Lcom/lenovo/weathercenter/IWidgetWeather;->setDefaultCity(Ljava/lang/String;Lcom/lenovo/weathercenter/entity/CityDetail;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/16 p3, 0x9

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->g:Lcom/lenovo/weathercenter/IWidgetWeather;

    iget-object p3, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->d:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/lenovo/weathercenter/IWidgetWeather;->getDefaultCityWeather(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    const/16 p3, 0xbb9

    :try_start_2
    iput p3, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a:I

    invoke-direct {p0, p2}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->r(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->r(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private x(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->getDefaultWeather()V

    :cond_0
    return-void
.end method

.method private y(Lcom/lenovo/weathercenter/entity/CityDetail;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/lenovo/weathercenterSDK/utils/SDKUnitTranslation;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "zh-hant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/lenovo/weathercenter/entity/CityDetail;->getCityNameTW()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, "zh-CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/lenovo/weathercenter/entity/CityDetail;->getCityNameCN()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/lenovo/weathercenter/entity/CityDetail;->getCityNameEN()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private z(ILandroid/os/Message;)V
    .locals 3

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->i:Ljava/util/Map;

    iget-object v2, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;

    if-nez v1, :cond_1

    new-instance v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;-><init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$a;)V

    :cond_1
    iget-object v2, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->a:Ljava/lang/String;

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->c:Ljava/util/List;

    iput-object p1, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->c:Ljava/util/List;

    iput-boolean v2, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->f:Z

    goto :goto_0

    :pswitch_1
    iget-object p1, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->d:Lcom/lenovo/weathercenter/entity/Condition;

    iput-object p1, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->d:Lcom/lenovo/weathercenter/entity/Condition;

    iput-boolean v2, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->g:Z

    goto :goto_0

    :pswitch_2
    iget-object p1, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->e:Lcom/lenovo/weathercenter/entity/Air;

    iput-object p1, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->e:Lcom/lenovo/weathercenter/entity/Air;

    iput-boolean v2, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->h:Z

    :goto_0
    iget-object p1, v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->b:Lcom/lenovo/weathercenter/entity/CityDetail;

    if-eqz p1, :cond_2

    iput-object p1, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->b:Lcom/lenovo/weathercenter/entity/CityDetail;

    :cond_2
    iget p1, p2, Landroid/os/Message;->arg1:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    iput-boolean v2, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->j:Z

    :cond_3
    iget-object p1, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->a:Ljava/lang/String;

    invoke-direct {p0, v2, p1, v1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->B(ILjava/lang/String;Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;)V

    iget-object p1, v1, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->F(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->d:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->g:Lcom/lenovo/weathercenter/IWidgetWeather;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->g:Lcom/lenovo/weathercenter/IWidgetWeather;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->m:Lcom/lenovo/weathercenter/IWidgetWeatherListener;

    invoke-interface {v1, v2, v3}, Lcom/lenovo/weathercenter/IWidgetWeather;->unregister(Ljava/lang/String;Lcom/lenovo/weathercenter/IWidgetWeatherListener;)V

    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->g:Lcom/lenovo/weathercenter/IWidgetWeather;

    :cond_0
    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->n:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/16 v1, 0xbbc

    iput v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->a:I

    iget-boolean v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->e:Z

    :cond_1
    iput-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->d:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    sput-object v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->s:Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    return-void
.end method

.method public getCityNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->i:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->b:Lcom/lenovo/weathercenter/entity/CityDetail;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/lenovo/weathercenter/entity/CityDetail;->getCityNameCN()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    iget-object v1, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->b:Lcom/lenovo/weathercenter/entity/CityDetail;

    invoke-virtual {v1}, Lcom/lenovo/weathercenter/entity/CityDetail;->getCityNameTW()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x2

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$g;->b:Lcom/lenovo/weathercenter/entity/CityDetail;

    invoke-virtual {p0}, Lcom/lenovo/weathercenter/entity/CityDetail;->getCityNameEN()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultWeather()V
    .locals 3

    invoke-direct {p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->v()V

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;-><init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;ILcom/lenovo/weathercenter/entity/CityDetail;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->w(ILjava/lang/Runnable;Lcom/lenovo/weathercenter/entity/CityDetail;)V

    :cond_0
    return-void
.end method

.method public registWeatherListener(Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->C(ILcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;)V

    return-void
.end method

.method public registWeatherListener2(Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registWeatherListener2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " contains: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->k:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WeatherSDK"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->k:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->k:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->D(ILcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public registWeatherListener3(Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;Landroid/appwidget/AppWidgetProvider;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registWeatherListener3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " contains: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->l:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WeatherSDK"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->k:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->E(ILcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;Landroid/appwidget/AppWidgetProvider;)V

    :cond_1
    return-void
.end method

.method public setDefaultCity(Lcom/lenovo/weathercenter/entity/CityDetail;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/lenovo/weathercenter/entity/CityDetail;

    invoke-direct {p1}, Lcom/lenovo/weathercenter/entity/CityDetail;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.zui.weather"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1, p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager$f;-><init>(Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;ILcom/lenovo/weathercenter/entity/CityDetail;)V

    invoke-direct {p0, v1, v0, p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->w(ILjava/lang/Runnable;Lcom/lenovo/weathercenter/entity/CityDetail;)V

    :cond_1
    return-void
.end method

.method public unRegistWeatherListener(Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;)V
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->C(ILcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;)V

    return-void
.end method
