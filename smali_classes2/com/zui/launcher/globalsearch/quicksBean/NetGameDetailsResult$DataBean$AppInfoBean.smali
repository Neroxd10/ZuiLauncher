.class public Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfoBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$SnapListBean;,
        Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$FSnapListBean;,
        Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$BgBean;,
        Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$NewShelfBean;
    }
.end annotation


# instance fields
.field private actualDownCount:I

.field private advertiseDesc:Ljava/lang/String;

.field private apkSize:I

.field private apkmd5:Ljava/lang/String;

.field private appDownloadAdr:Ljava/lang/String;

.field private appTypeCode:Ljava/lang/String;

.field private audited:I

.field private authorProNum:I

.field private averageStar:D

.field private bg:Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$BgBean;

.field private bigCategory:I

.field private btnColor:Ljava/lang/String;

.field private buttonCaption:Ljava/lang/String;

.field private chinesize:I

.field private commentsNum:I

.field private commonDesc:Ljava/lang/String;

.field private commonTitle:Ljava/lang/String;

.field private compatible:Ljava/lang/String;

.field private compatibleDesc:Ljava/lang/String;

.field private crack:I

.field private credibleFlag:I

.field private dangerous:I

.field private dangerousDesc:Ljava/lang/String;

.field private definition:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private developerName:Ljava/lang/String;

.field private develperId:Ljava/lang/String;

.field private discount:Ljava/lang/String;

.field private downloadCount:Ljava/lang/String;

.field private fSnapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$FSnapListBean;",
            ">;"
        }
    .end annotation
.end field

.field private fState:Ljava/lang/Object;

.field private gradeCount:I

.field private hState:Ljava/lang/String;

.field private hasActivity:I

.field private hasAd:I

.field private hasGameCard:I

.field private hasGameGift:I

.field private hasInnerPay:I

.field private hasStrategy:I

.field private hasSubscribe:I

.field private highQualityTag:I

.field private iconAddr:Ljava/lang/String;

.field private isPrivilege:I

.field private ispay:Ljava/lang/String;

.field private lState:Ljava/lang/String;

.field private lStateText:Ljava/lang/Object;

.field private lcaid:I

.field private minSdk:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private network_identity:Ljava/lang/String;

.field private newShelf:Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$NewShelfBean;

.field private noAd:I

.field private oState:Ljava/lang/String;

.field private operatorDesc:Ljava/lang/String;

.field private outUrl:Ljava/lang/String;

.field private overflowPrice:Ljava/lang/Object;

.field private packageName:Ljava/lang/String;

.field private paymentDesc:Ljava/lang/String;

.field private points:I

.field private price:Ljava/lang/String;

.field private privilege_url:Ljava/lang/String;

.field private publishDate:J

.field private realDownCount:I

.field private risky:I

.field private safeCertification:I

.field private sharepoints:Ljava/lang/String;

.field private shortDesc:Ljava/lang/String;

.field private size:I

.field private smsSupport:Ljava/lang/String;

.field private snapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$SnapListBean;",
            ">;"
        }
    .end annotation
.end field

.field private targetUrl:Ljava/lang/String;

.field private tipContent:Ljava/lang/String;

.field private tipTitle:Ljava/lang/String;

.field private typeBoneId:I

.field private typeInfoId:I

.field private typeName:Ljava/lang/String;

.field private unDownloadable:I

.field private updateDesc:Ljava/lang/String;

.field private vImg:Ljava/lang/String;

.field private vState:Ljava/lang/Object;

.field private vcNum:I

.field private version:Ljava/lang/String;

.field private versioncode:Ljava/lang/String;

.field private vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualDownCount()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->actualDownCount:I

    return p0
.end method

.method public getAdvertiseDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->advertiseDesc:Ljava/lang/String;

    return-object p0
.end method

.method public getApkSize()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->apkSize:I

    return p0
.end method

.method public getApkmd5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->apkmd5:Ljava/lang/String;

    return-object p0
.end method

.method public getAppDownloadAdr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->appDownloadAdr:Ljava/lang/String;

    return-object p0
.end method

