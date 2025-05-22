.class public Lcom/zui/launcher/globalsearch/VerticalScrollTextView;
.super Landroid/widget/TextSwitcher;
.source ""

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;
    }
.end annotation


# static fields
.field public static currentPos:I


# instance fields
.field private a:Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

.field private b:Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

.field private c:F

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x41700000    # 15.0f

    iput p2, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->e:Z

    iput-boolean v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->g:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120612

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->i:Ljava/lang/String;

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    const/high16 p2, 0x41a00000    # 20.0f

    :cond_0
    invoke-static {p2, p1}, Lcom/zui/launcher/Utilities;->sp2px(FLandroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->c:F

    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/VerticalScrollTextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/zui/launcher/globalsearch/VerticalScrollTextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->f:Z

    return p1
.end method

.method private c(ZZ)Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;
    .locals 1

    new-instance v0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;-><init>(Lcom/zui/launcher/globalsearch/VerticalScrollTextView;ZZ)V

    const-wide/16 p0, 0x190

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0, p0}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->c(ZZ)Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->a:Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->c(ZZ)Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->b:Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->setViewListener()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->a:Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

    invoke-virtual {p0, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->b:Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

    invoke-virtual {p0, v0}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public addAnimator()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->a:Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

    invoke-virtual {p0, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->b:Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

    invoke-virtual {p0, v0}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public cancelAnimator()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public getData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getHotWordDownLoad()Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->getGlobalhotWordList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->g:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->e:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->f:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget v1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->c:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget p0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->d:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method public next()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->a:Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->b:Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public saveCurrentState(I)V
    .locals 1

    invoke-static {}, Lcom/zui/timelaweather/util/SpUtills;->getInstance()Lcom/zui/timelaweather/util/SpUtills;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/zui/timelaweather/util/SpUtills;->saveHotWordPos(Landroid/content/Context;I)Lcom/zui/timelaweather/util/SpUtills;

    return-void
.end method

.method public setCurrentTitleAndPosition(Ljava/lang/String;I)V
    .locals 0

    sput p2, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->currentPos:I

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->currentPos:I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->saveCurrentState(I)V

    return-void
.end method

.method public setHotWord(Lcom/zui/launcher/globalsearch/HotWordData;)V
    .locals 0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getHotWordDownLoad()Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->setCurrentHotWord(Lcom/zui/launcher/globalsearch/HotWordData;)V

    :cond_0
    return-void
.end method

.method public setNormalRefresh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->getData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->addAnimator()V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->g:Ljava/util/List;

    sget v1, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->currentPos:I

    rem-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/zui/launcher/globalsearch/HotWordData;

    iget-object v0, p1, Lcom/zui/launcher/globalsearch/HotWordData;->word:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->setHotWord(Lcom/zui/launcher/globalsearch/HotWordData;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->cancelAnimator()V

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->g:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->h:Ljava/lang/String;

    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->h:Ljava/lang/String;

    sget v0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->currentPos:I

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->setCurrentTitleAndPosition(Ljava/lang/String;I)V

    return-void
.end method

.method public setTextColor(I)Lcom/zui/launcher/globalsearch/VerticalScrollTextView;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->d:I

    return-object p0
.end method

.method public setTextSize(F)Lcom/zui/launcher/globalsearch/VerticalScrollTextView;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->c:F

    return-object p0
.end method

.method public setToopingTextList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/HotWordData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->getData(Ljava/util/List;)V

    const/4 p1, 0x0

    sput p1, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->currentPos:I

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->cancelAnimator()V

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->g:Ljava/util/List;

    sget v0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->currentPos:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/globalsearch/HotWordData;

    iget-object v0, p1, Lcom/zui/launcher/globalsearch/HotWordData;->word:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->setHotWord(Lcom/zui/launcher/globalsearch/HotWordData;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->h:Ljava/lang/String;

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setToopingTextList list -->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  currentTitle --> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlobalSearch.HotWordDownLoad"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->currentPos:I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->saveCurrentState(I)V

    return-void
.end method

.method public setViewListener()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->a:Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

    new-instance v1, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$a;-><init>(Lcom/zui/launcher/globalsearch/VerticalScrollTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->b:Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

    new-instance v1, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView$b;-><init>(Lcom/zui/launcher/globalsearch/VerticalScrollTextView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public startRefreshData(I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput p1, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->currentPos:I

    const/4 p1, 0x1

    if-le v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->addAnimator()V

    sget v1, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->currentPos:I

    add-int/2addr v1, p1

    sput v1, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->currentPos:I

    rem-int/2addr v1, v0

    sput v1, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->currentPos:I

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->g:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/zui/launcher/globalsearch/HotWordData;

    iget-object v0, p1, Lcom/zui/launcher/globalsearch/HotWordData;->word:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->setHotWord(Lcom/zui/launcher/globalsearch/HotWordData;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->cancelAnimator()V

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->g:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->h:Ljava/lang/String;

    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->h:Ljava/lang/String;

    sget v0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->currentPos:I

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->setCurrentTitleAndPosition(Ljava/lang/String;I)V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->a:Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/VerticalScrollTextView;->b:Lcom/zui/launcher/globalsearch/VerticalScrollTextView$c;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    return-void
.end method
