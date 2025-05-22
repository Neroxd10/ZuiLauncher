.class public final synthetic Lcom/zui/launcher/model/d0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/d0;->a:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/d0;->a:Landroid/os/UserHandle;

    check-cast p1, Lcom/zui/launcher/model/ItemInstallQueue$a;

    invoke-static {p0, p1}, Lcom/zui/launcher/model/ItemInstallQueue;->m(Landroid/os/UserHandle;Lcom/zui/launcher/model/ItemInstallQueue$a;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object p0

    return-object p0
.end method
