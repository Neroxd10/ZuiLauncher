.class Lcom/zui/launcher/Utilities$g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Utilities$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Utilities$g;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Utilities$g;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Utilities$g$a;->a:Lcom/zui/launcher/Utilities$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Utilities$g$a;->a:Lcom/zui/launcher/Utilities$g;

    iget-object v0, v0, Lcom/zui/launcher/Utilities$g;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->switchLayoutIfSettingsChanged(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/zui/launcher/Utilities$g$a;->a:Lcom/zui/launcher/Utilities$g;

    iget-object p0, p0, Lcom/zui/launcher/Utilities$g;->b:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
