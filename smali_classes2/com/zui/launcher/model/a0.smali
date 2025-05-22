.class public final synthetic Lcom/zui/launcher/model/a0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Landroid/os/UserHandle;

.field public final synthetic b:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/a0;->a:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/zui/launcher/model/a0;->b:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/a0;->a:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/zui/launcher/model/a0;->b:Ljava/util/HashSet;

    check-cast p1, Lcom/zui/launcher/model/ItemInstallQueue$a;

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/model/ItemInstallQueue;->o(Landroid/os/UserHandle;Ljava/util/HashSet;Lcom/zui/launcher/model/ItemInstallQueue$a;)Z

    move-result p0

    return p0
.end method
