.class public Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private iconAddress:Ljava/lang/String;

.field private pkName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;
    .locals 4

    new-instance v0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->pkName:Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->iconAddress:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->versionCode:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setIconAddress(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->iconAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setPkName(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->pkName:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setVersionCode(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/NetGameSimpleInfo$Builder;->versionCode:Ljava/lang/String;

    return-object p0
.end method
