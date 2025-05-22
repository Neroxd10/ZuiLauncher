.class public Lcom/zui/launcher/model/LocateItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/zui/launcher/ItemInfo;

.field private b:Lcom/zui/launcher/ItemInfo;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/model/LocateItem;->a:Lcom/zui/launcher/ItemInfo;

    iput-object v0, p0, Lcom/zui/launcher/model/LocateItem;->b:Lcom/zui/launcher/ItemInfo;

    iput-object p1, p0, Lcom/zui/launcher/model/LocateItem;->a:Lcom/zui/launcher/ItemInfo;

    iput-object p2, p0, Lcom/zui/launcher/model/LocateItem;->b:Lcom/zui/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public getFolderInfo()Lcom/zui/launcher/ItemInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/LocateItem;->b:Lcom/zui/launcher/ItemInfo;

    return-object p0
.end method

.method public getShortcutInfo()Lcom/zui/launcher/ItemInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/LocateItem;->a:Lcom/zui/launcher/ItemInfo;

    return-object p0
.end method
