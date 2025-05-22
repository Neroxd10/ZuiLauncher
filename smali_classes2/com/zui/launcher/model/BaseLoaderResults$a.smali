.class Lcom/zui/launcher/model/BaseLoaderResults$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/model/BaseLoaderResults;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zui/launcher/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/zui/launcher/model/BaseLoaderResults;II)V
    .locals 0

    iput p2, p0, Lcom/zui/launcher/model/BaseLoaderResults$a;->a:I

    iput p3, p0, Lcom/zui/launcher/model/BaseLoaderResults$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)I
    .locals 3

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne v0, v1, :cond_2

    const/16 v1, -0x65

    if-eq v0, v1, :cond_1

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v1, p0, Lcom/zui/launcher/model/BaseLoaderResults$a;->a:I

    mul-int/2addr v0, v1

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget p0, p0, Lcom/zui/launcher/model/BaseLoaderResults$a;->b:I

    mul-int/2addr v2, p0

    add-int/2addr v0, v2

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    add-int/2addr v0, p1

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    mul-int/2addr p1, v1

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    mul-int/2addr v1, p0

    add-int/2addr p1, v1

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    add-int/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :cond_1
    iget p0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/zui/launcher/ItemInfo;

    check-cast p2, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/model/BaseLoaderResults$a;->a(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)I

    move-result p0

    return p0
.end method
