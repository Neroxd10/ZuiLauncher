.class Lcom/zui/launcher/category/AllAppsCategory$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/category/AllAppsCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/zui/launcher/category/AllAppsCategory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;)I
    .locals 0

    iget p0, p1, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;->a:I

    iget p1, p2, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;->a:I

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;

    check-cast p2, Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/category/AllAppsCategory$a;->a(Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;Lcom/zui/launcher/category/AllAppsCategory$CategoryInfo;)I

    move-result p0

    return p0
.end method
