.class public final synthetic Lcom/zui/launcher/model/k1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/k1;->a:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/k1;->a:Ljava/util/HashSet;

    invoke-static {p0, p1}, Lcom/zui/launcher/model/PackageInstallStateChangedTask;->i(Ljava/util/HashSet;Lcom/zui/launcher/LauncherModel$Callbacks;)V

    return-void
.end method
