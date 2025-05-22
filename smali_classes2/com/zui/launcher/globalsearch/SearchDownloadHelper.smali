.class public Lcom/zui/launcher/globalsearch/SearchDownloadHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static e:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->b:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->c:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->d:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Landroid/content/Context;Lcom/zui/launcher/globalsearch/BaseDataModel;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->g(Landroid/content/Context;Lcom/zui/launcher/globalsearch/BaseDataModel;Lcom/zui/launcher/GlobalSearchView;)V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->a:Ljava/lang/String;

    return-object p0
.end method

.method private g(Landroid/content/Context;Lcom/zui/launcher/globalsearch/BaseDataModel;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 1

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "cta cannot connect to network"

    invoke-static {p0}, Lcom/zui/launcher/GlobalSearchView$LOG;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/zui/launcher/globalsearch/q;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zui/launcher/globalsearch/q;-><init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Landroid/content/Context;Lcom/zui/launcher/globalsearch/BaseDataModel;Lcom/zui/launcher/GlobalSearchView;)V

    invoke-static {p1, v0}, Lcom/zui/launcher/networksdk/NetWorkUtil;->networkReadyAction(Landroid/content/Context;Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkReadyCallBack;)V

    return-void
.end method

.method public static getInstance()Lcom/zui/launcher/globalsearch/SearchDownloadHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->e:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    invoke-direct {v0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;-><init>()V

    sput-object v0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->e:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    :cond_0
    sget-object v0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->e:Lcom/zui/launcher/globalsearch/SearchDownloadHelper;

    return-object v0
.end method

.method private h(Landroid/content/Context;ILcom/zui/launcher/globalsearch/BaseDataModel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    const v1, 0x7f120348

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p2, v0, :cond_1

    if-eq p2, v2, :cond_0

    move-object p1, v3

    goto :goto_1

    :cond_0
    const v0, 0x7f120333

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const v0, 0x7f12033e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f12033f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lzui/app/MessageDialog$Builder;

    invoke-direct {v1, v0}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lzui/app/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$a;

    invoke-direct {v3, p0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$a;-><init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;)V

    invoke-virtual {v1, v3}, Lzui/app/MessageDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v1

    if-eq p2, v2, :cond_2

    goto :goto_2

    :cond_2
    const p2, 0x7f120334

    invoke-virtual {v1, p2}, Lzui/app/MessageDialog$Builder;->setTitle(I)Lzui/app/MessageDialog$Builder;

    :goto_2
    const p2, 0x7f120349

    invoke-virtual {v0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$b;

    invoke-direct {v2, p0, v0, p3}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$b;-><init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/globalsearch/BaseDataModel;)V

    invoke-virtual {v1, p2, v2}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    new-instance p2, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$c;

    invoke-direct {p2, p0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$c;-><init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;)V

    invoke-virtual {v1, p1, p2}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    invoke-virtual {v1}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Lzui/app/MessageDialog$Builder;->show()Lzui/app/MessageDialog;

    :cond_3
    return-void
.end method

.method private i(Landroid/content/Context;Landroid/net/NetworkInfo;Lcom/zui/launcher/globalsearch/BaseDataModel;)V
    .locals 3

    const v0, 0x7f12032c

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1, v1, p3}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->h(Landroid/content/Context;ILcom/zui/launcher/globalsearch/BaseDataModel;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->h(Landroid/content/Context;ILcom/zui/launcher/globalsearch/BaseDataModel;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private j(Landroid/content/Context;ZLcom/zui/launcher/globalsearch/BaseDataModel;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    if-nez p2, :cond_0

    const p0, 0x7f120341

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    instance-of p2, p3, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    if-eqz p2, :cond_1

    check-cast p3, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    invoke-virtual {p4}, Lcom/zui/launcher/GlobalSearchView;->getLocalClientId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->downloadAllData(Landroid/content/Context;Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of p2, p3, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    if-eqz p2, :cond_2

    check-cast p3, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    invoke-virtual {p3}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getPkName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getVersionCode()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->downloadGameApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addReDownloadTask(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->d:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic c(Landroid/content/Context;Landroid/net/NetworkInfo;Lcom/zui/launcher/globalsearch/BaseDataModel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->i(Landroid/content/Context;Landroid/net/NetworkInfo;Lcom/zui/launcher/globalsearch/BaseDataModel;)V

    return-void
.end method

.method public clearCacheList()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public synthetic d(Lcom/zui/launcher/networksdk/OKHttpUtils;Landroid/content/Context;Lcom/zui/launcher/globalsearch/BaseDataModel;Landroid/net/NetworkInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/globalsearch/t;

    invoke-direct {v0, p0, p2, p4, p3}, Lcom/zui/launcher/globalsearch/t;-><init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Landroid/content/Context;Landroid/net/NetworkInfo;Lcom/zui/launcher/globalsearch/BaseDataModel;)V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/networksdk/OKHttpUtils;->switchMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public download(Landroid/content/Context;Lcom/zui/launcher/globalsearch/BaseDataModel;)V
    .locals 2

    invoke-static {p1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/networksdk/OKHttpUtils;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/globalsearch/r;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/zui/launcher/globalsearch/r;-><init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Lcom/zui/launcher/networksdk/OKHttpUtils;Landroid/content/Context;Lcom/zui/launcher/globalsearch/BaseDataModel;)V

    invoke-static {p1, v1}, Lcom/zui/launcher/networksdk/NetWorkUtil;->doByNetworkInfo(Landroid/content/Context;Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;)V

    return-void
.end method

.method public downloadAllData(Landroid/content/Context;Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://ams.lenovomm.com/ams/3.0/appdownaddress4thirdparty.do?pn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;->getApppack()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&vc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;->getAppversioncode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&ty=2&clientid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/networksdk/OKHttpUtils;

    move-result-object p1

    new-instance v1, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;

    const-string v2, "User-Info"

    invoke-direct {v1, v2, p3}, Lcom/zui/launcher/networksdk/OKHttpUtils$Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$f;

    invoke-direct {p3, p0, p2}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$f;-><init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;)V

    invoke-virtual {p1, v1, v0, p3}, Lcom/zui/launcher/networksdk/OKHttpUtils;->getAsyn(Lcom/zui/launcher/networksdk/OKHttpUtils$Param;Ljava/lang/String;Lcom/zui/launcher/networksdk/ResultCallback;)V

    return-void
.end method

.method public downloadGameApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;)V
    .locals 3

    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://ams.lenovomm.com/ams/api/appinfo4thirdparty?vc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&pn="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&dt="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "&cid=3b9aca343b9aca35"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/networksdk/OKHttpUtils;

    move-result-object p3

    new-instance v1, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;

    invoke-direct {v1, p0, p1, p4}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$e;-><init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Landroid/content/Context;Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;)V

    invoke-virtual {p3, p2, v0, v1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->getAsyn(Ljava/lang/String;Lokhttp3/CacheControl;Lcom/zui/launcher/networksdk/ResultCallback;)V

    return-void
.end method

.method public synthetic e(Landroid/content/Context;ZLcom/zui/launcher/globalsearch/BaseDataModel;Lcom/zui/launcher/GlobalSearchView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->j(Landroid/content/Context;ZLcom/zui/launcher/globalsearch/BaseDataModel;Lcom/zui/launcher/GlobalSearchView;)V

    return-void
.end method

.method public synthetic f(Landroid/content/Context;Lcom/zui/launcher/globalsearch/BaseDataModel;Lcom/zui/launcher/GlobalSearchView;Z)V
    .locals 8

    invoke-static {p1}, Lcom/zui/launcher/networksdk/OKHttpUtils;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/networksdk/OKHttpUtils;

    move-result-object v0

    new-instance v7, Lcom/zui/launcher/globalsearch/s;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/globalsearch/s;-><init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Landroid/content/Context;ZLcom/zui/launcher/globalsearch/BaseDataModel;Lcom/zui/launcher/GlobalSearchView;)V

    invoke-virtual {v0, v7}, Lcom/zui/launcher/networksdk/OKHttpUtils;->switchMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAppDrawable(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/globalsearch/BaseDataModel;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 0

    instance-of p0, p2, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    invoke-virtual {p2}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;->getAppname()Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of p0, p2, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    if-eqz p0, :cond_1

    check-cast p2, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    invoke-virtual {p2}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getPkName()Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/zui/launcher/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/zui/launcher/icons/BitmapInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getZuiThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getAppPkName(Lcom/zui/launcher/globalsearch/BaseDataModel;)Ljava/lang/String;
    .locals 0

    instance-of p0, p1, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;->getApppack()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, p1, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getPkName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppTitle(Lcom/zui/launcher/globalsearch/BaseDataModel;)Ljava/lang/String;
    .locals 0

    instance-of p0, p1, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/QuicksDocs;->getAppname()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, p1, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    invoke-virtual {p1}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCacheGameList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->c:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->a:Ljava/lang/String;

    const-string v1, "cache list  end "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->CACHE_VALID:Z

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->b:Ljava/util/List;

    return-object p0
.end method

.method public getGameAppList(Lcom/zui/launcher/GlobalSearchView;I)V
    .locals 11

    invoke-virtual {p1}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchSP()Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchSp;->getRequestGameNum(Landroid/content/Context;)I

    move-result v4

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGameAppList  requestNum ->"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://ams.lenovomm.com/ams/api/applist4thirdpartyv3?code=21680&lt=subject&cg=yx&si=1&c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&cid=3b9aca343b9aca35"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/zui/launcher/GlobalSearchView;->getGlobalSearchContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/networksdk/OKHttpUtils;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/networksdk/OKHttpUtils;

    move-result-object v9

    new-instance v10, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;

    move-object v0, v10

    move-object v1, p0

    move v3, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper$d;-><init>(Lcom/zui/launcher/globalsearch/SearchDownloadHelper;Landroid/content/Context;IILcom/zui/launcher/globalsearch/utils/GlobalSearchSp;Lcom/zui/launcher/GlobalSearchView;)V

    invoke-virtual {v9, v8, v7, v10}, Lcom/zui/launcher/networksdk/OKHttpUtils;->getAsyn(Ljava/lang/String;Lokhttp3/CacheControl;Lcom/zui/launcher/networksdk/ResultCallback;)V

    return-void
.end method

.method public getReDownloadCount(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public removeReDownLoadCount(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCacheGameList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->c:J

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->clearCacheList()V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public startTask(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v5

    const-string p0, "startTask"

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " startTask isSingleLayerDesktop"

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v0

    iget-object v3, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    move-object v1, v5

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/LauncherModel;->startSearchedAppDownload(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/LauncherModel$Callbacks;)V

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, " startTask !isSingleLayerDesktop"

    invoke-static {p0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object p0

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/zui/launcher/DownloadSpan;->startTask(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startTask(Lcom/zui/launcher/globalsearch/BaseDataModel;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->CACHE_VALID:Z

    new-instance v3, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v3}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->getAppPkName(Lcom/zui/launcher/globalsearch/BaseDataModel;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iput-object v0, v3, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iput-object v4, v3, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v6}, Landroid/app/Activity;->getUserId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/compat/UserManagerCompat;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v6, p1, v0}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->getAppDrawable(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/globalsearch/BaseDataModel;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/zui/launcher/WorkspaceItemInfo;->setIcon(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/SearchDownloadHelper;->getAppTitle(Lcom/zui/launcher/globalsearch/BaseDataModel;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    const/16 p0, -0x64

    iput p0, v3, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 p0, 0x8

    iput p0, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 p0, 0x1

    iput p0, v3, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 p0, -0x1

    invoke-virtual {v3, p0}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    iput-object v0, v3, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {v6}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v6}, Lcom/zui/launcher/Launcher;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v1

    move-object v2, v6

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/LauncherModel;->startSearchedAppDownload(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Ljava/lang/String;Lcom/zui/launcher/LauncherModel$Callbacks;)V

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v6}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v6}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object p0

    iget-object p1, v3, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, p1, p2}, Lcom/zui/launcher/DownloadSpan;->startTask(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
