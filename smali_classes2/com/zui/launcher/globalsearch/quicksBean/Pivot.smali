.class public Lcom/zui/launcher/globalsearch/quicksBean/Pivot;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;->x:F

    iput v0, p0, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;->y:F

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;->x:F

    iput p2, p0, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;->y:F

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;->x:F

    return p0
.end method

.method public getY()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;->y:F

    return p0
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;->y:F

    return-void
.end method
