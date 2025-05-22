.class public abstract Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/widget/model/WidgetsListBaseEntry$Rank;,
        Lcom/zui/launcher/widget/model/WidgetsListBaseEntry$Header;
    }
.end annotation


# static fields
.field public static final RANK_WIDGETS_LIST_CONTENT:I = 0x3

.field public static final RANK_WIDGETS_LIST_HEADER:I = 0x1

.field public static final RANK_WIDGETS_LIST_SEARCH_HEADER:I = 0x2


# instance fields
.field public final mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

.field public final mTitleSectionName:Ljava/lang/String;

.field public final mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/launcher/model/PackageItemInfo;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    iput-object p2, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mTitleSectionName:Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/zui/launcher/widget/WidgetItemComparator;

    invoke-direct {p2}, Lcom/zui/launcher/widget/WidgetItemComparator;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract getRank()I
.end method
