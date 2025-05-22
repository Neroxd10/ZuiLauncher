.class public Lcom/zui/launcher/Utilities$SearchKeyWordComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchKeyWordComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zui/launcher/Utilities$SearchKeyWord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zui/launcher/Utilities$SearchKeyWord;Lcom/zui/launcher/Utilities$SearchKeyWord;)I
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 v1, -0x1

    if-nez p2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p1, Lcom/zui/launcher/Utilities$SearchKeyWord;->searchTime:J

    iget-wide p1, p2, Lcom/zui/launcher/Utilities$SearchKeyWord;->searchTime:J

    sub-long/2addr v2, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-lez p1, :cond_3

    return v1

    :cond_3
    if-gez p1, :cond_4

    return v0

    :cond_4
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/zui/launcher/Utilities$SearchKeyWord;

    check-cast p2, Lcom/zui/launcher/Utilities$SearchKeyWord;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/Utilities$SearchKeyWordComparator;->compare(Lcom/zui/launcher/Utilities$SearchKeyWord;Lcom/zui/launcher/Utilities$SearchKeyWord;)I

    move-result p0

    return p0
.end method
