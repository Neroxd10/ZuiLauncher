.class Lcom/zui/internal/app/DialogController$DialogParams$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/app/DialogController$DialogParams;->a(Lcom/zui/internal/app/DialogController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/internal/app/DialogController;

.field final synthetic b:Lcom/zui/internal/app/DialogController$DialogParams;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/DialogController$DialogParams;Lcom/zui/internal/app/DialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$c;->b:Lcom/zui/internal/app/DialogController$DialogParams;

    iput-object p2, p0, Lcom/zui/internal/app/DialogController$DialogParams$c;->a:Lcom/zui/internal/app/DialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$c;->b:Lcom/zui/internal/app/DialogController$DialogParams;

    iget-object p1, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lcom/zui/internal/app/DialogController$DialogParams$c;->a:Lcom/zui/internal/app/DialogController;

    iget-object p2, p2, Lcom/zui/internal/app/DialogController;->mDialogInterface:Landroid/content/DialogInterface;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$c;->b:Lcom/zui/internal/app/DialogController$DialogParams;

    iget-boolean p1, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mIsSingleChoice:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController$DialogParams$c;->a:Lcom/zui/internal/app/DialogController;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mDialogInterface:Landroid/content/DialogInterface;

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
