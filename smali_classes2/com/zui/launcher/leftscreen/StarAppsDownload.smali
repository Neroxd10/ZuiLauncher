.class public Lcom/zui/launcher/leftscreen/StarAppsDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;
    }
.end annotation


# static fields
.field public static final APK:Ljava/lang/String; = ".apk"

.field public static final MIMETYPE:Ljava/lang/String; = "application/vnd.android.package-archive;charset=utf-8"

.field private static e:Lcom/zui/launcher/leftscreen/StarAppsDownload;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/net/NetworkInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->s(Landroid/net/NetworkInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/zui/launcher/leftscreen/StarAppsDownload;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload;->d:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/leftscreen/StarAppsDownload;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->v(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/leftscreen/StarAppsDownload;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static deleteDownloadTask(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->deleteDownloadTask(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/zui/launcher/leftscreen/StarAppsDownload;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/zui/launcher/leftscreen/StarAppsDownload;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->u(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getDownloadProgress(Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadPercent(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/zui/launcher/leftscreen/StarAppsDownload;
    .locals 1

    sget-object v0, Lcom/zui/launcher/leftscreen/StarAppsDownload;->e:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/leftscreen/StarAppsDownload;

    invoke-direct {v0}, Lcom/zui/launcher/leftscreen/StarAppsDownload;-><init>()V

    sput-object v0, Lcom/zui/launcher/leftscreen/StarAppsDownload;->e:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    :cond_0
    sget-object v0, Lcom/zui/launcher/leftscreen/StarAppsDownload;->e:Lcom/zui/launcher/leftscreen/StarAppsDownload;

    return-object v0
.end method

.method static synthetic h(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->p(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->q(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static synthetic j(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic k(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->o(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private l(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;
    .locals 1

    new-instance v0, Lcom/zui/launcher/leftscreen/StarAppsDownload$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/leftscreen/StarAppsDownload$g;-><init>(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private m(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;
    .locals 1

    new-instance v0, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload$e;-><init>(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method private n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 8

    sget-object v0, Lcom/zui/launcher/util/Executors;->NETWORK_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v7, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/leftscreen/StarAppsDownload$f;-><init>(Lcom/zui/launcher/leftscreen/StarAppsDownload;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x134

    if-ne p3, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->deleteDataAndFile(Ljava/lang/String;)V

    const p0, 0x7f1202e0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->deleteDownloadTask(Lcom/zui/launcher/Launcher;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x9

    if-ne p3, v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->deleteDataAndFile(Ljava/lang/String;)V

    const p3, 0x7f1202e1

    :goto_0
    invoke-static {p1, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->p(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x3e9

    if-ne p3, v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->deleteDataAndFile(Ljava/lang/String;)V

    const p3, 0x7f1202e2

    goto :goto_0

    :goto_1
    return-void
.end method

.method private p(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private q(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->t(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0a0281

    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const p1, 0x7f1202e3

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    const p0, 0x7f0a0282

    invoke-virtual {p3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080407

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private r(Landroid/content/Context;I)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f120348

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p2, v1, :cond_1

    if-eq p2, v3, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    const v1, 0x7f120333

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const v1, 0x7f12033e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f12033f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Lzui/app/MessageDialog$Builder;

    invoke-direct {v1, p1}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lzui/app/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/leftscreen/StarAppsDownload$b;

    invoke-direct {v2, p0}, Lcom/zui/launcher/leftscreen/StarAppsDownload$b;-><init>(Lcom/zui/launcher/leftscreen/StarAppsDownload;)V

    invoke-virtual {v1, v2}, Lzui/app/MessageDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v1

    if-eq p2, v3, :cond_2

    goto :goto_2

    :cond_2
    const p2, 0x7f120334

    invoke-virtual {v1, p2}, Lzui/app/MessageDialog$Builder;->setTitle(I)Lzui/app/MessageDialog$Builder;

    :goto_2
    const p2, 0x7f120349

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/zui/launcher/leftscreen/StarAppsDownload$c;

    invoke-direct {v2, p0, p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload$c;-><init>(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/content/Context;)V

    invoke-virtual {v1, p2, v2}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    new-instance p1, Lcom/zui/launcher/leftscreen/StarAppsDownload$d;

    invoke-direct {p1, p0}, Lcom/zui/launcher/leftscreen/StarAppsDownload$d;-><init>(Lcom/zui/launcher/leftscreen/StarAppsDownload;)V

    invoke-virtual {v1, v0, p1}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    invoke-virtual {v1}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Lzui/app/MessageDialog$Builder;->show()Lzui/app/MessageDialog;

    return-void
.end method

.method private s(Landroid/net/NetworkInfo;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    const v0, 0x7f12032c

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p3, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload;->c:Landroid/view/View;

    iput-object p6, p0, Lcom/zui/launcher/leftscreen/StarAppsDownload;->d:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p3

    if-ne v1, p3, :cond_0

    invoke-direct {p0, p2, v1}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->r(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    invoke-direct {p0, p2, p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->r(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static syncTask(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 2

    const/16 v0, 0x8

    iput v0, p0, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadPercent(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncTask==progress==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/ItemInfo;->getDownloadProgress()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->i(Ljava/lang/String;)V

    return-void
.end method

.method private t(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;

    invoke-virtual {p0}, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private u(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updatePercent-----"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePercent----packageName-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePercent----unflattenFromView-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->t(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->i(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->t(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0a0282

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080406

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const p0, 0x7f0a0281

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private v(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/zui/launcher/networksdk/MD5Util;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \nfilemd5====="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->i(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eqz p2, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return p1
.end method


# virtual methods
.method public cancelTask(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->cancelTask(Ljava/lang/String;)V

    return-void
.end method

.method public checkConnectionBeforeDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 8

    new-instance v7, Lcom/zui/launcher/leftscreen/StarAppsDownload$a;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/leftscreen/StarAppsDownload$a;-><init>(Lcom/zui/launcher/leftscreen/StarAppsDownload;Landroid/view/View;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {p1, v7}, Lcom/zui/launcher/networksdk/NetWorkUtil;->doByNetworkInfo(Landroid/content/Context;Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;)V

    return-void
.end method

.method public deleteDataAndFile(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/DownloadManager;->deleteDataAndFile(Ljava/lang/String;)V

    return-void
.end method

.method public download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download start ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    invoke-direct {v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setId(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setUrl(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/zui/launcher/networksdk/MD5Util;->md5To16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".apk"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setFileName(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object p3

    const-string v0, "application/vnd.android.package-archive;charset=utf-8"

    invoke-virtual {p3, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setFileType(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object p3

    invoke-direct {p0, p1, p2, p4}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->m(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setListener(Lcom/zui/launcher/networksdk/download/DownloadTaskListener;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->build()Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object p0

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/networksdk/DownloadManager;->addDownloadTask(Lcom/zui/launcher/networksdk/download/DownloadTask;)V

    return-void
.end method

.method public download(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launcher download start ==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    invoke-direct {v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;-><init>()V

    iget-object v1, p2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setId(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setUrl(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/zui/launcher/networksdk/MD5Util;->md5To16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".apk"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setFileName(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object p3

    const-string v0, "application/vnd.android.package-archive;charset=utf-8"

    invoke-virtual {p3, v0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setFileType(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object p3

    iget-object p2, p2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->setListener(Lcom/zui/launcher/networksdk/download/DownloadTaskListener;)Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/download/DownloadTask$Builder;->build()Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object p0

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/networksdk/DownloadManager;->addDownloadTask(Lcom/zui/launcher/networksdk/download/DownloadTask;)V

    return-void
.end method

.method public pause(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "pause===packageName==="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/networksdk/DownloadManager;->pause(Ljava/lang/String;)V

    return-void
.end method

.method public resetListener(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/zui/launcher/networksdk/DownloadManager;->getDownloadTask(Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTask;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->m(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/networksdk/download/DownloadTask;->setListener(Lcom/zui/launcher/networksdk/download/DownloadTaskListener;)V

    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download resume ======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lcom/zui/launcher/networksdk/DownloadManager;->resume(Ljava/lang/String;Lcom/zui/launcher/networksdk/download/DownloadTaskListener;)V

    return-void
.end method

.method public resume(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download resume ======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/leftscreen/StarAppsDownload$LOG;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/leftscreen/StarAppsDownload;->m(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Lcom/zui/launcher/networksdk/download/DownloadTaskListener;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lcom/zui/launcher/networksdk/DownloadManager;->resume(Ljava/lang/String;Lcom/zui/launcher/networksdk/download/DownloadTaskListener;)V

    return-void
.end method
