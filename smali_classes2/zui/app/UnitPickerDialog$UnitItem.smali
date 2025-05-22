.class public Lzui/app/UnitPickerDialog$UnitItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/app/UnitPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnitItem"
.end annotation


# static fields
.field public static final DEFAULT_DIGIT_FORMAT:I = 0x0

.field public static final THREE_DIGIT_FORMAT:I = 0x3

.field public static final TWO_DIGIT_FORMAT:I = 0x2


# instance fields
.field private a:I

.field public maxValue:I

.field public minValue:I

.field public unitName:Ljava/lang/String;

.field public value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lzui/app/UnitPickerDialog$UnitItem;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzui/app/UnitPickerDialog$UnitItem;->unitName:Ljava/lang/String;

    iput p2, p0, Lzui/app/UnitPickerDialog$UnitItem;->value:I

    iput p3, p0, Lzui/app/UnitPickerDialog$UnitItem;->minValue:I

    iput p4, p0, Lzui/app/UnitPickerDialog$UnitItem;->maxValue:I

    const/4 p1, 0x0

    iput p1, p0, Lzui/app/UnitPickerDialog$UnitItem;->a:I

    return-void
.end method


# virtual methods
.method public getFormaterType()I
    .locals 0

    iget p0, p0, Lzui/app/UnitPickerDialog$UnitItem;->a:I

    return p0
.end method

.method public setFormaterType(I)V
    .locals 0

    iput p1, p0, Lzui/app/UnitPickerDialog$UnitItem;->a:I

    return-void
.end method
