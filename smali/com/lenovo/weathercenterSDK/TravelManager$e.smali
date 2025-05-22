.class Lcom/lenovo/weathercenterSDK/TravelManager$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/weathercenterSDK/TravelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Lcom/lenovo/weathercenterSDK/listener/TravelListener;

.field final synthetic g:Lcom/lenovo/weathercenterSDK/TravelManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/weathercenterSDK/TravelManager;ILjava/lang/String;Ljava/lang/String;IILcom/lenovo/weathercenterSDK/listener/TravelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->g:Lcom/lenovo/weathercenterSDK/TravelManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->a:I

    iput-object p3, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->c:Ljava/lang/String;

    iput p5, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->d:I

    iput p6, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->e:I

    iput-object p7, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->f:Lcom/lenovo/weathercenterSDK/listener/TravelListener;

    return-void
.end method

.method static synthetic a(Lcom/lenovo/weathercenterSDK/TravelManager$e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/lenovo/weathercenterSDK/TravelManager$e;)I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->d:I

    return p0
.end method

.method static synthetic c(Lcom/lenovo/weathercenterSDK/TravelManager$e;)I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->e:I

    return p0
.end method

.method static synthetic d(Lcom/lenovo/weathercenterSDK/TravelManager$e;)I
    .locals 0

    iget p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->a:I

    return p0
.end method

.method static synthetic e(Lcom/lenovo/weathercenterSDK/TravelManager$e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->g:Lcom/lenovo/weathercenterSDK/TravelManager;

    invoke-static {v0}, Lcom/lenovo/weathercenterSDK/TravelManager;->a(Lcom/lenovo/weathercenterSDK/TravelManager;)Lcom/lenovo/weathercenter/ITravelData;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->a:I

    iget-object v3, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->c:Ljava/lang/String;

    iget v5, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->d:I

    iget v6, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->e:I

    new-instance v7, Lcom/lenovo/weathercenterSDK/TravelManager$d;

    iget-object v0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->g:Lcom/lenovo/weathercenterSDK/TravelManager;

    iget-object p0, p0, Lcom/lenovo/weathercenterSDK/TravelManager$e;->f:Lcom/lenovo/weathercenterSDK/listener/TravelListener;

    invoke-direct {v7, v0, p0}, Lcom/lenovo/weathercenterSDK/TravelManager$d;-><init>(Lcom/lenovo/weathercenterSDK/TravelManager;Lcom/lenovo/weathercenterSDK/listener/TravelListener;)V

    invoke-interface/range {v1 .. v7}, Lcom/lenovo/weathercenter/ITravelData;->loadTraffic(ILjava/lang/String;Ljava/lang/String;IILcom/lenovo/weathercenter/ITravelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
