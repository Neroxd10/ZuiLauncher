.class public Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/AppStoreHelperProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->c:Ljava/lang/String;

    iput p3, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->d:I

    iput-wide p4, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->f:J

    iput p6, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->e:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->a:J

    return-wide p1
.end method

.method static synthetic c(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->d:I

    return p0
.end method

.method static synthetic g(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->d:I

    return p1
.end method

.method static synthetic h(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->e:I

    return p0
.end method

.method static synthetic i(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->e:I

    return p1
.end method

.method static synthetic j(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->f:J

    return-wide v0
.end method

.method static synthetic k(Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->f:J

    return-wide p1
.end method


# virtual methods
.method public getDownloadProgress()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->e:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getPercent()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->e:I

    return p0
.end method

.method public getTaskState()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->d:I

    return p0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getViewID()J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->f:J

    return-wide v0
.end method

.method public isDownloading()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->d:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInstalling()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->d:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPausing()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->d:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setTaskState(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfo(packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " itemid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " viewId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " taskState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zui/launcher/AppStoreHelperProvider$AppInfo;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
