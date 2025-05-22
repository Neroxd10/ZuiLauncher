.class Lzui/app/UnitPickerDialog$a;
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

    iput-object p1, p0, Lzui/app/UnitPickerDialog$a;->a:Lzui/app/UnitPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lzui/app/UnitPickerDialog$a;->a:Lzui/app/UnitPickerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
