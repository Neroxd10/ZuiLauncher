.class public final synthetic Lcom/zui/launcher/touch/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/Launcher;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/Launcher;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/touch/e;->a:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/touch/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/launcher/touch/e;->c:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/touch/e;->a:Lcom/zui/launcher/Launcher;

    iget-object v1, p0, Lcom/zui/launcher/touch/e;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/touch/e;->c:Landroid/os/UserHandle;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/zui/launcher/touch/ItemClickHandler;->g(Lcom/zui/launcher/Launcher;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/DialogInterface;I)V

    return-void
.end method
