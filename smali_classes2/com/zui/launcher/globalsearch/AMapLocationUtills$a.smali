.class Lcom/zui/launcher/globalsearch/AMapLocationUtills$a;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/AMapLocationUtills;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/AMapLocationUtills;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/AMapLocationUtills;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills$a;->a:Lcom/zui/launcher/globalsearch/AMapLocationUtills;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills$a;->a:Lcom/zui/launcher/globalsearch/AMapLocationUtills;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->a(Lcom/zui/launcher/globalsearch/AMapLocationUtills;)Landroid/location/LocationManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills$a;->a:Lcom/zui/launcher/globalsearch/AMapLocationUtills;

    invoke-static {p1}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->a(Lcom/zui/launcher/globalsearch/AMapLocationUtills;)Landroid/location/LocationManager;

    move-result-object p1

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gps enabled? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->printLog(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/AMapLocationUtills$a;->a:Lcom/zui/launcher/globalsearch/AMapLocationUtills;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->startLocation(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
