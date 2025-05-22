.class public Lcom/zui/launcher/widget/PendingAddShortcutInfo;
.super Lcom/zui/launcher/PendingAddItemInfo;
.source ""


# instance fields
.field public activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/PendingAddItemInfo;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/PendingAddShortcutInfo;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    invoke-virtual {p1}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->getItemType()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 p1, -0x69

    iput p1, p0, Lcom/zui/launcher/ItemInfo;->container:I

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/PendingAddShortcutInfo;-><init>(Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;)V

    iput-object p2, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    return-void
.end method