.method public getAppTypeCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->appTypeCode:Ljava/lang/String;

    return-object p0
.end method

.method public getAudited()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->audited:I

    return p0
.end method

.method public getAuthorProNum()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->authorProNum:I

    return p0
.end method

.method public getAverageStar()D
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->averageStar:D

    return-wide v0
.end method

.method public getBg()Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$BgBean;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->bg:Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$BgBean;

    return-object p0
.end method

.method public getBigCategory()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->bigCategory:I

    return p0
.end method

.method public getBtnColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->btnColor:Ljava/lang/String;

    return-object p0
.end method

.method public getButtonCaption()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->buttonCaption:Ljava/lang/String;

    return-object p0
.end method

.method public getChinesize()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->chinesize:I

    return p0
.end method

.method public getCommentsNum()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->commentsNum:I

    return p0
.end method

.method public getCommonDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->commonDesc:Ljava/lang/String;

    return-object p0
.end method

.method public getCommonTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->commonTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getCompatible()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->compatible:Ljava/lang/String;

    return-object p0
.end method

.method public getCompatibleDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->compatibleDesc:Ljava/lang/String;

    return-object p0
.end method

.method public getCrack()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->crack:I

    return p0
.end method

.method public getCredibleFlag()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->credibleFlag:I

    return p0
.end method

.method public getDangerous()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->dangerous:I

    return p0
.end method

.method public getDangerousDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->dangerousDesc:Ljava/lang/String;

    return-object p0
.end method

.method public getDefinition()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->definition:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDeveloperName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->developerName:Ljava/lang/String;

    return-object p0
.end method

.method public getDevelperId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->develperId:Ljava/lang/String;

    return-object p0
.end method

.method public getDiscount()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->discount:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadCount()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->downloadCount:Ljava/lang/String;

    return-object p0
.end method

.method public getFSnapList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$FSnapListBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->fSnapList:Ljava/util/List;

    return-object p0
.end method

.method public getFState()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->fState:Ljava/lang/Object;

    return-object p0
.end method

.method public getGradeCount()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->gradeCount:I

    return p0
.end method

.method public getHState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hState:Ljava/lang/String;

    return-object p0
.end method

.method public getHasActivity()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hasActivity:I

    return p0
.end method

.method public getHasAd()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hasAd:I

    return p0
.end method

.method public getHasGameCard()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hasGameCard:I

    return p0
.end method

.method public getHasGameGift()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hasGameGift:I

    return p0
.end method

.method public getHasInnerPay()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hasInnerPay:I

    return p0
.end method

.method public getHasStrategy()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hasStrategy:I

    return p0
.end method

.method public getHasSubscribe()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hasSubscribe:I

    return p0
.end method

.method public getHighQualityTag()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->highQualityTag:I

    return p0
.end method

.method public getIconAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->iconAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getIsPrivilege()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->isPrivilege:I

    return p0
.end method

.method public getIspay()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->ispay:Ljava/lang/String;

    return-object p0
.end method

.method public getLState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->lState:Ljava/lang/String;

    return-object p0
.end method

.method public getLStateText()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->lStateText:Ljava/lang/Object;

    return-object p0
.end method

.method public getLcaid()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->lcaid:I

    return p0
.end method

.method public getMinSdk()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->minSdk:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNetwork_identity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->network_identity:Ljava/lang/String;

    return-object p0
.end method

.method public getNewShelf()Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$NewShelfBean;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->newShelf:Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$NewShelfBean;

    return-object p0
.end method

.method public getNoAd()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->noAd:I

    return p0
.end method

.method public getOState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->oState:Ljava/lang/String;

    return-object p0
.end method

.method public getOperatorDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->operatorDesc:Ljava/lang/String;

    return-object p0
.end method

.method public getOutUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->outUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getOverflowPrice()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->overflowPrice:Ljava/lang/Object;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPaymentDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->paymentDesc:Ljava/lang/String;

    return-object p0
.end method

.method public getPoints()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->points:I

    return p0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->price:Ljava/lang/String;

    return-object p0
.end method

.method public getPrivilege_url()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->privilege_url:Ljava/lang/String;

    return-object p0
