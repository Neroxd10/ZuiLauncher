.class Lcom/zui/launcher/Launcher$w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->getWeatherDefaultData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$w;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "---------->getWeatherDefaultData---- "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/launcher/Launcher$w;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/LauncherApplication;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherApplication;->getWeatherManager()Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    return-void
.end method
