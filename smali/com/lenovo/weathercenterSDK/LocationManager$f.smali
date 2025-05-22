.class Lcom/lenovo/weathercenterSDK/LocationManager$f;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private a:Lcom/lenovo/weathercenterSDK/LocationManager$g;

.field final synthetic b:Lcom/lenovo/weathercenterSDK/LocationManager;


# direct methods
.method private constructor <init>(Lcom/lenovo/weathercenterSDK/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$f;->b:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/weathercenterSDK/LocationManager;Lcom/lenovo/weathercenterSDK/LocationManager$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/weathercenterSDK/LocationManager$f;-><init>(Lcom/lenovo/weathercenterSDK/LocationManager;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/lenovo/weathercenterSDK/LocationManager$g;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/LocationManager$f;->a:Lcom/lenovo/weathercenterSDK/LocationManager$g;

    return-void
.end method

.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$f;->b:Lcom/lenovo/weathercenterSDK/LocationManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/LocationManager;->d(Lcom/lenovo/weathercenterSDK/LocationManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/utils/PermissionUtils;->locationNetWorkEnable(Landroid/content/Context;)I

    move-result v0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/LocationManager$f;->a:Lcom/lenovo/weathercenterSDK/LocationManager$g;

    invoke-interface {p0, v0}, Lcom/lenovo/weathercenterSDK/LocationManager$g;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
