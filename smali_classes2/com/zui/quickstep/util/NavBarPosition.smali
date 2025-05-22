.class public Lcom/zui/quickstep/util/NavBarPosition;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/zui/quickstep/SysUINavigationMode$Mode;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/util/NavBarPosition;->a:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/util/NavBarPosition;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/zui/quickstep/SysUINavigationMode$Mode;Lcom/zui/launcher/util/DefaultDisplay$Info;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/NavBarPosition;->a:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    iget p1, p2, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    iput p1, p0, Lcom/zui/quickstep/util/NavBarPosition;->b:I

    return-void
.end method


# virtual methods
.method public getRotation()F
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, -0x5a

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    int-to-float p0, p0

    :goto_1
    return p0
.end method

.method public getRotationMode()Lcom/zui/launcher/graphics/RotationMode;
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->ROTATION_SEASCAPE:Lcom/zui/launcher/graphics/RotationMode;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->ROTATION_LANDSCAPE:Lcom/zui/launcher/graphics/RotationMode;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/zui/launcher/graphics/RotationMode;->NORMAL:Lcom/zui/launcher/graphics/RotationMode;

    :goto_0
    return-object p0
.end method

.method public isLeftEdge()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/util/NavBarPosition;->a:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/zui/quickstep/util/NavBarPosition;->b:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRightEdge()Z
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/util/NavBarPosition;->a:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/zui/quickstep/util/NavBarPosition;->b:I

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
