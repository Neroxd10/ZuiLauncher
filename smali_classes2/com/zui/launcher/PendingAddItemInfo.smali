.class public Lcom/zui/launcher/PendingAddItemInfo;
.super Lcom/zui/launcher/ItemInfo;
.source ""


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public dropPos:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/PendingAddItemInfo;->dropPos:[I

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/PendingAddItemInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zui/launcher/ItemInfo;-><init>(Lcom/zui/launcher/ItemInfo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/PendingAddItemInfo;->dropPos:[I

    iget-object v0, p1, Lcom/zui/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/zui/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/zui/launcher/PendingAddItemInfo;->dropPos:[I

    iput-object p1, p0, Lcom/zui/launcher/PendingAddItemInfo;->dropPos:[I

    return-void
.end method


# virtual methods
.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/zui/launcher/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
