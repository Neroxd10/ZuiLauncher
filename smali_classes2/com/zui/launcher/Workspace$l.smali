.class Lcom/zui/launcher/Workspace$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/Workspace$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$l;->a:Lcom/zui/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSwitch(Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Workspace$l;->a:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->cleanReorderManual()V

    return-void
.end method