.end method

.method public getPublishDate()J
    .locals 2

    iget-wide v0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->publishDate:J

    return-wide v0
.end method

.method public getRealDownCount()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->realDownCount:I

    return p0
.end method

.method public getRisky()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->risky:I

    return p0
.end method

.method public getSafeCertification()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->safeCertification:I

    return p0
.end method

.method public getSharepoints()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->sharepoints:Ljava/lang/String;

    return-object p0
.end method

.method public getShortDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->shortDesc:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->size:I

    return p0
.end method

.method public getSmsSupport()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->smsSupport:Ljava/lang/String;

    return-object p0
.end method

.method public getSnapList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$SnapListBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->snapList:Ljava/util/List;

    return-object p0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->targetUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTipContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->tipContent:Ljava/lang/String;

    return-object p0
.end method

.method public getTipTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->tipTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeBoneId()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->typeBoneId:I

    return p0
.end method

.method public getTypeInfoId()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->typeInfoId:I

    return p0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->typeName:Ljava/lang/String;

    return-object p0
.end method

.method public getUnDownloadable()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->unDownloadable:I

    return p0
.end method

.method public getUpdateDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->updateDesc:Ljava/lang/String;

    return-object p0
.end method

.method public getVImg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->vImg:Ljava/lang/String;

    return-object p0
.end method

.method public getVState()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->vState:Ljava/lang/Object;

    return-object p0
.end method

.method public getVcNum()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->vcNum:I

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->version:Ljava/lang/String;

    return-object p0
.end method

.method public getVersioncode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->versioncode:Ljava/lang/String;

    return-object p0
.end method

.method public getVid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->vid:Ljava/lang/String;

    return-object p0
.end method

