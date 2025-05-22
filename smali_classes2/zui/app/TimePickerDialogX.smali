.class public Lzui/app/TimePickerDialogX;
.super Lzui/app/ActionDialog;
.source ""

# interfaces
.implements Lzui/widget/NumberPickerX$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/app/TimePickerDialogX$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Lzui/app/TimePickerDialogX$OnTimeSetListener;

.field private final h:Landroid/widget/TextView;

.field private final i:Lzui/widget/NumberPickerX;

.field private final j:Lzui/widget/NumberPickerX;

.field private final k:Lzui/widget/NumberPickerX;

.field private final l:Landroid/widget/ImageView;

.field private final m:Landroid/widget/Button;

.field private final n:I

.field private final o:I

.field private p:Z

.field private q:Z

.field private r:Ljava/util/Locale;

.field private s:[Ljava/lang/String;

.field private t:Lzui/util/VibrationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILzui/app/TimePickerDialogX$OnTimeSetListener;IIZ)V
    .locals 2

    sget v0, Lzui/platform/R$attr;->actionDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_ActionDialog:I

    invoke-static {p1, p2, v0, v1}, Lzui/app/a;->a(Landroid/content/Context;III)I

    move-result p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lzui/app/ActionDialog;-><init>(Landroid/content/Context;IZZ)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lzui/app/TimePickerDialogX;->f:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lzui/app/ActionDialog;->setParentContext(Landroid/content/Context;)V

    iput-object p3, p0, Lzui/app/TimePickerDialogX;->g:Lzui/app/TimePickerDialogX$OnTimeSetListener;

    iput p4, p0, Lzui/app/TimePickerDialogX;->n:I

    iput p5, p0, Lzui/app/TimePickerDialogX;->o:I

    iput-boolean p6, p0, Lzui/app/TimePickerDialogX;->p:Z

    iget-object p2, p0, Lzui/app/TimePickerDialogX;->f:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    iget-object p4, p0, Lzui/app/TimePickerDialogX;->f:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    sget p5, Lzui/platform/R$attr;->timePickerDialogXLayout:I

    invoke-virtual {p4, p5, p3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    sget p3, Lzui/platform/R$layout;->time_picker_dialog_x:I

    :goto_0
    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lzui/app/ActionDialog;->setView(Landroid/view/View;)V

    const p3, 0x1020019

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lzui/app/TimePickerDialogX;->m:Landroid/widget/Button;

    new-instance p4, Lzui/app/TimePickerDialogX$a;

    invoke-direct {p4, p0}, Lzui/app/TimePickerDialogX$a;-><init>(Lzui/app/TimePickerDialogX;)V

    invoke-virtual {p3, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x102001a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    new-instance p4, Lzui/app/TimePickerDialogX$b;

    invoke-direct {p4, p0}, Lzui/app/TimePickerDialogX$b;-><init>(Lzui/app/TimePickerDialogX;)V

    invoke-virtual {p3, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->f:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget-object p3, p3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p3, p0, Lzui/app/TimePickerDialogX;->r:Ljava/util/Locale;

    sget p3, Lzui/platform/R$id;->hour:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lzui/widget/NumberPickerX;

    iput-object p3, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    iget-boolean p4, p0, Lzui/app/TimePickerDialogX;->p:Z

    const/16 p5, 0xc

    const/4 p6, 0x0

    if-eqz p4, :cond_1

    const/16 p4, 0x17

    invoke-virtual {p3, p4}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p6}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-static {}, Lzui/widget/NumberPickerX;->getTwoDigitFormatter()Lzui/widget/NumberPickerX$Formatter;

    move-result-object p4

    invoke-virtual {p3, p4}, Lzui/widget/NumberPickerX;->setFormatter(Lzui/widget/NumberPickerX$Formatter;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p5}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, v0}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    :goto_1
    iget p3, p0, Lzui/app/TimePickerDialogX;->n:I

    invoke-direct {p0, p3, p6}, Lzui/app/TimePickerDialogX;->n(IZ)V

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, v0}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    sget p3, Lzui/platform/R$id;->minutes:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lzui/widget/NumberPickerX;

    iput-object p3, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    const/16 p4, 0x3b

    invoke-virtual {p3, p4}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p6}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-static {}, Lzui/widget/NumberPickerX;->getTwoDigitFormatter()Lzui/widget/NumberPickerX$Formatter;

    move-result-object p4

    invoke-virtual {p3, p4}, Lzui/widget/NumberPickerX;->setFormatter(Lzui/widget/NumberPickerX$Formatter;)V

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    iget p4, p0, Lzui/app/TimePickerDialogX;->o:I

    invoke-virtual {p3, p4}, Lzui/widget/NumberPickerX;->setValue(I)V

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, v0}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    sget p3, Lzui/platform/R$id;->ampm:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lzui/widget/NumberPickerX;

    iput-object p3, p0, Lzui/app/TimePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->k()V

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, v0}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p6}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->k:Lzui/widget/NumberPickerX;

    iget-object p4, p0, Lzui/app/TimePickerDialogX;->s:[Ljava/lang/String;

    invoke-virtual {p3, p4}, Lzui/widget/NumberPickerX;->setDisplayedValues([Ljava/lang/String;)V

    iget p3, p0, Lzui/app/TimePickerDialogX;->n:I

    if-ge p3, p5, :cond_2

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p6}, Lzui/widget/NumberPickerX;->setValue(I)V

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, v0}, Lzui/widget/NumberPickerX;->setValue(I)V

    :goto_2
    iget-boolean p3, p0, Lzui/app/TimePickerDialogX;->p:Z

    if-eqz p3, :cond_3

    const/16 p6, 0x8

    :cond_3
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {p3, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    sget p3, Lzui/platform/R$id;->ampm_divider:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lzui/app/TimePickerDialogX;->l:Landroid/widget/ImageView;

    invoke-virtual {p3, p6}, Landroid/widget/ImageView;->setVisibility(I)V

    sget p3, Lzui/platform/R$id;->time_picker_dialog_title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lzui/app/TimePickerDialogX;->h:Landroid/widget/TextView;

    new-instance p2, Lzui/util/VibrationHelper;

    invoke-direct {p2, p1}, Lzui/util/VibrationHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzui/app/TimePickerDialogX;->t:Lzui/util/VibrationHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lzui/app/TimePickerDialogX$OnTimeSetListener;IIZ)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lzui/app/TimePickerDialogX;-><init>(Landroid/content/Context;ILzui/app/TimePickerDialogX$OnTimeSetListener;IIZ)V

    return-void
