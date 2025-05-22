.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog$CalllogComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalllogComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x468a1f7ea440c365L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    if-nez p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    iget-object p0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->number:Ljava/lang/String;

    const-string p1, ""

    if-nez p0, :cond_4

    move-object p0, p1

    :cond_4
    iget-object p2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->number:Ljava/lang/String;

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog$CalllogComparator;->compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;)I

    move-result p0

    return p0
.end method
