.class public final synthetic Lcom/zui/launcher/a3;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/Workspace$ItemOperator;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/a3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/launcher/a3;->b:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/a3;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/a3;->b:Landroid/os/UserHandle;

    invoke-static {v0, p0, p1, p2}, Lcom/zui/launcher/Workspace;->n0(Ljava/lang/String;Landroid/os/UserHandle;Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
