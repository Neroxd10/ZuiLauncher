.class Lcom/zui/launcher/model/z1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zui/launcher/ItemInfo;

.field final synthetic b:Lcom/zui/launcher/model/ItemInstallQueue;


# direct methods
.method constructor <init>(Lcom/zui/launcher/model/ItemInstallQueue;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/model/z1;->b:Lcom/zui/launcher/model/ItemInstallQueue;

    iput-object p2, p0, Lcom/zui/launcher/model/z1;->a:Lcom/zui/launcher/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/model/z1;->b:Lcom/zui/launcher/model/ItemInstallQueue;

    invoke-static {v0}, Lcom/zui/launcher/model/ItemInstallQueue;->a(Lcom/zui/launcher/model/ItemInstallQueue;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/model/z1;->b:Lcom/zui/launcher/model/ItemInstallQueue;

    invoke-static {v1}, Lcom/zui/launcher/model/ItemInstallQueue;->a(Lcom/zui/launcher/model/ItemInstallQueue;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/model/z1;->a:Lcom/zui/launcher/ItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    check-cast p0, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const p0, 0x7f1206a3

    invoke-virtual {v1, p0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
