.class Lcom/zui/launcher/LauncherModel$q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherModel$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->getItemInfoForPackageName(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/UserHandle;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel$q;->a:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$q;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 0

    if-eqz p4, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/LauncherModel$q;->a:Landroid/os/UserHandle;

    invoke-virtual {p4, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/zui/launcher/LauncherModel$q;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    instance-of p1, p2, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p1, :cond_2

    check-cast p2, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p2}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$q;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
