.class public final Lcom/zui/launcher/InvariantDeviceProfile$GridOption;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/InvariantDeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GridOption"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "grid-option"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field public final canBeShown:Z

.field private final d:I

.field private final e:I

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final numColumns:I

.field public final numRows:I

.field public final previewId:I

.field public final previewSelectedId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zui/launcher/R$styleable;->GridDisplayOption:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->numRows:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->numColumns:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->d:I

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->e:I

    iget v3, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->numColumns:I

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->c:I

    iget v3, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->numRows:I

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->a:I

    iget v3, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->numColumns:I

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->b:I

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->previewId:I

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->previewSelectedId:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->canBeShown:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Lcom/zui/launcher/R$styleable;->GridDisplayOption:[I

    invoke-static {v0}, Lcom/zui/launcher/util/IntArray;->wrap([I)Lcom/zui/launcher/util/IntArray;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/zui/launcher/util/Themes;->createValueMap(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/zui/launcher/util/IntArray;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->f:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->c:I

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->d:I

    return p0
.end method

.method static synthetic c(Lcom/zui/launcher/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->e:I

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->a:I

    return p0
.end method

.method static synthetic e(Lcom/zui/launcher/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->b:I

    return p0
.end method

.method static synthetic f(Lcom/zui/launcher/InvariantDeviceProfile$GridOption;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/InvariantDeviceProfile$GridOption;->f:Landroid/util/SparseArray;

    return-object p0
.end method
