.class public final Lcom/zui/launcher/widget/util/WidgetsTableUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/widget/util/e;->a:Lcom/zui/launcher/widget/util/e;

    sput-object v0, Lcom/zui/launcher/widget/util/WidgetsTableUtils;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/model/WidgetItem;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/model/WidgetItem;Lcom/zui/launcher/model/WidgetItem;)I
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p1, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v4, -0x1

    if-eq v0, v3, :cond_3

    if-eqz v0, :cond_2

    move v2, v4

    :cond_2
    return v2

    :cond_3
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    iget-object p0, p0, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    iget p0, p0, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->rank:I

    iget-object p1, p1, Lcom/zui/launcher/model/WidgetItem;->leosWidgetInfo:Lcom/zui/launcher/LenovoWidgetsProviderInfo;

    iget p1, p1, Lcom/zui/launcher/LenovoWidgetsProviderInfo;->rank:I

    if-le p0, p1, :cond_4

    return v2

    :cond_4
    return v4

    :cond_5
    iget-object v0, p0, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    if-nez v0, :cond_6

    return v4

    :cond_6
    iget-object v0, p0, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/zui/launcher/model/WidgetItem;->widgetInfo:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_7

    return v2

    :cond_7
    iget v0, p0, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    iget v3, p1, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    if-ne v0, v3, :cond_a

    iget p0, p0, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    iget p1, p1, Lcom/zui/launcher/model/WidgetItem;->spanY:I

    if-ne p0, p1, :cond_8

    return v1

    :cond_8
    if-le p0, p1, :cond_9

    goto :goto_2

    :cond_9
    move v2, v4

    :goto_2
    return v2

    :cond_a
    if-le v0, v3, :cond_b

    goto :goto_3

    :cond_b
    move v2, v4

    :goto_3
    return v2
.end method

.method public static groupWidgetItemsIntoTable(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/widget/util/WidgetsTableUtils;->a:Ljava/util/Comparator;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/model/WidgetItem;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/zui/launcher/widget/util/d;->a:Lcom/zui/launcher/widget/util/d;

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/zui/launcher/widget/util/a;->a:Lcom/zui/launcher/widget/util/a;

    invoke-interface {v4, v5, v6}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v2, Lcom/zui/launcher/model/WidgetItem;->spanX:I

    add-int/2addr v5, v4

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v4, p1, -0x1

    if-gt v5, v4, :cond_2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/model/WidgetItem;

    invoke-virtual {v2, v3}, Lcom/zui/launcher/model/WidgetItem;->hasSameType(Lcom/zui/launcher/model/WidgetItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method
