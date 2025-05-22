.class Lcom/zui/launcher/Utilities$i;
.super Landroid/graphics/drawable/ColorDrawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput p1, p0, Lcom/zui/launcher/Utilities$i;->a:I

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/Utilities$i;->a:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/Utilities$i;->a:I

    return p0
.end method
