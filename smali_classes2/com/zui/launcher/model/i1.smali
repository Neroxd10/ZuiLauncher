.class public final synthetic Lcom/zui/launcher/model/i1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/PackageInstallStateChangedTask;

.field public final synthetic b:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/PackageInstallStateChangedTask;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/i1;->a:Lcom/zui/launcher/model/PackageInstallStateChangedTask;

    iput-object p2, p0, Lcom/zui/launcher/model/i1;->b:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/i1;->a:Lcom/zui/launcher/model/PackageInstallStateChangedTask;

    iget-object p0, p0, Lcom/zui/launcher/model/i1;->b:Ljava/util/HashSet;

    check-cast p1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/model/PackageInstallStateChangedTask;->h(Ljava/util/HashSet;Lcom/zui/launcher/WorkspaceItemInfo;)V

    return-void
.end method
