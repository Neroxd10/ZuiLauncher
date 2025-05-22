.class public Lcom/zui/internal/app/ActionController;
.super Lcom/zui/internal/app/DialogController;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/internal/app/ActionController$ActionParams;
    }
.end annotation


# static fields
.field private static H:I

.field private static I:I


# instance fields
.field private A:I

.field private B:Lcom/zui/internal/menu/MenuBuilder;

.field private C:Lzui/widget/ZuiMenuListAdapter;

.field private D:Lzui/app/ActionDialog$MenuAdapter;

.field private E:I

.field private F:I

.field private G:I

.field public mMessageTitle:Z

.field protected mOptionListLayout:I

.field protected mOptionListitemLayout:I

.field public mShowTitleDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Z)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/internal/app/DialogController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    sget-object p2, Lzui/platform/R$styleable;->ActionDialog:[I

    sget p3, Lzui/platform/R$attr;->actionDialogStyle:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p4, :cond_0

    sget p3, Lzui/platform/R$styleable;->ActionDialog_topButtonLayout:I

    sget p4, Lzui/platform/R$layout;->action_dialog_top_button:I

    goto :goto_0

    :cond_0
    sget p3, Lzui/platform/R$styleable;->ActionDialog_android_layout:I

    sget p4, Lzui/platform/R$layout;->action_dialog:I

    :goto_0
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/DialogController;->mLayout:I

    sget p3, Lzui/platform/R$styleable;->ActionDialog_listItemLayoutX:I

    sget p4, Lzui/platform/R$layout;->select_dialog_item_center_alignment:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/DialogController;->mListItemLayout:I

    sget p3, Lzui/platform/R$styleable;->ActionDialog_android_listDivider:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/internal/app/DialogController;->mListDivider:Landroid/graphics/drawable/Drawable;

    sget p3, Lzui/platform/R$styleable;->ActionDialog_dialogMinWidthMajor:I

    const/16 p4, 0x438

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/ActionController;->A:I

    sget p3, Lzui/platform/R$styleable;->ActionDialog_messageTitleTextAppearance:I

    sget p4, Lzui/platform/R$style;->TextAppearance_Zui_ActionDialogMessageTitle:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    sget p3, Lzui/platform/R$styleable;->ActionDialog_messageTitleWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$dimen;->action_dialog_message_title_width_zui:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lzui/platform/R$dimen;->center_dialog_max_height_zui:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/ActionController;->E:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lzui/platform/R$dimen;->center_dialog_max_height_zui_horizontal:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/ActionController;->F:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lzui/platform/R$dimen;->center_dialog_width_zui:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/ActionController;->G:I

    sget p3, Lzui/platform/R$layout;->select_dialog_option_zui:I

    iput p3, p0, Lcom/zui/internal/app/ActionController;->mOptionListLayout:I

    sget p3, Lzui/platform/R$layout;->select_dialog_item_option_zui:I

    iput p3, p0, Lcom/zui/internal/app/ActionController;->mOptionListitemLayout:I

    new-instance p3, Lzui/widget/ZuiMenuListAdapter;

    iget p4, p0, Lcom/zui/internal/app/DialogController;->mListItemLayout:I

    invoke-direct {p3, p1, p4}, Lzui/widget/ZuiMenuListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/zui/internal/app/ActionController;->C:Lzui/widget/ZuiMenuListAdapter;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v1, p0, Lcom/zui/internal/app/DialogController;->mDisableAutoVerticalBtn:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lzui/platform/R$dimen;->action_dialog_max_height_zui:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/zui/internal/app/ActionController;->H:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lzui/platform/R$dimen;->action_dialog_max_height_zui_horizontal:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sput p0, Lcom/zui/internal/app/ActionController;->I:I

    return-void
.end method

.method static synthetic A(Lcom/zui/internal/app/ActionController;)Lzui/widget/ZuiMenuListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/ActionController;->C:Lzui/widget/ZuiMenuListAdapter;

    return-object p0
.end method

.method static synthetic w(Lcom/zui/internal/app/ActionController;)Lzui/app/ActionDialog$MenuAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/ActionController;->D:Lzui/app/ActionDialog$MenuAdapter;

    return-object p0
.end method

.method static synthetic x(Lcom/zui/internal/app/ActionController;Lzui/app/ActionDialog$MenuAdapter;)Lzui/app/ActionDialog$MenuAdapter;
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/ActionController;->D:Lzui/app/ActionDialog$MenuAdapter;

    return-object p1
.end method

.method static synthetic y(Lcom/zui/internal/app/ActionController;)Lcom/zui/internal/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/ActionController;->B:Lcom/zui/internal/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic z(Lcom/zui/internal/app/ActionController;Lcom/zui/internal/menu/MenuBuilder;)Lcom/zui/internal/menu/MenuBuilder;
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/ActionController;->B:Lcom/zui/internal/menu/MenuBuilder;

    return-object p1
.end method


# virtual methods
.method public getAllowedHorizontalMaxWidth()I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/ActionController;->A:I

    return p0
.end method

.method public getAllowedMaxHeight()I
    .locals 0

    sget p0, Lcom/zui/internal/app/ActionController;->H:I

    return p0
.end method

.method public getAllowedMaxHorizontalHeight()I
    .locals 0

    sget p0, Lcom/zui/internal/app/ActionController;->I:I

    return p0
.end method

.method public getCenterDialogMaxHeight()I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/ActionController;->E:I

    return p0
.end method

.method public getCenterDialogMaxHorizontalHeight()I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/ActionController;->F:I

    return p0
.end method

.method public getCenterDialogWidth()I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/ActionController;->G:I

    return p0
.end method

.method public installContent()V
    .locals 4

    invoke-super {p0}, Lcom/zui/internal/app/DialogController;->installContent()V

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    sget v1, Lzui/platform/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lzui/platform/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/internal/app/DialogController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zui/internal/app/DialogController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zui/internal/app/DialogController;->mMessage:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/zui/internal/app/DialogController;->TEXTVIEW_MAX_WIDTH:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/zui/internal/app/DialogController;->adjustTextAlignment(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->action_dialog_title_min_height_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/zui/internal/app/DialogController;->customizeTextViewLineFeed(Landroid/widget/TextView;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/zui/internal/app/ActionController;->D:Lzui/app/ActionDialog$MenuAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/internal/app/ActionController;->B:Lcom/zui/internal/menu/MenuBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result p1

    if-ge p2, p1, :cond_1

    iget-object p1, p0, Lcom/zui/internal/app/ActionController;->C:Lzui/widget/ZuiMenuListAdapter;

    invoke-virtual {p1, p2}, Lzui/widget/ZuiMenuListAdapter;->onItemSelected(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/zui/internal/app/ActionController$a;

    invoke-direct {p2, p0}, Lcom/zui/internal/app/ActionController$a;-><init>(Lcom/zui/internal/app/ActionController;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/internal/app/ActionController;->D:Lzui/app/ActionDialog$MenuAdapter;

    iget-object v0, p0, Lcom/zui/internal/app/ActionController;->B:Lcom/zui/internal/menu/MenuBuilder;

    iget-object p0, p0, Lcom/zui/internal/app/ActionController;->C:Lzui/widget/ZuiMenuListAdapter;

    invoke-virtual {p0, p2}, Lzui/widget/ZuiMenuListAdapter;->getMenuId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/zui/internal/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p1, p0}, Lzui/app/ActionDialog$MenuAdapter;->onActionDialogItemSelected(Landroid/view/MenuItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public postStop()V
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/app/ActionController;->D:Lzui/app/ActionDialog$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/ActionController;->B:Lcom/zui/internal/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/internal/app/ActionController;->C:Lzui/widget/ZuiMenuListAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lzui/widget/ZuiMenuListAdapter;->onDismiss()V

    :cond_0
    return-void
.end method

.method public setDialogCenter(Z)V
    .locals 0

    return-void
.end method

.method protected setupTitle(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/internal/app/DialogController;->setupTitle(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/zui/internal/app/ActionController;->mMessageTitle:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/internal/app/DialogController;->customizeTextViewLineFeed(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$integer;->action_dialog_title_max_lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    iget-boolean p1, p0, Lcom/zui/internal/app/ActionController;->mShowTitleDivider:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mTitleDivider:Landroid/view/View;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
