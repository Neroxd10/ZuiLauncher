.class public Lcom/zui/launcher/globalsearch/quicksBean/QuicksInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private crystal:Z

.field private hint:Lcom/zui/launcher/globalsearch/quicksBean/QuicksHint;

.field private is_success:Z

.field private result:Lcom/zui/launcher/globalsearch/quicksBean/QuicksResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHint()Lcom/zui/launcher/globalsearch/quicksBean/QuicksHint;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksInfo;->hint:Lcom/zui/launcher/globalsearch/quicksBean/QuicksHint;

    return-object p0
.end method

.method public getResult()Lcom/zui/launcher/globalsearch/quicksBean/QuicksResult;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksInfo;->result:Lcom/zui/launcher/globalsearch/quicksBean/QuicksResult;

    return-object p0
.end method

.method public isCrystal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksInfo;->crystal:Z

    return p0
.end method

.method public isIs_success()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksInfo;->is_success:Z

    return p0
.end method

.method public setCrystal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksInfo;->crystal:Z

    return-void
.end method

.method public setHint(Lcom/zui/launcher/globalsearch/quicksBean/QuicksHint;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksInfo;->hint:Lcom/zui/launcher/globalsearch/quicksBean/QuicksHint;

    return-void
.end method

.method public setIs_success(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksInfo;->is_success:Z

    return-void
.end method

.method public setResult(Lcom/zui/launcher/globalsearch/quicksBean/QuicksResult;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/QuicksInfo;->result:Lcom/zui/launcher/globalsearch/quicksBean/QuicksResult;

    return-void
.end method
