.class public Lzui/app/DatePickerDialogX;
.super Lzui/app/ActionDialog;
.source ""

# interfaces
.implements Lzui/widget/NumberPickerX$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/app/DatePickerDialogX$OnDateSetListener;
    }
.end annotation


# static fields
.field private static t:[Ljava/lang/String;

.field private static u:[Ljava/lang/String;


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Lzui/app/DatePickerDialogX$OnDateSetListener;

.field private final h:Landroid/widget/TextView;

.field private final i:Lzui/widget/NumberPickerX;

.field private final j:Lzui/widget/NumberPickerX;

.field private final k:Lzui/widget/NumberPickerX;

.field private final l:Landroid/widget/Button;

.field private m:Ljava/util/Calendar;

.field private n:Ljava/util/Calendar;

.field private o:Ljava/util/Calendar;

.field private p:Ljava/util/Calendar;

.field private q:I

.field private r:Ljava/util/Locale;

.field private s:Lzui/util/VibrationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILzui/app/DatePickerDialogX$OnDateSetListener;III)V
    .locals 4

    sget v0, Lzui/platform/R$attr;->actionDialogTheme:I

    sget v1, Lzui/platform/R$style;->Theme_Zui_ActionDialog:I

    invoke-static {p1, p2, v0, v1}, Lzui/app/a;->a(Landroid/content/Context;III)I

    move-result p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lzui/app/ActionDialog;-><init>(Landroid/content/Context;IZZ)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lzui/app/DatePickerDialogX;->f:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lzui/app/ActionDialog;->setParentContext(Landroid/content/Context;)V

    iput-object p3, p0, Lzui/app/DatePickerDialogX;->g:Lzui/app/DatePickerDialogX$OnDateSetListener;

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$array;->datePickerXWeek:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lzui/app/DatePickerDialogX;->t:[Ljava/lang/String;

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$array;->datePickerXMonth:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lzui/app/DatePickerDialogX;->u:[Ljava/lang/String;

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->f:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p2

    iput-object p2, p0, Lzui/app/DatePickerDialogX;->r:Ljava/util/Locale;

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->f:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lzui/platform/R$attr;->datePickerDialogXLayout:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lzui/platform/R$layout;->date_picker_dialog_x:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lzui/app/ActionDialog;->setView(Landroid/view/View;)V

    const v1, 0x1020019

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->l:Landroid/widget/Button;

    new-instance v2, Lzui/app/DatePickerDialogX$a;

    invoke-direct {v2, p0}, Lzui/app/DatePickerDialogX$a;-><init>(Lzui/app/DatePickerDialogX;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x102001a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lzui/app/DatePickerDialogX$b;

    invoke-direct {v2, p0}, Lzui/app/DatePickerDialogX$b;-><init>(Lzui/app/DatePickerDialogX;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzui/app/DatePickerDialogX;->k(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->n:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzui/app/DatePickerDialogX;->k(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->n:Ljava/util/Calendar;

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->o:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzui/app/DatePickerDialogX;->k(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->o:Ljava/util/Calendar;

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzui/app/DatePickerDialogX;->k(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lzui/app/DatePickerDialogX;->q:I

    sget v1, Lzui/platform/R$id;->year:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lzui/widget/NumberPickerX;

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {v1, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    sget v1, Lzui/platform/R$id;->month:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lzui/widget/NumberPickerX;

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {v1, v0}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    iget v2, p0, Lzui/app/DatePickerDialogX;->q:I

    invoke-virtual {v1, v2}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    sget-object v2, Lzui/app/DatePickerDialogX;->u:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lzui/widget/NumberPickerX;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {v1, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    sget v1, Lzui/platform/R$id;->day:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lzui/widget/NumberPickerX;

    iput-object v1, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {v1, p0}, Lzui/widget/NumberPickerX;->setOnValueChangedListener(Lzui/widget/NumberPickerX$OnValueChangeListener;)V

    sget v1, Lzui/platform/R$id;->date_picker_dialog_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lzui/app/DatePickerDialogX;->h:Landroid/widget/TextView;

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    const/16 v1, 0x7b2

    invoke-virtual {p2, v1, p3, v0}, Ljava/util/Calendar;->set(III)V

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lzui/app/DatePickerDialogX;->setMinDate(J)V

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->clear()V

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    const/16 p3, 0x7f5

    const/16 v0, 0xb

    const/16 v1, 0x1f

    invoke-virtual {p2, p3, v0, v1}, Ljava/util/Calendar;->set(III)V

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lzui/app/DatePickerDialogX;->setMaxDate(J)V

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0, p4, p5, p6}, Lzui/app/DatePickerDialogX;->l(III)V

    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->m()V

    new-instance p2, Lzui/util/VibrationHelper;

    invoke-direct {p2, p1}, Lzui/util/VibrationHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzui/app/DatePickerDialogX;->s:Lzui/util/VibrationHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lzui/app/DatePickerDialogX$OnDateSetListener;III)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lzui/app/DatePickerDialogX;-><init>(Landroid/content/Context;ILzui/app/DatePickerDialogX$OnDateSetListener;III)V

    return-void
.end method

.method static synthetic g(Lzui/app/DatePickerDialogX;)Lzui/app/DatePickerDialogX$OnDateSetListener;
    .locals 0

    iget-object p0, p0, Lzui/app/DatePickerDialogX;->g:Lzui/app/DatePickerDialogX$OnDateSetListener;

    return-object p0
.end method

.method static synthetic h(Lzui/app/DatePickerDialogX;)Lzui/widget/NumberPickerX;
    .locals 0

    iget-object p0, p0, Lzui/app/DatePickerDialogX;->i:Lzui/widget/NumberPickerX;

    return-object p0
.end method

.method static synthetic i(Lzui/app/DatePickerDialogX;)Lzui/widget/NumberPickerX;
    .locals 0

    iget-object p0, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    return-object p0
.end method

.method static synthetic j(Lzui/app/DatePickerDialogX;)Lzui/widget/NumberPickerX;
    .locals 0

    iget-object p0, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    return-object p0
.end method

.method private k(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p2
.end method

.method private l(III)V
    .locals 1

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    iget-object p1, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->n:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    iget-object p0, p0, Lzui/app/DatePickerDialogX;->n:Ljava/util/Calendar;

    :goto_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->o:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    iget-object p0, p0, Lzui/app/DatePickerDialogX;->o:Ljava/util/Calendar;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private m()V
    .locals 6

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->n:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v2}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    sget-object v5, Lzui/app/DatePickerDialogX;->u:[Ljava/lang/String;

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    :goto_0
    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v2}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->o:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v2}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    sget-object v5, Lzui/app/DatePickerDialogX;->u:[Ljava/lang/String;

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v4}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v4}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    sget-object v5, Lzui/app/DatePickerDialogX;->u:[Ljava/lang/String;

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v4}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v4}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    :goto_1
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->i:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->n:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMinValue(I)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->i:Lzui/widget/NumberPickerX;

    iget-object v5, p0, Lzui/app/DatePickerDialogX;->o:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lzui/widget/NumberPickerX;->setMaxValue(I)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {v0, v2}, Lzui/widget/NumberPickerX;->setWrapSelectorWheel(Z)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->i:Lzui/widget/NumberPickerX;

    iget-object v2, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lzui/widget/NumberPickerX;->setValue(I)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    iget-object v2, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lzui/widget/NumberPickerX;->setValue(I)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lzui/widget/NumberPickerX;->setValue(I)V

    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->n()V

    return-void
.end method

.method private n()V
    .locals 11

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v1, Lzui/app/DatePickerDialogX;->u:[Ljava/lang/String;

    iget-object v2, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {v2}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    iget-object v2, p0, Lzui/app/DatePickerDialogX;->r:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "en_US"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x3

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    iget-object v5, p0, Lzui/app/DatePickerDialogX;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lzui/platform/R$string;->date_picker_dialog_x_title:I

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lzui/app/DatePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {v9}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string v9, "%d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    const/4 v1, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {v8}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v10

    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    sget-object v1, Lzui/app/DatePickerDialogX;->t:[Ljava/lang/String;

    sub-int/2addr v0, v3

    aget-object v0, v1, v0

    aput-object v0, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lzui/app/DatePickerDialogX;->h:Landroid/widget/TextView;

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

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->l:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getDayOfMonth()I
    .locals 0

    iget-object p0, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p0

    return p0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object p0, p0, Lzui/app/DatePickerDialogX;->o:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object p0, p0, Lzui/app/DatePickerDialogX;->n:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 0

    iget-object p0, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p0

    return p0
.end method

.method public getYear()I
    .locals 0

    iget-object p0, p0, Lzui/app/DatePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lzui/app/ActionDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->n()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "month"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lzui/app/DatePickerDialogX;->l(III)V

    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->m()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->i:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    const-string v2, "year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, "month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    invoke-virtual {p0}, Lzui/widget/NumberPickerX;->getValue()I

    move-result p0

    const-string v1, "day"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onValueChange(Lzui/widget/NumberPickerX;II)V
    .locals 10

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    iget-object v1, p0, Lzui/app/DatePickerDialogX;->p:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->k:Lzui/widget/NumberPickerX;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    sub-int/2addr p3, p2

    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->j:Lzui/widget/NumberPickerX;

    if-ne p1, v0, :cond_3

    const/16 p1, 0xb

    if-ne p2, p1, :cond_1

    if-nez p3, :cond_1

    iget-object p1, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    invoke-virtual {p1, v3, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    if-ne p3, p1, :cond_2

    iget-object p1, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    const/4 p2, -0x1

    invoke-virtual {p1, v3, p2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    sub-int/2addr p3, p2

    invoke-virtual {p1, v3, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lzui/app/DatePickerDialogX;->i:Lzui/widget/NumberPickerX;

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->set(II)V

    :goto_0
    iget-object p1, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object p2, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lzui/app/DatePickerDialogX;->l(III)V

    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->m()V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->s:Lzui/util/VibrationHelper;

    if-eqz v0, :cond_4

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

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setMaxDate(J)V
    .locals 3

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lzui/app/DatePickerDialogX;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lzui/app/DatePickerDialogX;->o:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->o:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->m()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lzui/app/DatePickerDialogX;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lzui/app/DatePickerDialogX;->m:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lzui/app/DatePickerDialogX;->n:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lzui/app/DatePickerDialogX;->n:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->m()V

    return-void
.end method

.method public updateDate(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lzui/app/DatePickerDialogX;->l(III)V

    invoke-direct {p0}, Lzui/app/DatePickerDialogX;->m()V

    return-void
.end method
