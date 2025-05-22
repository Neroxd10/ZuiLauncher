.class Lzui/app/DatePickerDialogX$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzui/app/DatePickerDialogX;-><init>(Landroid/content/Context;ILzui/app/DatePickerDialogX$OnDateSetListener;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzui/app/DatePickerDialogX;


# direct methods
.method constructor <init>(Lzui/app/DatePickerDialogX;)V
    .locals 0

    iput-object p1, p0, Lzui/app/DatePickerDialogX$a;->a:Lzui/app/DatePickerDialogX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lzui/app/DatePickerDialogX$a;->a:Lzui/app/DatePickerDialogX;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
