.class public Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mPivot:[Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

.field private orientation:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->mPivot:[Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    return-void
.end method


# virtual methods
.method public getHotseatPivot()Lcom/zui/launcher/globalsearch/quicksBean/Pivot;
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->mPivot:[Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    const/4 v0, 0x2

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getIndicatorPivot()Lcom/zui/launcher/globalsearch/quicksBean/Pivot;
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->mPivot:[Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->orientation:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->type:I

    return p0
.end method

.method public getWorkspacePivot()Lcom/zui/launcher/globalsearch/quicksBean/Pivot;
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->mPivot:[Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public setHotseatPivot(Lcom/zui/launcher/globalsearch/quicksBean/Pivot;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->mPivot:[Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    const/4 v0, 0x2

    aput-object p1, p0, v0

    return-void
.end method

.method public setIndicatorPivot(Lcom/zui/launcher/globalsearch/quicksBean/Pivot;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->mPivot:[Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    return-void
.end method

.method public setOrientation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "land"

    goto :goto_0

    :cond_0
    const-string p1, "port"

    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->orientation:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->type:I

    return-void
.end method

.method public setWorkspacePivot(Lcom/zui/launcher/globalsearch/quicksBean/Pivot;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->mPivot:[Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    return-void
.end method
