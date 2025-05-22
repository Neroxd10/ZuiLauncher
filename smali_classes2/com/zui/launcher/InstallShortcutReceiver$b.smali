.class Lcom/zui/launcher/InstallShortcutReceiver$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/InstallShortcutReceiver;->j(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/zui/launcher/ItemInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/InstallShortcutReceiver$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/InstallShortcutReceiver$b;->b:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/InstallShortcutReceiver$b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/InstallShortcutReceiver$b;->b:Lcom/zui/launcher/ItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    check-cast p0, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const p0, 0x7f1206a4

    invoke-virtual {v1, p0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
