.class public final Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;
.super Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;
.source ""

# interfaces
.implements Lcom/zui/launcher/widget/model/WidgetsListBaseEntry$Header;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
        "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry$Header<",
        "Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field public final shortcutsCount:I

.field public final widgetsCount:I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/model/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/model/PackageItemInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;-><init>(Lcom/zui/launcher/model/PackageItemInfo;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/zui/launcher/model/PackageItemInfo;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/model/PackageItemInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;-><init>(Lcom/zui/launcher/model/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/zui/launcher/widget/model/a;->a:Lcom/zui/launcher/widget/model/a;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->count()J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->widgetsCount:I

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->widgetsCount:I

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->shortcutsCount:I

    iput-boolean p4, p0, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/model/WidgetItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;

    iget-object v0, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    iget-object v2, p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    iget-object v2, p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/model/PackageItemInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mTitleSectionName:Ljava/lang/String;

    iget-object v2, p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mTitleSectionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->a:Z

    iget-boolean p1, p1, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->a:Z

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getRank()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isWidgetListShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->a:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    iget-object v1, v1, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic withWidgetListShown()Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->withWidgetListShown()Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;

    move-result-object p0

    return-object p0
.end method

.method public withWidgetListShown()Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;
    .locals 4

    iget-boolean v0, p0, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->a:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;

    iget-object v1, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    iget-object v2, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mTitleSectionName:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;-><init>(Lcom/zui/launcher/model/PackageItemInfo;Ljava/lang/String;Ljava/util/List;Z)V

    return-object v0
.end method
