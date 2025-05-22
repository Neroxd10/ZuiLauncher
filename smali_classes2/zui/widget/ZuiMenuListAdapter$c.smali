.class Lzui/widget/ZuiMenuListAdapter$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/ZuiMenuListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/CharSequence;

.field private c:Z

.field private d:Z

.field private e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lzui/widget/ZuiMenuListAdapter;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lzui/widget/ZuiMenuListAdapter$c;->a:I

    iput-object p3, p0, Lzui/widget/ZuiMenuListAdapter$c;->b:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Lzui/widget/ZuiMenuListAdapter$c;->e:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lzui/widget/ZuiMenuListAdapter$c;->c:Z

    iput-boolean p1, p0, Lzui/widget/ZuiMenuListAdapter$c;->d:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lzui/widget/ZuiMenuListAdapter$c;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lzui/widget/ZuiMenuListAdapter$c;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lzui/widget/ZuiMenuListAdapter$c;->a:I

    return p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lzui/widget/ZuiMenuListAdapter$c;->c:Z

    return p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lzui/widget/ZuiMenuListAdapter$c;->d:Z

    return p0
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/widget/ZuiMenuListAdapter$c;->c:Z

    return-void
.end method

.method public g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/ZuiMenuListAdapter$c;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/widget/ZuiMenuListAdapter$c;->d:Z

    return-void
.end method
