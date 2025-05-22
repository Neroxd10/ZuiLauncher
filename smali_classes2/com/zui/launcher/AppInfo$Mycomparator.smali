.class public Lcom/zui/launcher/AppInfo$Mycomparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mycomparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zui/launcher/AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/zui/launcher/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zui/launcher/AppInfo;Lcom/zui/launcher/AppInfo;)I
    .locals 0

    iget p0, p1, Lcom/zui/launcher/AppInfo;->h:I

    iget p1, p2, Lcom/zui/launcher/AppInfo;->h:I

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/zui/launcher/AppInfo;

    check-cast p2, Lcom/zui/launcher/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/AppInfo$Mycomparator;->compare(Lcom/zui/launcher/AppInfo;Lcom/zui/launcher/AppInfo;)I

    move-result p0

    return p0
.end method
