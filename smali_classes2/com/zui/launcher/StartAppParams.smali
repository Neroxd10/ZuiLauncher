.class public Lcom/zui/launcher/StartAppParams;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I


# direct methods
.method public constructor <init>(IIIIIFFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/zui/launcher/StartAppParams;->a:I

    iput p3, p0, Lcom/zui/launcher/StartAppParams;->b:I

    iput p4, p0, Lcom/zui/launcher/StartAppParams;->c:I

    iput p5, p0, Lcom/zui/launcher/StartAppParams;->d:I

    iput p8, p0, Lcom/zui/launcher/StartAppParams;->e:I

    return-void
.end method

.method public constructor <init>(IIIIIFFIIIIIIIII)V
    .locals 2

    move-object v0, p0

    invoke-direct/range {p0 .. p9}, Lcom/zui/launcher/StartAppParams;-><init>(IIIIIFFII)V

    move v1, p10

    iput v1, v0, Lcom/zui/launcher/StartAppParams;->f:I

    move v1, p11

    iput v1, v0, Lcom/zui/launcher/StartAppParams;->g:I

    move v1, p12

    iput v1, v0, Lcom/zui/launcher/StartAppParams;->h:I

    move v1, p13

    iput v1, v0, Lcom/zui/launcher/StartAppParams;->i:I

    move/from16 v1, p14

    iput v1, v0, Lcom/zui/launcher/StartAppParams;->j:I

    move/from16 v1, p15

    iput v1, v0, Lcom/zui/launcher/StartAppParams;->k:I

    move/from16 v1, p16

    iput v1, v0, Lcom/zui/launcher/StartAppParams;->l:I

    return-void
.end method


# virtual methods
.method public isInFolder()Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/StartAppParams;->a:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
