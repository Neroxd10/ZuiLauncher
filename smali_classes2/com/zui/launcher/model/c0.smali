.class public final synthetic Lcom/zui/launcher/model/c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/PersistedItemArray$ItemFactory;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/ItemInstallQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/ItemInstallQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/c0;->a:Lcom/zui/launcher/model/ItemInstallQueue;

    return-void
.end method


# virtual methods
.method public final createInfo(ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/zui/launcher/ItemInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/c0;->a:Lcom/zui/launcher/model/ItemInstallQueue;

    invoke-static {p0, p1, p2, p3}, Lcom/zui/launcher/model/ItemInstallQueue;->j(Lcom/zui/launcher/model/ItemInstallQueue;ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/zui/launcher/model/ItemInstallQueue$a;

    move-result-object p0

    return-object p0
.end method
