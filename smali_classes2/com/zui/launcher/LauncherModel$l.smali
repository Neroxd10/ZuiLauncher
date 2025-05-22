.class Lcom/zui/launcher/LauncherModel$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->loadLookupKeys()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel$l;->a:Lcom/zui/launcher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/LauncherModel$l$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/LauncherModel$l$a;-><init>(Lcom/zui/launcher/LauncherModel$l;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
