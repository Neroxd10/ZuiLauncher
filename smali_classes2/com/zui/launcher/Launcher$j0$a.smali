.class Lcom/zui/launcher/Launcher$j0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher$j0;->actionByNetworkInfo(Landroid/net/NetworkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/NetworkInfo;

.field final synthetic b:Lcom/zui/launcher/Launcher$j0;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher$j0;Landroid/net/NetworkInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$j0$a;->b:Lcom/zui/launcher/Launcher$j0;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$j0$a;->a:Landroid/net/NetworkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher$j0$a;->b:Lcom/zui/launcher/Launcher$j0;

    iget-object v1, v0, Lcom/zui/launcher/Launcher$j0;->b:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$j0$a;->a:Landroid/net/NetworkInfo;

    iget-object v0, v0, Lcom/zui/launcher/Launcher$j0;->a:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static {v1, p0, v0}, Lcom/zui/launcher/Launcher;->F(Lcom/zui/launcher/Launcher;Landroid/net/NetworkInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V

    return-void
.end method
