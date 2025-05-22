.class public Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/allapps/AlphabeticalAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterItem"
.end annotation


# instance fields
.field public appIndex:I

.field public appInfo:Lcom/zui/launcher/AppInfo;

.field public position:I

.field public rowAppIndex:I

.field public rowIndex:I

.field public sectionName:Ljava/lang/String;

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/zui/launcher/AppInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    return-void
.end method

.method public static asAllAppsDivider(I)Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    new-instance v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    const/16 v1, 0x10

    iput v1, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    iput p0, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    return-object v0
.end method

.method public static asApp(ILjava/lang/String;Lcom/zui/launcher/AppInfo;I)Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    new-instance v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    iput p0, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    iput-object p1, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    iput-object p2, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/zui/launcher/AppInfo;

    iput p3, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    return-object v0
.end method

.method public static asEmptySearch(I)Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    new-instance v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    iput p0, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    return-object v0
.end method

.method public static asMarketSearch(I)Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2

    new-instance v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    const/16 v1, 0x8

    iput v1, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    iput p0, v0, Lcom/zui/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    return-object v0
.end method
