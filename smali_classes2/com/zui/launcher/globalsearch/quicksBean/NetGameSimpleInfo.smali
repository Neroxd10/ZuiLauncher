.class public Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/globalsearch/BaseDataModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private iconAddress:Ljava/lang/String;

.field private pkName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->pkName:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->iconAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->versionCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getIconAddress()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->iconAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getPkName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->pkName:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->versionCode:Ljava/lang/String;

    return-object p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetGameSimpleInfo{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pkName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->pkName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", iconAddress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->iconAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", versionCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