.method public setActualDownCount(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->actualDownCount:I

    return-void
.end method

.method public setAdvertiseDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->advertiseDesc:Ljava/lang/String;

    return-void
.end method

.method public setApkSize(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->apkSize:I

    return-void
.end method

.method public setApkmd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->apkmd5:Ljava/lang/String;

    return-void
.end method

.method public setAppDownloadAdr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->appDownloadAdr:Ljava/lang/String;

    return-void
.end method

.method public setAppTypeCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->appTypeCode:Ljava/lang/String;

    return-void
.end method

.method public setAudited(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->audited:I

    return-void
.end method

.method public setAuthorProNum(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->authorProNum:I

    return-void
.end method

.method public setAverageStar(D)V
    .locals 0

    iput-wide p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->averageStar:D

    return-void
.end method

.method public setBg(Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$BgBean;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->bg:Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$BgBean;

    return-void
.end method

.method public setBigCategory(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->bigCategory:I

    return-void
.end method

.method public setBtnColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->btnColor:Ljava/lang/String;

    return-void
.end method

.method public setButtonCaption(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->buttonCaption:Ljava/lang/String;

    return-void
.end method

.method public setChinesize(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->chinesize:I

    return-void
.end method

.method public setCommentsNum(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->commentsNum:I

    return-void
.end method

.method public setCommonDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->commonDesc:Ljava/lang/String;

    return-void
.end method

.method public setCommonTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->commonTitle:Ljava/lang/String;

    return-void
.end method

.method public setCompatible(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->compatible:Ljava/lang/String;

    return-void
.end method

.method public setCompatibleDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->compatibleDesc:Ljava/lang/String;

    return-void
.end method

.method public setCrack(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->crack:I

    return-void
.end method

.method public setCredibleFlag(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->credibleFlag:I

    return-void
.end method

.method public setDangerous(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->dangerous:I

    return-void
.end method

.method public setDangerousDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->dangerousDesc:Ljava/lang/String;

    return-void
.end method

.method public setDefinition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->definition:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setDeveloperName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->developerName:Ljava/lang/String;

    return-void
.end method

.method public setDevelperId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->develperId:Ljava/lang/String;

    return-void
.end method

.method public setDiscount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->discount:Ljava/lang/String;

    return-void
.end method

.method public setDownloadCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->downloadCount:Ljava/lang/String;

    return-void
.end method

.method public setFSnapList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$FSnapListBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->fSnapList:Ljava/util/List;

    return-void
.end method

.method public setFState(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->fState:Ljava/lang/Object;

    return-void
.end method

.method public setGradeCount(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->gradeCount:I

    return-void
.end method

.method public setHState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hState:Ljava/lang/String;

    return-void
.end method

.method public setHasActivity(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hasActivity:I

    return-void
.end method

.method public setHasAd(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hasAd:I

    return-void
.end method

.method public setHasGameCard(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hasGameCard:I

    return-void
.end method

.method public setHasGameGift(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hasGameGift:I

    return-void
.end method

.method public setHasInnerPay(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hasInnerPay:I

    return-void
.end method

.method public setHasStrategy(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hasStrategy:I

    return-void
.end method

.method public setHasSubscribe(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->hasSubscribe:I

    return-void
.end method

.method public setHighQualityTag(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->highQualityTag:I

    return-void
.end method

.method public setIconAddr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->iconAddr:Ljava/lang/String;

    return-void
.end method

.method public setIsPrivilege(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->isPrivilege:I

    return-void
.end method

.method public setIspay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->ispay:Ljava/lang/String;

    return-void
.end method

.method public setLState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->lState:Ljava/lang/String;

    return-void
.end method

.method public setLStateText(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->lStateText:Ljava/lang/Object;

    return-void
.end method

.method public setLcaid(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->lcaid:I

    return-void
.end method

.method public setMinSdk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->minSdk:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNetwork_identity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->network_identity:Ljava/lang/String;

    return-void
.end method

.method public setNewShelf(Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$NewShelfBean;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->newShelf:Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$NewShelfBean;

    return-void
.end method

.method public setNoAd(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->noAd:I

    return-void
.end method

.method public setOState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->oState:Ljava/lang/String;

    return-void
.end method

.method public setOperatorDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->operatorDesc:Ljava/lang/String;

    return-void
.end method

.method public setOutUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->outUrl:Ljava/lang/String;

    return-void
.end method

.method public setOverflowPrice(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->overflowPrice:Ljava/lang/Object;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPaymentDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->paymentDesc:Ljava/lang/String;

    return-void
.end method

.method public setPoints(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->points:I

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->price:Ljava/lang/String;

    return-void
.end method

.method public setPrivilege_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->privilege_url:Ljava/lang/String;

    return-void
.end method

.method public setPublishDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->publishDate:J

    return-void
.end method

.method public setRealDownCount(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->realDownCount:I

    return-void
.end method

.method public setRisky(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->risky:I

    return-void
.end method

.method public setSafeCertification(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->safeCertification:I

    return-void
.end method

.method public setSharepoints(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->sharepoints:Ljava/lang/String;

    return-void
.end method

.method public setShortDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->shortDesc:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->size:I

    return-void
.end method

.method public setSmsSupport(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->smsSupport:Ljava/lang/String;

    return-void
.end method

.method public setSnapList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean$SnapListBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->snapList:Ljava/util/List;

    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->targetUrl:Ljava/lang/String;

    return-void
.end method

.method public setTipContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->tipContent:Ljava/lang/String;

    return-void
.end method

.method public setTipTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->tipTitle:Ljava/lang/String;

    return-void
.end method

.method public setTypeBoneId(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->typeBoneId:I

    return-void
.end method

.method public setTypeInfoId(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->typeInfoId:I

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->typeName:Ljava/lang/String;

    return-void
.end method

.method public setUnDownloadable(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->unDownloadable:I

    return-void
.end method

.method public setUpdateDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->updateDesc:Ljava/lang/String;

    return-void
.end method

.method public setVImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->vImg:Ljava/lang/String;

    return-void
.end method

.method public setVState(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->vState:Ljava/lang/Object;

    return-void
.end method

.method public setVcNum(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->vcNum:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->version:Ljava/lang/String;

    return-void
.end method

.method public setVersioncode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->versioncode:Ljava/lang/String;

    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameDetailsResult$DataBean$AppInfoBean;->vid:Ljava/lang/String;

    return-void
.end method
