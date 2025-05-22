.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final RESULT_DOWN_FAIL:I = 0x2

.field public static final RESULT_INSTALL_FAIL:I = 0x1

.field public static final RESULT_INSTALL_SUCCESS:I = 0x0

.field public static final RESULT_IS_RUNNING:I = 0x3

.field public static final RESULT_SENT_SUCCESS:I = 0x4

.field private static k:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;


# instance fields
.field private a:I

.field private b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

.field private c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

.field private d:Ljava/lang/String;

.field private e:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->f:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LesyncDownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->h:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_2
    return-object p0
.end method

.method private b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;->isResultSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;->getRecommendApp(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    return v0

    :cond_1
    :try_start_1
    new-instance p3, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x4

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    return p1

    :cond_2
    :goto_0
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "RecommendAppUtil"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    return v0

    :goto_1
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    throw p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;->isResultSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;->getRecommendApp(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    return v1

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".apk.beiju"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->d(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->g(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const/4 p1, 0x0

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    return p1

    :cond_4
    :try_start_2
    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->i:Landroid/content/Context;

    invoke-virtual {p2, v2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->systemInstallApk(Landroid/content/Context;Ljava/io/File;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    return v0

    :cond_5
    :goto_0
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    return v1

    :cond_6
    :goto_1
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    return v1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "RecommendAppUtil"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->devDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    return v1

    :goto_2
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    throw p1
.end method

.method private d(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/lang/String;)Ljava/io/File;
    .locals 8

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->getAppBreakpointFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/FileBaseBreakpointSupport;

    invoke-direct {v6, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/FileBaseBreakpointSupport;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getSize()J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->j:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/restore/AppDownloadFileOutputPipe;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->download(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/OutputPipe;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->addPilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;->get()Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->removePilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture$PilotResult;->isOK()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;
    .locals 3

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.lenovo.supernote"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;

    invoke-direct {p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->b:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->i:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->getInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app"

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/BreakpointFileUtil;->getBreakFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "restore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->d:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/ShellUtils;->getShellOutputPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->g:Ljava/lang/String;

    return-void
.end method

.method private g(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Ljava/io/File;)Z
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->i:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getVersionCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->e:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->i:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/installer/AppInstallerProxy;->slientInstallApk(Landroid/content/Context;Ljava/io/File;)I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;
    .locals 2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->k:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;

    if-nez v0, :cond_1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->k:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;-><init>()V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->k:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->k:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized addPilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getAppBreakpointFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyyMMdd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getSize()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".break"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isRunning()Z
    .locals 1

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected declared-synchronized removePilotFuture(Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotFuture;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->j:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-void
.end method

.method public startDownAndInstallByUrl(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 p0, 0x3

    monitor-exit v0

    return p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startDownForIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 p0, 0x3

    monitor-exit v0

    return p0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendAppTask;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
