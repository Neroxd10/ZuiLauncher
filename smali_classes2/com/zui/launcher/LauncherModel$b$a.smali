.class Lcom/zui/launcher/LauncherModel$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/LauncherModel$Callbacks;

.field final synthetic b:Lcom/zui/launcher/LauncherModel$b;


# direct methods
.method constructor <init>(Lcom/zui/launcher/LauncherModel$b;Lcom/zui/launcher/LauncherModel$Callbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/LauncherModel$b$a;->b:Lcom/zui/launcher/LauncherModel$b;

    iput-object p2, p0, Lcom/zui/launcher/LauncherModel$b$a;->a:Lcom/zui/launcher/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/LauncherModel$b$a;->a:Lcom/zui/launcher/LauncherModel$Callbacks;

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$b$a;->b:Lcom/zui/launcher/LauncherModel$b;

    iget-object p0, p0, Lcom/zui/launcher/LauncherModel$b;->a:Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-interface {v0, p0}, Lcom/zui/launcher/LauncherModel$Callbacks;->getDownloadStatus(Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method
