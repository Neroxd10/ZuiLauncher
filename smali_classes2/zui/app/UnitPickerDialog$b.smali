.class Lzui/app/UnitPickerDialog$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/app/UnitPickerDialog;-><init>(Landroid/content/Context;ILzui/app/UnitPickerDialog$OnUnitSetListener;Lzui/app/UnitPickerDialog$UnitItem;Lzui/app/UnitPickerDialog$UnitItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/app/UnitPickerDialog;


# direct methods
.method constructor <init>(Lzui/app/UnitPickerDialog;)V
    .locals 0

    iput-object p1, p0, Lzui/app/UnitPickerDialog$b;->a:Lzui/app/UnitPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lzui/app/UnitPickerDialog$b;->a:Lzui/app/UnitPickerDialog;

    invoke-static {p1}, Lzui/app/UnitPickerDialog;->g(Lzui/app/UnitPickerDialog;)Lzui/app/UnitPickerDialog$OnUnitSetListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzui/app/UnitPickerDialog$b;->a:Lzui/app/UnitPickerDialog;

    invoke-static {p1}, Lzui/app/UnitPickerDialog;->g(Lzui/app/UnitPickerDialog;)Lzui/app/UnitPickerDialog$OnUnitSetListener;

    move-result-object p1

    iget-object v0, p0, Lzui/app/UnitPickerDialog$b;->a:Lzui/app/UnitPickerDialog;

    invoke-static {v0}, Lzui/app/UnitPickerDialog;->h(Lzui/app/UnitPickerDialog;)Lzui/widget/NumberPickerX;

    move-result-object v1

    invoke-virtual {v1}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v1

    iget-object v2, p0, Lzui/app/UnitPickerDialog$b;->a:Lzui/app/UnitPickerDialog;

    invoke-static {v2}, Lzui/app/UnitPickerDialog;->i(Lzui/app/UnitPickerDialog;)Lzui/widget/NumberPickerX;

    move-result-object v2

    invoke-virtual {v2}, Lzui/widget/NumberPickerX;->getValue()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lzui/app/UnitPickerDialog$OnUnitSetListener;->onUnitSet(Lzui/app/UnitPickerDialog;II)V

    :cond_0
    iget-object p0, p0, Lzui/app/UnitPickerDialog$b;->a:Lzui/app/UnitPickerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
