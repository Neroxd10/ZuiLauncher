.class Lcom/zui/launcher/Workspace$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Z

.field final synthetic d:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;ZLjava/lang/Runnable;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$k;->d:Lcom/zui/launcher/Workspace;

    iput-boolean p2, p0, Lcom/zui/launcher/Workspace$k;->a:Z

    iput-object p3, p0, Lcom/zui/launcher/Workspace$k;->b:Ljava/lang/Runnable;

    iput-boolean p4, p0, Lcom/zui/launcher/Workspace$k;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/Workspace$k;->d:Lcom/zui/launcher/Workspace;

    iget-boolean v1, p0, Lcom/zui/launcher/Workspace$k;->a:Z

    iget-object v2, p0, Lcom/zui/launcher/Workspace$k;->b:Ljava/lang/Runnable;

    iget-boolean p0, p0, Lcom/zui/launcher/Workspace$k;->c:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/zui/launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    return-void
.end method
