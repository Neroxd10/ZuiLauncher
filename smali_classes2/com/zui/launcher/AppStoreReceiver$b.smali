.class Lcom/zui/launcher/AppStoreReceiver$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/AppStoreReceiver;->removeRecommendItemBackground(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/AppStoreReceiver;


# direct methods
.method constructor <init>(Lcom/zui/launcher/AppStoreReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/AppStoreReceiver$b;->a:Lcom/zui/launcher/AppStoreReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/AppStoreReceiver$b;->a:Lcom/zui/launcher/AppStoreReceiver;

    invoke-static {p0}, Lcom/zui/launcher/AppStoreReceiver;->a(Lcom/zui/launcher/AppStoreReceiver;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->stripEmptyScreens()V

    return-void
.end method
