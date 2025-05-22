.class public Lcom/autonavi/base/ae/gmap/style/StyleElement;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public lineWidth:I

.field public opacity:F

.field public styleElementType:I

.field public textureId:I

.field public value:I

.field public visible:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/base/ae/gmap/style/StyleElement;->value:I

    iput v0, p0, Lcom/autonavi/base/ae/gmap/style/StyleElement;->textureId:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/autonavi/base/ae/gmap/style/StyleElement;->opacity:F

    iput v0, p0, Lcom/autonavi/base/ae/gmap/style/StyleElement;->lineWidth:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/base/ae/gmap/style/StyleElement;->visible:I

    return-void
.end method
