.class Lcom/zui/launcher/LauncherModel$a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zui/launcher/ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/LauncherModel$k;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/LauncherModel$a0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)I
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez p2, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    iget p0, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    sub-int/2addr p0, v0

    if-eqz p0, :cond_3

    return p0

    :cond_3
    iget p0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/zui/launcher/ItemInfo;

    check-cast p2, Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/LauncherModel$a0;->a(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)I

    move-result p0

    return p0
.end method
