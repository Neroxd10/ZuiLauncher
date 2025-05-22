.class Lcom/zui/internal/app/DialogController$DialogParams$a;
.super Landroid/widget/ArrayAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/app/DialogController$DialogParams;->a(Lcom/zui/internal/app/DialogController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lcom/zui/internal/app/DialogController$DialogParams;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/DialogController$DialogParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$a;->b:Lcom/zui/internal/app/DialogController$DialogParams;

    iput-object p6, p0, Lcom/zui/internal/app/DialogController$DialogParams$a;->a:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/internal/app/DialogController$DialogParams$a;->b:Lcom/zui/internal/app/DialogController$DialogParams;

    iget-object p3, p3, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItems:[Z

    if-eqz p3, :cond_0

    aget-boolean p3, p3, p1

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController$DialogParams$a;->a:Landroid/widget/ListView;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-object p2
.end method
