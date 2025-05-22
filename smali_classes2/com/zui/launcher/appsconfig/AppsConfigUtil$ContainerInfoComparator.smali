.class public Lcom/zui/launcher/appsconfig/AppsConfigUtil$ContainerInfoComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/appsconfig/AppsConfigUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContainerInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/appsconfig/AppsConfigUtil$ContainerInfoComparator;->a:I

    iput p2, p0, Lcom/zui/launcher/appsconfig/AppsConfigUtil$ContainerInfoComparator;->b:I

    return-void
.end method


# virtual methods
.method public final compare(Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;)I
    .locals 4

    iget v0, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->screen:I

    iget v1, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->cellX:I

    iget p1, p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->cellY:I

    iget v2, p0, Lcom/zui/launcher/appsconfig/AppsConfigUtil$ContainerInfoComparator;->a:I

    iget v3, p0, Lcom/zui/launcher/appsconfig/AppsConfigUtil$ContainerInfoComparator;->b:I

    invoke-static {v0, v1, p1, v2, v3}, Lcom/zui/launcher/appsconfig/AppsConfigUtil;->getPositionIndex(IIIII)I

    move-result p1

    iget v0, p2, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->screen:I

    iget v1, p2, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->cellX:I

    iget p2, p2, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;->cellY:I

    iget v2, p0, Lcom/zui/launcher/appsconfig/AppsConfigUtil$ContainerInfoComparator;->a:I

    iget p0, p0, Lcom/zui/launcher/appsconfig/AppsConfigUtil$ContainerInfoComparator;->b:I

    invoke-static {v0, v1, p2, v2, p0}, Lcom/zui/launcher/appsconfig/AppsConfigUtil;->getPositionIndex(IIIII)I

    move-result p0

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ge p1, p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

    check-cast p2, Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/appsconfig/AppsConfigUtil$ContainerInfoComparator;->compare(Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;Lcom/zui/launcher/appsconfig/AppsConfigHandler$ContainerInfo;)I

    move-result p0

    return p0
.end method
