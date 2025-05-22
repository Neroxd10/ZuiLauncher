.class public final synthetic Lcom/zui/launcher/model/e0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/e0;->a:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/e0;->a:Landroid/os/UserHandle;

    check-cast p1, Lcom/zui/launcher/model/ItemInstallQueue$a;

    invoke-static {p0, p1}, Lcom/zui/launcher/model/ItemInstallQueue;->l(Landroid/os/UserHandle;Lcom/zui/launcher/model/ItemInstallQueue$a;)Z

    move-result p0

    return p0
.end method
