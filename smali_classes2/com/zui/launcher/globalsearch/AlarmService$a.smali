.class Lcom/zui/launcher/globalsearch/AlarmService$a;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/globalsearch/AlarmService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/globalsearch/AlarmService;


# direct methods
.method constructor <init>(Lcom/zui/launcher/globalsearch/AlarmService;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/AlarmService$a;->a:Lcom/zui/launcher/globalsearch/AlarmService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/AlarmService$a;->a:Lcom/zui/launcher/globalsearch/AlarmService;

    iget-object v1, v0, Lcom/zui/launcher/globalsearch/AlarmService;->b:Lcom/zui/launcher/globalsearch/AMapLocationUtills;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/launcher/globalsearch/AMapLocationUtills;

    invoke-direct {v1}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;-><init>()V

    iput-object v1, v0, Lcom/zui/launcher/globalsearch/AlarmService;->b:Lcom/zui/launcher/globalsearch/AMapLocationUtills;

    :cond_0
    sget-object v0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->TAG:Ljava/lang/String;

    const-string v1, "TimerTask  execute  ---------------------   "

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/AlarmService$a;->a:Lcom/zui/launcher/globalsearch/AlarmService;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/AlarmService;->b:Lcom/zui/launcher/globalsearch/AMapLocationUtills;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->startLocation(Landroid/content/Context;)V

    return-void
.end method
