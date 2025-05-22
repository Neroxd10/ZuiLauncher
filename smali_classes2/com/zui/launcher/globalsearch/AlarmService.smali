.class public Lcom/zui/launcher/globalsearch/AlarmService;
.super Landroid/app/Service;
.source ""


# static fields
.field private static final d:Ljava/lang/Long;


# instance fields
.field private a:Ljava/util/Timer;

.field b:Lcom/zui/launcher/globalsearch/AMapLocationUtills;

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/globalsearch/AlarmService;->d:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/zui/launcher/globalsearch/AlarmService$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/globalsearch/AlarmService$b;-><init>(Lcom/zui/launcher/globalsearch/AlarmService;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/AlarmService;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zui.launcher.close_service"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/AlarmService;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 7

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/zui/launcher/globalsearch/AMapLocationUtills;

    invoke-direct {v0}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/AlarmService;->b:Lcom/zui/launcher/globalsearch/AMapLocationUtills;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/AlarmService;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/globalsearch/AlarmService;->a:Ljava/util/Timer;

    new-instance v2, Lcom/zui/launcher/globalsearch/AlarmService$a;

    invoke-direct {v2, p0}, Lcom/zui/launcher/globalsearch/AlarmService$a;-><init>(Lcom/zui/launcher/globalsearch/AlarmService;)V

    const-wide/16 v3, 0x0

    sget-object v0, Lcom/zui/launcher/globalsearch/AlarmService;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/AlarmService;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/AlarmService;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/AlarmService;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/AlarmService;->b:Lcom/zui/launcher/globalsearch/AMapLocationUtills;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->unRegisterGpsMonitor(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/AlarmService;->b:Lcom/zui/launcher/globalsearch/AMapLocationUtills;

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/AMapLocationUtills;->recycler()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/AlarmService;->b:Lcom/zui/launcher/globalsearch/AMapLocationUtills;

    :cond_1
    return-void
.end method
