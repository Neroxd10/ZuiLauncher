.class Lcom/zui/internal/app/DialogController$DialogParams$d;
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
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lcom/zui/internal/app/DialogController;

.field final synthetic c:Lcom/zui/internal/app/DialogController$DialogParams;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/DialogController$DialogParams;Landroid/widget/ListView;Lcom/zui/internal/app/DialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$d;->c:Lcom/zui/internal/app/DialogController$DialogParams;

    iput-object p2, p0, Lcom/zui/internal/app/DialogController$DialogParams$d;->a:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/zui/internal/app/DialogController$DialogParams$d;->b:Lcom/zui/internal/app/DialogController;

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

    iget-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$d;->c:Lcom/zui/internal/app/DialogController$DialogParams;

    iget-object p1, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItems:[Z

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/zui/internal/app/DialogController$DialogParams$d;->a:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    :cond_0
    iget-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$d;->c:Lcom/zui/internal/app/DialogController$DialogParams;

    iget-object p1, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lcom/zui/internal/app/DialogController$DialogParams$d;->b:Lcom/zui/internal/app/DialogController;

    iget-object p2, p2, Lcom/zui/internal/app/DialogController;->mDialogInterface:Landroid/content/DialogInterface;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController$DialogParams$d;->a:Landroid/widget/ListView;

    invoke-virtual {p0, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p0

    invoke-interface {p1, p2, p3, p0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
