.class public Lcom/zui/launcher/DownloadSpan;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/DownloadSpan$ComparatorValues;,
        Lcom/zui/launcher/DownloadSpan$l;,
        Lcom/zui/launcher/DownloadSpan$LOG;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_FILE:Ljava/lang/String; = "dummy_download_files"

.field public static final LOGTAG:Ljava/lang/String; = "Launcher.DownloadSpan"

.field public static final MIMETYPE:Ljava/lang/String; = ".apk"

.field public static final PARENT_DIR:Ljava/lang/String; = "/.ZuiDesktop/dummyApks"

.field public static final PREFS_KEY_DOWNLOADURL:Ljava/lang/String; = "_appurl"

.field public static final PREFS_KEY_FILE:Ljava/lang/String; = "_filepath"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/zui/launcher/ItemInfo;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/zui/launcher/Launcher;

.field private g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/DownloadSpan$l;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private k:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/content/BroadcastReceiver;

.field private n:I

.field private o:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->i:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/zui/launcher/DownloadSpan$c;

    invoke-direct {v0, p0}, Lcom/zui/launcher/DownloadSpan$c;-><init>(Lcom/zui/launcher/DownloadSpan;)V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->m:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x2

    iput v0, p0, Lcom/zui/launcher/DownloadSpan;->n:I

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.kukool.ACTION_SILIENT_INSTALL_RESULT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.zui.launcher.auto_install_result"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->m:Landroid/content/BroadcastReceiver;

    const-string v2, "com.zui.launcher.permission.RECEIVE_LAUNCH_BROADCASTS"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan;->l:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan;->o:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private A(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/networksdk/MD5Util;->md5To16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Lcom/zui/launcher/DownloadSpan;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download file ========"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    if-nez v5, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    const p1, 0x7f12033d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->X()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addToDownloadList mDownloadingPackages size ========"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/DownloadSpan;->F(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/zui/launcher/DownloadSpan;->R(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_5
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot download without url!!"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "  , "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->e(Ljava/lang/String;)V

    return-void
.end method

.method private B(Ljava/lang/String;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    iget-object p2, p0, Lcom/zui/launcher/DownloadSpan;->k:Ljava/util/LinkedList;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/DownloadSpan;->k:Ljava/util/LinkedList;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->k:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private C(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    new-instance v1, Lcom/zui/launcher/DownloadSpan$h;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/DownloadSpan$h;-><init>(Lcom/zui/launcher/DownloadSpan;ZLjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/NetWorkUtil;->doByNetworkInfo(Landroid/content/Context;Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;)V

    return-void
.end method

.method private D(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->l:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->l:Ljava/util/LinkedHashMap;

    :cond_0
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_1
    const/4 v0, 0x3

    if-ge p1, v0, :cond_2

    invoke-direct {p0, p2}, Lcom/zui/launcher/DownloadSpan;->p0(Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->l:Ljava/util/LinkedHashMap;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private E(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->W(Lcom/zui/launcher/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/Launcher;->setRecommendInfosReady(Ljava/lang/String;Z)V

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->X()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDownloadingPackages size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/zui/launcher/DownloadSpan;->F(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add to downloading list : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan;->S(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "duplicate search, ignore~ : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    return-void
.end method

.method private F(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add to waiting list : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p3, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    :cond_1
    iget-object v7, p0, Lcom/zui/launcher/DownloadSpan;->i:Ljava/util/LinkedHashMap;

    new-instance v8, Lcom/zui/launcher/DownloadSpan$l;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/DownloadSpan$l;-><init>(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, p2, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz p4, :cond_2

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->W(Lcom/zui/launcher/ItemInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x1

    invoke-virtual {p4, p1, p5}, Lcom/zui/launcher/Launcher;->setRecommendInfosReady(Ljava/lang/String;Z)V

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/zui/launcher/DownloadSpan;->getDownloadProgress(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 p4, 0x0

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p2, p1, p3}, Lcom/zui/launcher/DownloadSpan;->d0(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addToWaitingList, duplicate item~~~ : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    return-void
.end method

.method private G()V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    new-instance v1, Lcom/zui/launcher/DownloadSpan$k;

    invoke-direct {v1, p0}, Lcom/zui/launcher/DownloadSpan$k;-><init>(Lcom/zui/launcher/DownloadSpan;)V

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/NetWorkUtil;->doByNetworkInfo(Landroid/content/Context;Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private H()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoDownloadStartWhenWifiOn    mAutoDownloadedList ==== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    const-string v1, "java.util.Arrays.useLegacyMergeSort"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Lcom/zui/launcher/DownloadSpan$ComparatorValues;

    iget-object v2, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    invoke-direct {v1, v2}, Lcom/zui/launcher/DownloadSpan$ComparatorValues;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autodownload, packagename : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zui/launcher/DownloadSpan;->k:Ljava/util/LinkedList;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autodownload, WorkspaceItemInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/DownloadSpan;->downloadOrResumeApp(Lcom/zui/launcher/WorkspaceItemInfo;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private I(JLjava/lang/String;)V
    .locals 6

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p3}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v4, v3, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v3, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v3, v4}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v3}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private J()Z
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mounted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private K()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkWaitingList ========"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    new-instance v1, Lcom/zui/launcher/DownloadSpan$i;

    invoke-direct {v1, p0}, Lcom/zui/launcher/DownloadSpan$i;-><init>(Lcom/zui/launcher/DownloadSpan;)V

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/NetWorkUtil;->doByNetworkInfo(Landroid/content/Context;Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;)V

    return-void
.end method

.method private L()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/launcher/DownloadSpan;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/DownloadSpan$l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next ========"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zui/launcher/DownloadSpan;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/zui/launcher/DownloadSpan$l;->a(Lcom/zui/launcher/DownloadSpan$l;)Lcom/zui/launcher/ItemInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zui/launcher/DownloadSpan;->W(Lcom/zui/launcher/ItemInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/zui/launcher/Launcher;->setRecommendInfosReady(Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/zui/launcher/DownloadSpan$l;->a(Lcom/zui/launcher/DownloadSpan$l;)Lcom/zui/launcher/ItemInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/DownloadSpan;->q0(Lcom/zui/launcher/ItemInfo;)V

    :cond_0
    invoke-static {v2}, Lcom/zui/launcher/DownloadSpan$l;->b(Lcom/zui/launcher/DownloadSpan$l;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/zui/launcher/DownloadSpan$l;->d(Lcom/zui/launcher/DownloadSpan$l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/zui/launcher/DownloadSpan$l;->a(Lcom/zui/launcher/DownloadSpan$l;)Lcom/zui/launcher/ItemInfo;

    move-result-object v1

    invoke-static {v2}, Lcom/zui/launcher/DownloadSpan$l;->c(Lcom/zui/launcher/DownloadSpan$l;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/zui/launcher/DownloadSpan;->a0(Ljava/lang/String;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    move-result-object v0

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object v1

    invoke-static {v2}, Lcom/zui/launcher/DownloadSpan$l;->d(Lcom/zui/launcher/DownloadSpan$l;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/zui/launcher/networksdk/DownloadManager;->resume(Ljava/lang/String;Lcom/zui/launcher/networksdk/download/DownloadTaskListener;)V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-static {v2}, Lcom/zui/launcher/DownloadSpan$l;->d(Lcom/zui/launcher/DownloadSpan$l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/zui/launcher/DownloadSpan$l;->a(Lcom/zui/launcher/DownloadSpan$l;)Lcom/zui/launcher/ItemInfo;

    move-result-object v0

    invoke-static {v2}, Lcom/zui/launcher/DownloadSpan$l;->d(Lcom/zui/launcher/DownloadSpan$l;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/DownloadSpan;->S(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private M(Landroid/net/NetworkInfo;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/zui/launcher/networksdk/NetWorkUtil;->isWifiOn(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/zui/launcher/DownloadSpan;->resumeTask(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/zui/launcher/networksdk/NetWorkUtil;->isMobileOn(Landroid/net/NetworkInfo;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/zui/launcher/DownloadSpan;->addTask(Lcom/zui/launcher/ItemInfo;)V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p0, p2, v0}, Lcom/zui/launcher/Launcher;->showHintDialog(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    const p2, 0x7f12032c

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p3}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private N()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->o:Ljava/util/LinkedHashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    return-void
.end method

.method private O()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->l:Ljava/util/LinkedHashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->k:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/DownloadSpan;->removeAutoDownload(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private R(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->q0(Lcom/zui/launcher/ItemInfo;)V

    invoke-static {v0, p3}, Lcom/zui/launcher/DownloadSpan;->getDownloadProgress(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloading  progress  ========"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, p2, v0, p3}, Lcom/zui/launcher/DownloadSpan;->d0(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p4}, Lcom/zui/launcher/DownloadSpan;->T(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/zui/launcher/DownloadSpan;->n0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/zui/launcher/DownloadSpan;->Z(Ljava/lang/String;)Z

    move-result v7

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadfile+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Launcher.Download"

    const-string v3, "start"

    invoke-static {v2, v3, v0, v1}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    invoke-direct {v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setId(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setUrl(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setFileName(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object p4

    const-string v0, "application/vnd.android.package-archive;charset=utf-8"

    invoke-virtual {p4, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setFileType(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object p4

    new-instance v0, Lcom/zui/launcher/DownloadSpan$g;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/zui/launcher/DownloadSpan$g;-><init>(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p4, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setListener(Lcom/zui/launcher/networksdk/download/DownloadTaskListener;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->build()Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object p0

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/networksdk/DownloadManager;->addDownloadTask(Lcom/zui/launcher/networksdk/download/DownloadTask;)V

    return-void
.end method

.method private S(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/DownloadSpan;->startTask(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/zui/launcher/DownloadSpan;->Z(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appsSearch+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Launcher.Download"

    const-string v4, "start"

    invoke-static {v3, v4, v1, v2}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lcom/zui/launcher/DownloadSpan$f;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/zui/launcher/DownloadSpan$f;-><init>(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;Lcom/zui/launcher/ItemInfo;Z)V

    invoke-static {v1}, Lcom/zui/launcher/category/proto/CategorysProto;->appsSearch(Lcom/zui/launcher/category/proto/ConstProtoValue$CategoryHttpRequestCallback;)V

    return-void
.end method

.method private T(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->J()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/.ZuiDesktop/dummyApks"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p2
.end method

.method private U(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static V(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "dummy_download_files"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_filepath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v2
.end method

.method private W(Lcom/zui/launcher/ItemInfo;)Ljava/lang/String;
    .locals 0

    instance-of p0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object p0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private X()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    :cond_0
    return-void
.end method

.method private Y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install apk ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2, p2}, Lcom/zui/launcher/Utilities;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.DownloadSpan"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, v2}, Lcom/zui/launcher/DownloadSpan;->sendIntentInstallApk(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/DownloadSpan;->e0(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private Z(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->k:Ljava/util/LinkedList;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removed from auto download : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method static synthetic a(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan;->e0(Ljava/lang/String;Z)V

    return-void
.end method

.method private a0(Ljava/lang/String;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;
    .locals 1

    new-instance v0, Lcom/zui/launcher/DownloadSpan$j;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/zui/launcher/DownloadSpan$j;-><init>(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->b0(Ljava/lang/String;)V

    return-void
.end method

.method private b0(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->i0(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageInstallExists packageName ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/DownloadSpan;->e0(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/DownloadSpan;->removeFile(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->h0(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/DownloadSpan;->removeAutoDownload(Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->r0(Ljava/lang/String;)V

    return-void
.end method

.method private c0()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->i:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/DownloadSpan$l;

    invoke-static {v1}, Lcom/zui/launcher/DownloadSpan$l;->d(Lcom/zui/launcher/DownloadSpan$l;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseTaskInQueue ==== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Lcom/zui/launcher/Launcher;->restartRecommendInfos(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/zui/launcher/Launcher;->setRecommendInfosReady(Ljava/lang/String;Z)V

    :cond_2
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/zui/launcher/networksdk/DownloadManager;->pause(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic d(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/ItemInfo;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->W(Lcom/zui/launcher/ItemInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<==============>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "PERCENTAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packagename"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "percentage"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "downloadUrl"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static deleteAllFileAndInfo(Landroid/content/Context;)V
    .locals 3

    const-string v0, "deleteAllFileAndInfo"

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "shared_prefs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "dummy_download_files.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/networksdk/db/DBDownloadDao;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/networksdk/db/DBDownloadDao;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/zui/launcher/networksdk/db/DBDownloadDao;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/DownloadManager;->deleteAll()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/.ZuiDesktop/dummyApks"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public static dumpInfoDownloadState(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDummyApp, info installing : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDummyApp, info ready download : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isReadyDownload()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDummyApp, info start download : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDummyApp, info pause download : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->g0(Ljava/lang/String;)V

    return-void
.end method

.method private e0(Ljava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    const-string v1, "dummy_download_files"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_appurl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<F2><F2><F2><F2><F2><F2>====="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v3, :cond_2

    iget-object p2, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    invoke-virtual {p0, p2, v3}, Lcom/zui/launcher/DownloadSpan;->deleteDownloadContent(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->deleteDownloadTask(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->g0(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDownloadingPackages ========"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mDownloadingPackages.size() ========"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_4

    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->K()V

    :cond_4
    return-void
.end method

.method static synthetic f(Lcom/zui/launcher/DownloadSpan;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan;->C(ZLjava/lang/String;)V

    return-void
.end method

.method private f0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->q0(Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method

.method private g0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->i:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static getDownloadProgress(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zui/launcher/networksdk/download/DownloadContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v5, "path=?"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-wide/16 v1, -0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "done"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string p1, "max"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-wide p0, v1

    move-wide v1, v3

    goto :goto_1

    :cond_1
    move-wide p0, v1

    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    const-wide/16 v3, 0x64

    mul-long/2addr p0, v3

    div-long/2addr p0, v1

    long-to-int p0, p0

    return p0

    :cond_2
    return v0
.end method

.method public static getDownloadingStatus(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zui/launcher/networksdk/download/DownloadContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v5, "path=?"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "status"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    move v0, p1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0
.end method

.method public static getUrlFromPrefs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "dummy_download_files"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->doSQLFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_appurl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v2
.end method

.method static synthetic h(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/DownloadSpan;->d0(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private h0(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "dummy_download_files"

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_retry_nums"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/zui/launcher/DownloadSpan;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    return-object p0
.end method

.method private i0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/Launcher;->setRecommendInfosReady(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->resetRecommendInfoFlag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static isDownloadNotStarted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "dummy_download_files"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_appurl"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_filepath"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static isDownloading(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "dummy_download_files"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_appurl"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_filepath"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic j(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan;->Y(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j0(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/zui/launcher/Launcher;->restartRecommendInfos(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan;->j0(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method private k0(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "duplicate download, ignore~ : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/networksdk/MD5Util;->md5To16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3}, Lcom/zui/launcher/DownloadSpan;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v7, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume file ========"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    if-nez v7, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add to waiting list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->i:Ljava/util/LinkedHashMap;

    new-instance v9, Lcom/zui/launcher/DownloadSpan$l;

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/zui/launcher/DownloadSpan$l;-><init>(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, p2, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->W(Lcom/zui/launcher/ItemInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/zui/launcher/Launcher;->setRecommendInfosReady(Ljava/lang/String;Z)V

    :cond_4
    invoke-static {v0, p3}, Lcom/zui/launcher/DownloadSpan;->getDownloadProgress(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloading  progress  ========"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p2, p1, p3}, Lcom/zui/launcher/DownloadSpan;->d0(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add to downloading list : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-direct {p0, p2, p1, p3}, Lcom/zui/launcher/DownloadSpan;->a0(Ljava/lang/String;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    move-result-object p0

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcom/zui/launcher/networksdk/DownloadManager;->resume(Ljava/lang/String;Lcom/zui/launcher/networksdk/download/DownloadTaskListener;)V

    :cond_7
    :goto_1
    return-void
.end method

.method static synthetic l(Lcom/zui/launcher/DownloadSpan;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan;->D(ZLjava/lang/String;)V

    return-void
.end method

.method private l0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retryPackage name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/DownloadSpan;->downloadOrResumeApp(Lcom/zui/launcher/WorkspaceItemInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic m(Lcom/zui/launcher/DownloadSpan;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->Q()V

    return-void
.end method

.method private m0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    const-string v0, "dummy_download_files"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_appurl"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic n(Lcom/zui/launcher/DownloadSpan;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->L()V

    return-void
.end method

.method private n0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const-string v1, "dummy_download_files"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_filepath"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method static synthetic o(Lcom/zui/launcher/DownloadSpan;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->c0()V

    return-void
.end method

.method private o0(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    new-instance v1, Lcom/zui/launcher/DownloadSpan$e;

    invoke-direct {v1, p0, p2, p1}, Lcom/zui/launcher/DownloadSpan$e;-><init>(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;Lcom/zui/launcher/ItemInfo;)V

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/NetWorkUtil;->networkReadyAction(Landroid/content/Context;Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkReadyCallBack;)V

    return-void
.end method

.method static synthetic p(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->Z(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private p0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/DownloadSpan$a;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/DownloadSpan$a;-><init>(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;)V

    const-wide/16 p0, 0x7d0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/zui/launcher/DownloadSpan;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->H()V

    return-void
.end method

.method private q0(Lcom/zui/launcher/ItemInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->W(Lcom/zui/launcher/ItemInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/Launcher;->setRecommendInfosReady(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Launcher;->startRecommendInfos(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1, v1}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->l0(Ljava/lang/String;)V

    return-void
.end method

.method private r0(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->f0(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->K()V

    return-void
.end method

.method public static removeConn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/zui/launcher/DownloadSpan;->getUrlFromPrefs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/zui/launcher/networksdk/db/DBOpenHelper;->pauseStatus:I

    invoke-static {p0, v0}, Lcom/zui/launcher/DownloadSpan;->getDownloadingStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-ne v1, p0, :cond_0

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->cancelTask(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic s(Lcom/zui/launcher/DownloadSpan;Landroid/net/NetworkInfo;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/DownloadSpan;->M(Landroid/net/NetworkInfo;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method private s0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 p0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p0}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {v2, v1}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v2, v1}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v2}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0, p0}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppWidgetInfo;->c()V

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method static synthetic t(Lcom/zui/launcher/DownloadSpan;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->G()V

    return-void
.end method

.method static synthetic u(Lcom/zui/launcher/DownloadSpan;)Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method static synthetic v(Lcom/zui/launcher/DownloadSpan;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic w(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->i0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic x(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan;->E(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic y(Lcom/zui/launcher/DownloadSpan;Ljava/lang/String;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan;->B(Ljava/lang/String;Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method

.method private z(Ljava/util/ArrayList;Ljava/io/File;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "search file, parent dir : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "search cache file, name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/zui/launcher/DownloadSpan;->removeFile(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/zui/launcher/DownloadSpan;->P(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method P(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete file============="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public addAutoDownload(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;>;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "key  ignore ---  "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  packageName -->  "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addAutoDownload, mAutoDownloadedList.size =33333=== "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->G()V

    :cond_4
    :goto_0
    return-void
.end method

.method public addAutoDownload(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addAutoDownload, mAutoDownloadedList.size =2222=== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->G()V

    :cond_2
    :goto_0
    return-void
.end method

.method public addTask(Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan;->d:Lcom/zui/launcher/ItemInfo;

    return-void
.end method

.method public autoRetryDownload(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    const-string v0, "dummy_download_files"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_retry_nums"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x3

    if-ge p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public checkFileAndDownLoadDao(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFileAndDownLoadDao  packageName -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.DownloadSpan"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/DownloadSpan;->e0(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/DownloadSpan;->removeFile(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->h0(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/DownloadSpan;->removeAutoDownload(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected checkWifi(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string p1, "wifi_state"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkWifi  wifiState -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.DownloadSpan"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/DownloadSpan;->pauseAllTask()V

    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->Q()V

    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->O()V

    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->N()V

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p2

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    isConnected ==== "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/DownloadSpan$LOG;->e(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WIFI"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/zui/launcher/DownloadSpan$d;

    invoke-direct {p2, p0}, Lcom/zui/launcher/DownloadSpan$d;-><init>(Lcom/zui/launcher/DownloadSpan;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public checknetwokAndresumeTask(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    new-instance v1, Lcom/zui/launcher/DownloadSpan$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/DownloadSpan$b;-><init>(Lcom/zui/launcher/DownloadSpan;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/zui/launcher/networksdk/NetWorkUtil;->doByNetworkInfo(Landroid/content/Context;Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;)V

    return-void
.end method

.method public deleteDownloadContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p0, v0

    sget-object v0, Lcom/zui/launcher/networksdk/download/DownloadContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "path=?"

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delete "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " result=========  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public deleteTask(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/zui/launcher/DownloadSpan;->isDownloading(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "add delete ids ==== "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->e:Ljava/util/ArrayList;

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteTask ==== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/DownloadSpan;->e0(Ljava/lang/String;Z)V

    invoke-virtual {p0, p2}, Lcom/zui/launcher/DownloadSpan;->removeFile(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/zui/launcher/DownloadSpan;->d0(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lcom/zui/launcher/Launcher;->resetRecommendInfoFlag(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public downloadOrResumeApp(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is in downloading list."

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is in waiting list."

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeTask ==== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n and url : "

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/zui/launcher/DownloadSpan;->startTask(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zui/launcher/DownloadSpan;->getUrlFromPrefs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartTask ==== "

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/zui/launcher/DownloadSpan;->V(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install this apk.. ==== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/DownloadSpan;->Y(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "restartTask ------------ "

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/DownloadSpan;->o0(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public downloadRetryPlus1(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    const-string v0, "dummy_download_files"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_retry_nums"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getAllFiles()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/zui/launcher/DownloadSpan;->J()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/.ZuiDesktop/dummyApks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/zui/launcher/DownloadSpan;->z(Ljava/util/ArrayList;Ljava/io/File;Z)V

    :cond_0
    return-object v0
.end method

.method public handleErrorSocketException(ILcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleErrorSocketException  errorCode -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",  info -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.DownloadSpan"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan;->o:Ljava/util/LinkedHashMap;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/DownloadSpan;->o:Ljava/util/LinkedHashMap;

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleErrorSocketException  lastCount -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/zui/launcher/DownloadSpan;->n:I

    if-ge p1, v1, :cond_2

    invoke-direct {p0, p2, p3, p4}, Lcom/zui/launcher/DownloadSpan;->A(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->o:Ljava/util/LinkedHashMap;

    const/4 p2, 0x1

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2

    :cond_2
    return v0
.end method

.method public onPackageInstallResult(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/DownloadSpan;->packageInstallFailed(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected packageInstallFailed(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageInstallFailed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     resultcode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    const/16 v0, -0x67

    if-eq p2, v0, :cond_0

    const/16 v0, -0x66

    if-eq p2, v0, :cond_0

    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    const-string v0, "dummy_download_files"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_appurl"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const-string v3, ""

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/DownloadSpan;->e0(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/DownloadSpan;->removeFile(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v3}, Lcom/zui/launcher/DownloadSpan;->d0(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->resetRecommendInfoFlag(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "save url again -------- "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method

.method public pauseAllTask()V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseAllTask ==== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lcom/zui/launcher/Launcher;->restartRecommendInfos(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/zui/launcher/Launcher;->setRecommendInfosReady(Ljava/lang/String;Z)V

    :cond_1
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/zui/launcher/networksdk/DownloadManager;->pause(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public pauseTask(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseTask ==== "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->pause(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/zui/launcher/DownloadSpan;->getUrlFromPrefs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/DownloadSpan;->m0(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseTask ====== "

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->g0(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/DownloadSpan;->r0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/Launcher;->setRecommendInfosReady(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public removeAutoDownload(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAutoDownload, entry ----- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->removeAutoDownload(Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeFile, name =========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    const-string v1, "dummy_download_files"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_filepath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<F3><F3><F3><F3><F3><F3><F3><F3>====="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method public resetDownLoadingApp()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public resumeTask(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeTask ==== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/DownloadSpan;->k0(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/zui/launcher/DownloadSpan;->getUrlFromPrefs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartTask ==== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/DownloadSpan;->startTask(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/zui/launcher/DownloadSpan;->V(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install this apk.. ==== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0, p2}, Lcom/zui/launcher/DownloadSpan;->Y(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "restartTask ------------ "

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan;->o0(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p0, "resumeTask ======NPE======= "

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->e(Ljava/lang/String;)V

    return-void
.end method

.method public sendIntentInstallApk(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendIntentInstallApk, pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.DownloadSpan"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zui/launcher/Utilities;->isKodakProduct()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/zui/launcher/Utilities;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/zui/launcher/networksdk/DownloadManager;->installApk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.kukool.ACTION_SILIENT_INSTALL"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KEY_ACTION_SILIENT_INSTALL_ABS_PATH"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "packagename"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :cond_1
    invoke-direct {p0, p2}, Lcom/zui/launcher/DownloadSpan;->s0(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_0
    const-wide/16 v2, -0x1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_3

    const v4, 0x10000001

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    const-string v5, "com.zui.launcher.fileprovider"

    invoke-static {v4, v5, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_1
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz p1, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "install apk =Exception=="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz p1, :cond_4

    :goto_2
    invoke-direct {p0, v2, v3, p2}, Lcom/zui/launcher/DownloadSpan;->I(JLjava/lang/String;)V

    :cond_4
    :goto_3
    return-void

    :goto_4
    iget-object p3, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    if-eqz p3, :cond_5

    invoke-direct {p0, v2, v3, p2}, Lcom/zui/launcher/DownloadSpan;->I(JLjava/lang/String;)V

    :cond_5
    throw p1
.end method

.method public startTask()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->d:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0, v0}, Lcom/zui/launcher/DownloadSpan;->W(Lcom/zui/launcher/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTask uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.DownloadSpan"

    invoke-static {v3, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/DownloadSpan;->o0(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method public startTask(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/zui/launcher/LauncherModel;->addIntoDownloadingApps(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->e:Ljava/util/ArrayList;

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/DownloadSpan;->e:Ljava/util/ArrayList;

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/zui/launcher/DownloadSpan;->m0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/DownloadSpan;->A(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startTaskNow(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/zui/launcher/DownloadSpan;->m0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/DownloadSpan;->A(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public terminate()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/zui/launcher/DownloadSpan;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->d:Lcom/zui/launcher/ItemInfo;

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->f:Lcom/zui/launcher/Launcher;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->g:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->h:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->i:Ljava/util/LinkedHashMap;

    const-string v1, "autoDownloadStartWhenWifiOn    mAutoDownloadedList.clear() 111 ==== "

    invoke-static {v1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->j:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/zui/launcher/DownloadSpan;->o:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iput-object v0, p0, Lcom/zui/launcher/DownloadSpan;->o:Ljava/util/LinkedHashMap;

    :cond_0
    return-void
.end method
