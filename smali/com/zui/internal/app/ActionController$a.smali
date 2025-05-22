.class Lcom/zui/internal/app/ActionController$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/app/ActionController;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/internal/app/ActionController;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/ActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/ActionController$a;->a:Lcom/zui/internal/app/ActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/ActionController$a;->a:Lcom/zui/internal/app/ActionController;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mDialogInterface:Landroid/content/DialogInterface;

    check-cast p0, Lzui/app/ActionDialog;

    invoke-virtual {p0}, Lzui/app/ActionDialog;->show()V

    return-void
.end method
