.class public Lcom/zui/internal/app/DialogController$DialogParams;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/DialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogParams"
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mCustomizedLF:Z

.field public mHideBtnPanelDivider:Z

.field public mIconAttrId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mIsVerticalBtn:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mParentContext:Landroid/content/Context;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleIcon:Landroid/graphics/drawable/Drawable;

.field public mTitleIconId:I

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItem:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitleIconId:I

    iput v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mIconAttrId:I

    iput-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private a(Lcom/zui/internal/app/DialogController;)V
    .locals 12

    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Lcom/zui/internal/app/DialogController;->mListLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsMultiChoice:Z

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCursor:Landroid/database/Cursor;

    if-nez v6, :cond_0

    new-instance v1, Lcom/zui/internal/app/DialogController$DialogParams$a;

    iget-object v5, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    iget v6, p1, Lcom/zui/internal/app/DialogController;->mMultiChoiceItemLayout:I

    const v7, 0x1020014

    iget-object v8, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    move-object v3, v1

    move-object v4, p0

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/zui/internal/app/DialogController$DialogParams$a;-><init>(Lcom/zui/internal/app/DialogController$DialogParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    goto :goto_2

    :cond_0
    new-instance v1, Lcom/zui/internal/app/DialogController$DialogParams$b;

    iget-object v5, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v8, v0

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/zui/internal/app/DialogController$DialogParams$b;-><init>(Lcom/zui/internal/app/DialogController$DialogParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lcom/zui/internal/app/DialogController;)V

    goto :goto_2

    :cond_1
    iget-boolean v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/zui/internal/app/DialogController;->mSingleChoiceItemLayout:I

    goto :goto_0

    :cond_2
    iget v1, p1, Lcom/zui/internal/app/DialogController;->mListItemLayout:I

    iput-boolean v10, p1, Lcom/zui/internal/app/DialogController;->mIsCommonList:Z

    :goto_0
    move v5, v1

    iget-object v6, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCursor:Landroid/database/Cursor;

    const v1, 0x1020014

    if-eqz v6, :cond_3

    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    iget-object v4, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    new-array v7, v10, [Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mLabelColumn:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    new-array v11, v10, [I

    aput v1, v11, v8

    move-object v3, v9

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    move-object v1, v9

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/zui/internal/app/DialogController$e;

    iget-object v4, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/zui/internal/app/DialogController$e;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    :goto_1
    move-object v1, v3

    :goto_2
    iput-object v1, p1, Lcom/zui/internal/app/DialogController;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCheckedItem:I

    invoke-static {p1, v1}, Lcom/zui/internal/app/DialogController;->d(Lcom/zui/internal/app/DialogController;I)I

    iget-object v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_5

    new-instance v1, Lcom/zui/internal/app/DialogController$DialogParams$c;

    invoke-direct {v1, p0, p1}, Lcom/zui/internal/app/DialogController$DialogParams$c;-><init>(Lcom/zui/internal/app/DialogController$DialogParams;Lcom/zui/internal/app/DialogController;)V

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_6

    new-instance v1, Lcom/zui/internal/app/DialogController$DialogParams$d;

    invoke-direct {v1, p0, v0, p1}, Lcom/zui/internal/app/DialogController$DialogParams$d;-><init>(Lcom/zui/internal/app/DialogController$DialogParams;Landroid/widget/ListView;Lcom/zui/internal/app/DialogController;)V

    goto :goto_3

    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_7
    iget-boolean v1, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_5

    :cond_8
    iget-boolean p0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsMultiChoice:Z

    if-eqz p0, :cond_9

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_9
    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p1, Lcom/zui/internal/app/DialogController;->mListView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public apply(Lcom/zui/internal/app/DialogController;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setTitleIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mTitleIconId:I

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setTitleIcon(I)V

    :cond_3
    iget v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mIconAttrId:I

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setTitleIcon(I)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/zui/internal/app/DialogController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_5
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v2, p1, Lcom/zui/internal/app/DialogController;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/zui/internal/app/DialogController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_6
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/zui/internal/app/DialogController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_7
    iget-boolean v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mIsVerticalBtn:Z

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setVerticalAlignedButtons(Z)V

    iget-boolean v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mHideBtnPanelDivider:Z

    invoke-static {p1, v0}, Lcom/zui/internal/app/DialogController;->c(Lcom/zui/internal/app/DialogController;Z)Z

    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_a

    :cond_9
    invoke-direct {p0, p1}, Lcom/zui/internal/app/DialogController$DialogParams;->a(Lcom/zui/internal/app/DialogController;)V

    iget-object v0, p1, Lcom/zui/internal/app/DialogController;->mListViewSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-object v1, p1, Lcom/zui/internal/app/DialogController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    iget-object v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setView(Landroid/view/View;)V

    goto :goto_1

    :cond_b
    iget v0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mViewLayoutResId:I

    if-eqz v0, :cond_c

    invoke-virtual {p1, v0}, Lcom/zui/internal/app/DialogController;->setView(I)V

    :cond_c
    :goto_1
    iget-boolean p0, p0, Lcom/zui/internal/app/DialogController$DialogParams;->mCustomizedLF:Z

    iput-boolean p0, p1, Lcom/zui/internal/app/DialogController;->mCustomizedLF:Z

    return-void
.end method