.end method

.method static synthetic g(Lzui/app/TimePickerDialogX;)Lzui/app/TimePickerDialogX$OnTimeSetListener;
    .locals 0

    iget-object p0, p0, Lzui/app/TimePickerDialogX;->g:Lzui/app/TimePickerDialogX$OnTimeSetListener;

    return-object p0
.end method

.method static synthetic h(Lzui/app/TimePickerDialogX;)Lzui/widget/NumberPickerX;
    .locals 0

    iget-object p0, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    return-object p0
.end method

.method static synthetic i(Lzui/app/TimePickerDialogX;)Lzui/widget/NumberPickerX;
    .locals 0

    iget-object p0, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    return-object p0
.end method

.method static synthetic j(Lzui/app/TimePickerDialogX;)Z
    .locals 0

    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->l()Z

    move-result p0

    return p0
.end method

.method private k()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lzui/app/TimePickerDialogX;->s:[Ljava/lang/String;

    iget-object v1, p0, Lzui/app/TimePickerDialogX;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$string;->time_picker_dialog_x_am:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lzui/app/TimePickerDialogX;->s:[Ljava/lang/String;

    iget-object p0, p0, Lzui/app/TimePickerDialogX;->f:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lzui/platform/R$string;->time_picker_dialog_x_pm:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    return-void
.end method

.method private l()Z
    .locals 3

    iget-boolean v0, p0, Lzui/app/TimePickerDialogX;->p:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p0

    const/16 v0, 0xc

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object p0, p0, Lzui/app/TimePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private m()Z
    .locals 2

    iget-object p0, p0, Lzui/app/TimePickerDialogX;->r:Ljava/util/Locale;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "zh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "en"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private n(IZ)V
    .locals 1

    invoke-virtual {p0}, Lzui/app/TimePickerDialogX;->getCurrentHour()I

    move-result p2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lzui/app/TimePickerDialogX;->is24HourView()Z

    move-result p2

    if-nez p2, :cond_3

    const/16 p2, 0xc

    if-lt p1, p2, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/app/TimePickerDialogX;->q:Z

    if-le p1, p2, :cond_2

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/app/TimePickerDialogX;->q:Z

    if-nez p1, :cond_2

    move p1, p2

    :cond_2
    :goto_0
    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->o()V

    :cond_3
    iget-object p0, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {p0, p1}, Lzui/widget/NumberPickerX;->setValue(I)V

    return-void
.end method

.method private o()V
    .locals 2

    invoke-virtual {p0}, Lzui/app/TimePickerDialogX;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzui/app/TimePickerDialogX;->k:Lzui/widget/NumberPickerX;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lzui/app/TimePickerDialogX;->q:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lzui/app/TimePickerDialogX;->k:Lzui/widget/NumberPickerX;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lzui/widget/NumberPickerX;->setValue(I)V

    iget-object p0, p0, Lzui/app/TimePickerDialogX;->k:Lzui/widget/NumberPickerX;

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private p(IIZ)V
    .locals 7

    iget-boolean v0, p0, Lzui/app/TimePickerDialogX;->p:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p3, ""

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzui/app/TimePickerDialogX;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const/16 v0, 0xc

    if-eqz p3, :cond_2

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->f:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-ne p1, v0, :cond_1

    sget v0, Lzui/platform/R$string;->time_picker_dialog_x_midnight:I

    goto :goto_0

    :cond_1
    sget v0, Lzui/platform/R$string;->time_picker_dialog_x_am:I

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->f:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-ne p1, v0, :cond_3

    sget v0, Lzui/platform/R$string;->time_picker_dialog_x_noon:I

    goto :goto_0

    :cond_3
    sget v0, Lzui/platform/R$string;->time_picker_dialog_x_pm:I

    :goto_0
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    iget-object p3, p0, Lzui/app/TimePickerDialogX;->s:[Ljava/lang/String;

    aget-object p3, p3, v2

    goto :goto_1

    :cond_5
    iget-object p3, p0, Lzui/app/TimePickerDialogX;->s:[Ljava/lang/String;

    aget-object p3, p3, v1

    :goto_1
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lzui/platform/R$string;->time_picker_dialog_x_title:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Lzui/app/TimePickerDialogX;->p:Z

    const-string v6, "%02d"

    if-eqz v5, :cond_6

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    const-string p1, "%d"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    aput-object p1, v4, v2

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x2

    aput-object p3, v4, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lzui/app/TimePickerDialogX;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    iget-object v0, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/app/TimePickerDialogX;->m:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getAm()Z
    .locals 0

    iget-boolean p0, p0, Lzui/app/TimePickerDialogX;->q:Z

    return p0
.end method

.method public getCurrentHour()I
    .locals 2

    iget-object v0, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v0

    invoke-virtual {p0}, Lzui/app/TimePickerDialogX;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-boolean p0, p0, Lzui/app/TimePickerDialogX;->q:Z

    rem-int/lit8 v0, v0, 0xc

    if-eqz p0, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getCurrentMinute()I
    .locals 0

    iget-object p0, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p0

    return p0
.end method

.method public is24HourView()Z
    .locals 0

    iget-boolean p0, p0, Lzui/app/TimePickerDialogX;->p:Z

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lzui/app/ActionDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p1

    iget-object v0, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v0

    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->l()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lzui/app/TimePickerDialogX;->p(IIZ)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "hour"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "minute"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "is24hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lzui/app/TimePickerDialogX;->p:Z

    iget-object p1, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {p1, v0}, Lzui/widget/NumberPickerX;->setValue(I)V

    iget-object p0, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {p0, v1}, Lzui/widget/NumberPickerX;->setValue(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    const-string v2, "hour"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    const-string v2, "minute"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean p0, p0, Lzui/app/TimePickerDialogX;->p:Z

    const-string v1, "is24hour"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onValueChange(Lzui/widget/NumberPickerX;II)V
    .locals 10

    iget-object v0, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lzui/app/TimePickerDialogX;->p:Z

    if-nez p1, :cond_2

    const/16 p1, 0xc

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    if-eq p3, p1, :cond_1

    :cond_0
    if-ne p2, p1, :cond_2

    if-ne p3, v0, :cond_2

    :cond_1
    iget-boolean p1, p0, Lzui/app/TimePickerDialogX;->q:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lzui/app/TimePickerDialogX;->q:Z

    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->o()V

    :cond_2
    iget-object p1, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p1

    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->l()Z

    move-result p2

    invoke-direct {p0, p3, p1, p2}, Lzui/app/TimePickerDialogX;->p(IIZ)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    if-ne p1, p2, :cond_4

    invoke-virtual {v0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p1

    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->l()Z

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Lzui/app/TimePickerDialogX;->p(IIZ)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lzui/app/TimePickerDialogX;->k:Lzui/widget/NumberPickerX;

    if-ne p1, p2, :cond_6

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lzui/app/TimePickerDialogX;->q:Z

    iget-object p1, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {p1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p1

    iget-object p2, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {p2}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p2

    invoke-direct {p0}, Lzui/app/TimePickerDialogX;->l()Z

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lzui/app/TimePickerDialogX;->p(IIZ)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lzui/app/TimePickerDialogX;->t:Lzui/util/VibrationHelper;

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/16 v6, 0x32

    const/16 v7, 0x32

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lzui/util/VibrationHelper;->startVibrationOrFail(IIIIIIIIZ)Z

    :cond_7
    return-void
.end method

.method public updateTime(II)V
    .locals 1

    iget-object v0, p0, Lzui/app/TimePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, p1}, Lzui/widget/NumberPickerX;->setValue(I)V

    iget-object p0, p0, Lzui/app/TimePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {p0, p2}, Lzui/widget/NumberPickerX;->setValue(I)V

    return-void
.end method
