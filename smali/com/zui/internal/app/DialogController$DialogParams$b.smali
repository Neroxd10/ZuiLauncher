.class Lcom/zui/internal/app/DialogController$DialogParams$b;
.super Landroid/widget/CursorAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/app/DialogController$DialogParams;->a(Lcom/zui/internal/app/DialogController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field final synthetic c:Landroid/widget/ListView;

.field final synthetic d:Lcom/zui/internal/app/DialogController;

.field final synthetic e:Lcom/zui/internal/app/DialogController$DialogParams;


# direct methods
.method constructor <init>(Lcom/zui/internal/app/DialogController$DialogParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lcom/zui/internal/app/DialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$b;->e:Lcom/zui/internal/app/DialogController$DialogParams;

    iput-object p5, p0, Lcom/zui/internal/app/DialogController$DialogParams$b;->c:Landroid/widget/ListView;

    iput-object p6, p0, Lcom/zui/internal/app/DialogController$DialogParams$b;->d:Lcom/zui/internal/app/DialogController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/internal/app/DialogController$DialogParams$b;->e:Lcom/zui/internal/app/DialogController$DialogParams;

    iget-object p2, p2, Lcom/zui/internal/app/DialogController$DialogParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/zui/internal/app/DialogController$DialogParams$b;->a:I

    iget-object p2, p0, Lcom/zui/internal/app/DialogController$DialogParams$b;->e:Lcom/zui/internal/app/DialogController$DialogParams;

    iget-object p2, p2, Lcom/zui/internal/app/DialogController$DialogParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$b;->b:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    const p2, 0x1020014

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iget p2, p0, Lcom/zui/internal/app/DialogController$DialogParams$b;->a:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$b;->c:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    iget p0, p0, Lcom/zui/internal/app/DialogController$DialogParams$b;->b:I

    invoke-interface {p3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    iget-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams$b;->e:Lcom/zui/internal/app/DialogController$DialogParams;

    iget-object p1, p1, Lcom/zui/internal/app/DialogController$DialogParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController$DialogParams$b;->d:Lcom/zui/internal/app/DialogController;

    iget p0, p0, Lcom/zui/internal/app/DialogController;->mMultiChoiceItemLayout:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
