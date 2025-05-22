.class public Lcom/zui/launcher/util/SystemUiController;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FLAG_DARK_NAV:I = 0x2

.field public static final FLAG_DARK_STATUS:I = 0x8

.field public static final FLAG_LIGHT_NAV:I = 0x1

.field public static final FLAG_LIGHT_STATUS:I = 0x4

.field public static final UI_STATE_ALL_APPS:I = 0x1

.field public static final UI_STATE_BASE_WINDOW:I = 0x0

.field public static final UI_STATE_OVERVIEW:I = 0x4

.field public static final UI_STATE_ROOT_VIEW:I = 0x3

.field public static final UI_STATE_WIDGET_BOTTOM_SHEET:I = 0x2


# instance fields
.field private final a:Landroid/view/Window;

.field private final b:[I


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zui/launcher/util/SystemUiController;->b:[I

    iput-object p1, p0, Lcom/zui/launcher/util/SystemUiController;->a:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/util/SystemUiController;->b:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateUiState(II)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/util/SystemUiController;->b:[I

    aget v1, v0, p1

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    aput p2, v0, p1

    iget-object p1, p0, Lcom/zui/launcher/util/SystemUiController;->a:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iget-object p2, p0, Lcom/zui/launcher/util/SystemUiController;->b:[I

    array-length v0, p2

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    if-ge v1, v0, :cond_5

    aget v3, p2, v1

    sget-boolean v4, Lcom/zui/launcher/Utilities;->ATLEAST_OREO:Z

    if-eqz v4, :cond_2

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1

    or-int/lit8 v2, v2, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_2

    and-int/lit8 v2, v2, -0x11

    :cond_2
    :goto_1
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_3

    or-int/lit16 v2, v2, 0x2000

    goto :goto_2

    :cond_3
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    and-int/lit16 v2, v2, -0x2001

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eq v2, p1, :cond_6

    iget-object p0, p0, Lcom/zui/launcher/util/SystemUiController;->a:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_6
    return-void
.end method

.method public updateUiState(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    return-void
.end method

.method public updateUiStateForStyle(II)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/util/SystemUiController;->b:[I

    aget v1, v0, p1

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    aput p2, v0, p1

    iget-object p1, p0, Lcom/zui/launcher/util/SystemUiController;->a:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    or-int/lit8 v0, p1, 0x10

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    and-int/lit8 v0, p1, -0x11

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x2000

    goto :goto_1

    :cond_3
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_4

    and-int/lit16 v0, v0, -0x2001

    :cond_4
    :goto_1
    if-eq v0, p1, :cond_5

    iget-object p0, p0, Lcom/zui/launcher/util/SystemUiController;->a:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_5
    return-void
.end method

.method public updateUiStateForStyle(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/util/SystemUiController;->updateUiStateForStyle(II)V

    return-void
.end method
