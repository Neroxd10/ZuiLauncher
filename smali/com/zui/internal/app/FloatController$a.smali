.class Lcom/zui/internal/app/FloatController$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/app/FloatController;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/internal/app/FloatController;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/FloatController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/FloatController$a;->a:Lcom/zui/internal/app/FloatController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/zui/internal/app/FloatController$a;->a:Lcom/zui/internal/app/FloatController;

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mDialogInterface:Landroid/content/DialogInterface;

    check-cast v0, Lzui/app/FloatDialog;

    invoke-static {p0}, Lcom/zui/internal/app/FloatController;->w(Lcom/zui/internal/app/FloatController;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Lzui/app/FloatDialog;->showAtLocation(Landroid/graphics/Rect;)V

    return-void
.end method
