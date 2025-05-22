.class public Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/networkbean/StarAppsRecommendBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StarAppsInfo"
.end annotation


# instance fields
.field private apkSize:I

.field private downloadCount:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private iconAddr:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private shortDesc:Ljava/lang/String;

.field private targetUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/zui/launcher/networkbean/StarAppsRecommendBean;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/networkbean/StarAppsRecommendBean;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->this$0:Lcom/zui/launcher/networkbean/StarAppsRecommendBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkSize()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->apkSize:I

    return p0
.end method

.method public getDownloadCount()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->downloadCount:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->downloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getIconAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->iconAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getShortDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->shortDesc:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->targetUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setIconAddr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->iconAddr:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setShortDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->shortDesc:Ljava/lang/String;

    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->targetUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packageName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nname : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\niconAddr :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->iconAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nshortDesc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->shortDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ntargetUrl :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/networkbean/StarAppsRecommendBean$StarAppsInfo;->targetUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
