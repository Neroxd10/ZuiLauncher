.class public Lzui/app/UnitPickerDialog;
.super Lzui/app/ActionDialog;
.source ""

# interfaces
.implements Lzui/widget/NumberPickerX$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/app/UnitPickerDialog$UnitItem;,
        Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;,
        Lzui/app/UnitPickerDialog$OnUnitSetListener;
    }
.end annotation


# instance fields
.field private f:Landroid/content/Context;

.field private g:Landroid/widget/TextView;

.field private h:Lzui/widget/NumberPickerX;

.field private i:Lzui/widget/NumberPickerX;

.field private final j:Landroid/widget/Button;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lzui/app/UnitPickerDialog$OnUnitSetListener;

.field private n:Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;

.field private o:Lzui/util/VibrationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILzui/app/UnitPickerDialog$OnUnitSetListener;Lzui/app/UnitPickerDialog$UnitItem;Lzui/app/UnitPickerDialog$UnitItem;)V
    .locals 2

    sget v0, Lzui/platform/R$attr;->actionDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_ActionDialog:I

    invoke-static {p1, p2, v0, v1}, Lzui/app/a;->a(Landroid/content/Context;III)I

    move-result p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lzui/app/ActionDialog;-><init>(Landroid/content/Context;IZZ)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lzui/app/UnitPickerDialog;->f:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lzui/app/ActionDialog;->setParentContext(Landroid/content/Context;)V

    iput-object p3, p0, Lzui/app/UnitPickerDialog;->m:Lzui/app/UnitPickerDialog$OnUnitSetListener;

    iget-object p2, p0, Lzui/app/UnitPickerDialog;->f:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lzui/platform/R$layout;->unit_picker_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020019

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lzui/app/UnitPickerDialog;->j:Landroid/widget/Button;

    new-instance v0, Lzui/app/UnitPickerDialog$a;

    invoke-direct {v0, p0}, Lzui/app/UnitPickerDialog$a;-><init>(Lzui/app/UnitPickerDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x102001a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    new-instance v0, Lzui/app/UnitPickerDialog$b;

    invoke-direct {v0, p0}, Lzui/app/UnitPickerDialog$b;-><init>(Lzui/app/UnitPickerDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x1020016

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lzui/app/UnitPickerDialog;->g:Landroid/widget/TextView;

    invoke-direct {p0, p2, p4, p5}, Lzui/app/UnitPickerDialog;->k(Landroid/view/View;Lzui/app/UnitPickerDialog$UnitItem;Lzui/app/UnitPickerDialog$UnitItem;)V

    invoke-virtual {p0, p2}, Lzui/app/ActionDialog;->setView(Landroid/view/View;)V

    new-instance p2, Lzui/util/VibrationHelper;

    invoke-direct {p2, p1}, Lzui/util/VibrationHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzui/app/UnitPickerDialog;->o:Lzui/util/VibrationHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lzui/app/UnitPickerDialog$OnUnitSetListener;Lzui/app/UnitPickerDialog$UnitItem;Lzui/app/UnitPickerDialog$UnitItem;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lzui/app/UnitPickerDialog;-><init>(Landroid/content/Context;ILzui/app/UnitPickerDialog$OnUnitSetListener;Lzui/app/UnitPickerDialog$UnitItem;Lzui/app/UnitPickerDialog$UnitItem;)V

    return-void
.end method

.method static synthetic g(Lzui/app/UnitPickerDialog;)Lzui/app/UnitPickerDialog$OnUnitSetListener;
    .locals 0

    iget-object p0, p0, Lzui/app/UnitPickerDialog;->m:Lzui/app/UnitPickerDialog$OnUnitSetListener;

    return-object p0
.end method

.method static synthetic h(Lzui/app/UnitPickerDialog;)Lzui/widget/NumberPickerX;
    .locals 0

    iget-object p0, p0, Lzui/app/UnitPickerDialog;->h:Lzui/widget/NumberPickerX;

    return-object p0
.end method

.method static synthetic i(Lzui/app/UnitPickerDialog;)Lzui/widget/NumberPickerX;
    .locals 0

    iget-object p0, p0, Lzui/app/UnitPickerDialog;->i:Lzui/widget/NumberPickerX;

    return-object p0
.end method

.method private j(Lzui/app/UnitPickerDialog$UnitItem;Lzui/widget/NumberPickerX;Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_5

    iget p0, p1, Lzui/app/UnitPickerDialog$UnitItem;->minValue:I

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    iget p0, p1, Lzui/app/UnitPickerDialog$UnitItem;->maxValue:I

    if-ltz p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 p0, 0x64

    :goto_1
    invoke-virtual {p2, p0}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    iget p0, p1, Lzui/app/UnitPickerDialog$UnitItem;->value:I

    if-ltz p0, :cond_2

    invoke-virtual {p2, p0}, Lzui/widget/NumberPickerX;->setValue(I)V

    :cond_2
    invoke-virtual {p1}, Lzui/app/UnitPickerDialog$UnitItem;->getFormaterType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lzui/widget/NumberPickerX;->getThreeDigitFormatter()Lzui/widget/NumberPickerX$Formatter;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-static {}, Lzui/widget/NumberPickerX;->getTwoDigitFormatter()Lzui/widget/NumberPickerX$Formatter;

    move-result-object p0

    :goto_2
    invoke-virtual {p2, p0}, Lzui/widget/NumberPickerX;->setFormatter(Lzui/widget/NumberPickerX$Formatter;)V

    :goto_3
    iget-object p0, p1, Lzui/app/UnitPickerDialog$UnitItem;->unitName:Ljava/lang/String;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private k(Landroid/view/View;Lzui/app/UnitPickerDialog$UnitItem;Lzui/app/UnitPickerDialog$UnitItem;)V
    .locals 2

    sget v0, Lzui/platform/R$id;->value1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzui/widget/NumberPickerX;

    iput-object v0, p0, Lzui/app/UnitPickerDialog;->h:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    sget v0, Lzui/platform/R$id;->unit1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p2, Lzui/app/UnitPickerDialog$UnitItem;->unitName:Ljava/lang/String;

    iput-object v1, p0, Lzui/app/UnitPickerDialog;->k:Ljava/lang/String;

    iget-object v1, p0, Lzui/app/UnitPickerDialog;->h:Lzui/widget/NumberPickerX;

    invoke-direct {p0, p2, v1, v0}, Lzui/app/UnitPickerDialog;->j(Lzui/app/UnitPickerDialog$UnitItem;Lzui/widget/NumberPickerX;Landroid/widget/TextView;)V

    sget p2, Lzui/platform/R$id;->value2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lzui/widget/NumberPickerX;

    iput-object p2, p0, Lzui/app/UnitPickerDialog;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {p2, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    sget p2, Lzui/platform/R$id;->unit2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p3, Lzui/app/UnitPickerDialog$UnitItem;->unitName:Ljava/lang/String;

    iput-object p2, p0, Lzui/app/UnitPickerDialog;->l:Ljava/lang/String;

    iget-object p2, p0, Lzui/app/UnitPickerDialog;->i:Lzui/widget/NumberPickerX;

    invoke-direct {p0, p3, p2, p1}, Lzui/app/UnitPickerDialog;->j(Lzui/app/UnitPickerDialog$UnitItem;Lzui/widget/NumberPickerX;Landroid/widget/TextView;)V

    return-void
.end method

.method private l(II)V
    .locals 6

    iget-object v0, p0, Lzui/app/UnitPickerDialog;->n:Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lzui/app/UnitPickerDialog;->k:Ljava/lang/String;

    iget-object v5, p0, Lzui/app/UnitPickerDialog;->l:Ljava/lang/String;

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;->getCustomizedTitle(Lzui/app/UnitPickerDialog;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lzui/app/UnitPickerDialog;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lzui/app/UnitPickerDialog;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object p0, p0, Lzui/app/UnitPickerDialog;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzui/app/UnitPickerDialog;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/app/UnitPickerDialog;->j:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lzui/app/ActionDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lzui/app/UnitPickerDialog;->h:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p1

    iget-object v0, p0, Lzui/app/UnitPickerDialog;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lzui/app/UnitPickerDialog;->l(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "unit1_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "unit2_value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lzui/app/UnitPickerDialog;->h:Lzui/widget/NumberPickerX;

    invoke-virtual {v1, v0}, Lzui/widget/NumberPickerX;->setValue(I)V

    iget-object p0, p0, Lzui/app/UnitPickerDialog;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {p0, p1}, Lzui/widget/NumberPickerX;->setValue(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lzui/app/UnitPickerDialog;->h:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    const-string v2, "unit1_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lzui/app/UnitPickerDialog;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p0

    const-string v1, "unit2_value"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onValueChange(Lzui/widget/NumberPickerX;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lzui/app/UnitPickerDialog;->h:Lzui/widget/NumberPickerX;

    invoke-virtual {v2}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v2

    iget-object v3, v0, Lzui/app/UnitPickerDialog;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {v3}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v3

    iget-object v4, v0, Lzui/app/UnitPickerDialog;->h:Lzui/widget/NumberPickerX;

    const/4 v5, 0x1

    if-ne v1, v4, :cond_0

    move/from16 v2, p3

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lzui/app/UnitPickerDialog;->i:Lzui/widget/NumberPickerX;

    if-ne v1, v4, :cond_1

    move/from16 v3, p3

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    invoke-direct {v0, v2, v3}, Lzui/app/UnitPickerDialog;->l(II)V

    iget-object v6, v0, Lzui/app/UnitPickerDialog;->o:Lzui/util/VibrationHelper;

    if-eqz v6, :cond_2

    const/4 v7, 0x2

    const/16 v8, 0x1b

    const/16 v9, 0x1b

    const/16 v10, 0xa

    const/16 v11, 0xa

    const/16 v12, 0x32

    const/16 v13, 0x32

    const/4 v14, -0x1

    const/4 v15, 0x1

    invoke-virtual/range {v6 .. v15}, Lzui/util/VibrationHelper;->startVibrationOrFail(IIIIIIIIZ)Z

    :cond_2
    iget-object v1, v0, Lzui/app/UnitPickerDialog;->n:Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;

    if-eqz v1, :cond_3

    invoke-interface {v1, v0, v2, v3}, Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;->onUnitValueChange(Lzui/app/UnitPickerDialog;II)V

    :cond_3
    return-void
.end method

.method public setOnUnitValueChangeListenter(Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;)V
    .locals 0

    iput-object p1, p0, Lzui/app/UnitPickerDialog;->n:Lzui/app/UnitPickerDialog$OnUnitValueChangeListenter;

    return-void
.end method
