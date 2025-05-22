.class public Lcom/zui/launcher/util/MultiValueAlpha;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;
    }
.end annotation


# static fields
.field public static final VALUE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/view/View;

.field private final b:[Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MultiValueAlpha$a;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MultiValueAlpha$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/util/MultiValueAlpha;->VALUE:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/MultiValueAlpha;->a:Landroid/view/View;

    new-array p1, p2, [Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    iput-object p1, p0, Lcom/zui/launcher/util/MultiValueAlpha;->b:[Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/util/MultiValueAlpha;->c:I

    :goto_0
    if-ge p1, p2, :cond_0

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Lcom/zui/launcher/util/MultiValueAlpha;->c:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/zui/launcher/util/MultiValueAlpha;->c:I

    iget-object v1, p0, Lcom/zui/launcher/util/MultiValueAlpha;->b:[Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    new-instance v2, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;-><init>(Lcom/zui/launcher/util/MultiValueAlpha;I)V

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/util/MultiValueAlpha;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/util/MultiValueAlpha;->c:I

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/util/MultiValueAlpha;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/util/MultiValueAlpha;->c:I

    return p1
.end method

.method static synthetic c(Lcom/zui/launcher/util/MultiValueAlpha;)[Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/MultiValueAlpha;->b:[Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/util/MultiValueAlpha;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/MultiValueAlpha;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/util/MultiValueAlpha;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/util/MultiValueAlpha;->d:Z

    return p0
.end method


# virtual methods
.method public getProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/MultiValueAlpha;->b:[Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public setUpdateVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/util/MultiValueAlpha;->d:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/MultiValueAlpha;->b:[Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
