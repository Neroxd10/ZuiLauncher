.class public Lcom/zui/launcher/views/OptionsPopupView$OptionItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/views/OptionsPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionItem"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(IIILandroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;->a:I

    iput p2, p0, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;->b:I

    iput p3, p0, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;->c:I

    iput-object p4, p0, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;->d:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/views/OptionsPopupView$OptionItem;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;->c:I

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/views/OptionsPopupView$OptionItem;)Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;->d:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/views/OptionsPopupView$OptionItem;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;->b:I

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/views/OptionsPopupView$OptionItem;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;->a:I

    return p0
.end method
