.class public Lcom/zui/launcher/model/PackageItemInfo;
.super Lcom/zui/launcher/ItemInfoWithIcon;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/model/PackageItemInfo$Category;
    }
.end annotation


# static fields
.field public static final CONVERSATIONS:I = 0x1

.field public static final NO_CATEGORY:I = 0x0

.field public static final RECOMMENDS:I = 0x2


# instance fields
.field public final category:I

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/model/PackageItemInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfoWithIcon;-><init>()V

    iget-object v0, p1, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/zui/launcher/model/PackageItemInfo;->category:I

    iput p1, p0, Lcom/zui/launcher/model/PackageItemInfo;->category:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/model/PackageItemInfo;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfoWithIcon;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/zui/launcher/model/PackageItemInfo;->category:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/zui/launcher/ItemInfoWithIcon;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/model/PackageItemInfo;->clone()Lcom/zui/launcher/model/PackageItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/zui/launcher/model/PackageItemInfo;
    .locals 1

    new-instance v0, Lcom/zui/launcher/model/PackageItemInfo;

    invoke-direct {v0, p0}, Lcom/zui/launcher/model/PackageItemInfo;-><init>(Lcom/zui/launcher/model/PackageItemInfo;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/model/PackageItemInfo;->clone()Lcom/zui/launcher/model/PackageItemInfo;

    move-result-object p0

    return-object p0
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/zui/launcher/ItemInfoWithIcon;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lcom/zui/launcher/model/PackageItemInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/zui/launcher/model/PackageItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/zui/launcher/model/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
