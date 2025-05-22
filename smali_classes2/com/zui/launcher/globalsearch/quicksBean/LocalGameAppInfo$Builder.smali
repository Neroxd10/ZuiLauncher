.class public Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private intent:Ljava/lang/String;

.field private packName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;
    .locals 4

    new-instance v0, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;->packName:Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;->bitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;->intent:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setIntent(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;->intent:Ljava/lang/String;

    return-object p0
.end method

.method public setPackName(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;->packName:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setUser(Landroid/os/UserHandle;)Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/quicksBean/LocalGameAppInfo$Builder;->user:Landroid/os/UserHandle;

    return-object p0
.end method
