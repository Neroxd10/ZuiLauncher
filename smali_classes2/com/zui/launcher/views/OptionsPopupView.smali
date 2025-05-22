.class public Lcom/zui/launcher/views/OptionsPopupView;
.super Lcom/zui/launcher/popup/ArrowPopup;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/views/OptionsPopupView$OptionItem;
    }
.end annotation


# instance fields
.field private final k:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/zui/launcher/views/OptionsPopupView$OptionItem;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/views/OptionsPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/views/OptionsPopupView;->k:Landroid/util/ArrayMap;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/popup/ArrowPopup;->setArrowShowFlag(Z)V

    return-void
.end method

.method private f(Landroid/view/View;I)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/views/OptionsPopupView;->k:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;->a(Lcom/zui/launcher/views/OptionsPopupView$OptionItem;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v0}, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;->a(Lcom/zui/launcher/views/OptionsPopupView$OptionItem;)I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/zui/launcher/views/OptionsPopupView;->g(II)V

    :cond_1
    invoke-static {v0}, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;->b(Lcom/zui/launcher/views/OptionsPopupView$OptionItem;)Landroid/view/View$OnLongClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return p1

    :cond_2
    return v1
.end method

.method private g(II)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnControl(II)V

    return-void
.end method

.method public static getOptionsPopup(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/popup/ArrowPopup;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const v0, 0x7f0a0130

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/popup/ArrowPopup;

    return-object p0
.end method

.method public static onWidgetsClicked(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/views/OptionsPopupView;->openWidgets(Lcom/zui/launcher/Launcher;)Z

    move-result p0

    return p0
.end method

.method public static openWidgets(Lcom/zui/launcher/Launcher;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1205ea

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->show(Lcom/zui/launcher/Launcher;Z)Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    return v0
.end method

.method public static show(Lcom/zui/launcher/Launcher;Landroid/graphics/RectF;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/Launcher;",
            "Landroid/graphics/RectF;",
            "Ljava/util/List<",
            "Lcom/zui/launcher/views/OptionsPopupView$OptionItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    const v2, 0x7f0d00e0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/views/OptionsPopupView;

    iput-object p1, v0, Lcom/zui/launcher/views/OptionsPopupView;->l:Landroid/graphics/RectF;

    const p1, 0x7f080326

    invoke-static {p0, v0, p1}, Lcom/zui/launcher/popup/ArrowPopup;->createFrameView(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;

    const v1, 0x7f0d0175

    invoke-virtual {v0, v1, v0}, Lcom/zui/launcher/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    invoke-virtual {v1}, Lcom/zui/launcher/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-static {p2}, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;->c(Lcom/zui/launcher/views/OptionsPopupView$OptionItem;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1}, Lcom/zui/launcher/shortcuts/DeepShortcutView;->getBubbleText()Lcom/zui/launcher/BubbleTextView;

    move-result-object v2

    invoke-static {p2}, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;->d(Lcom/zui/launcher/views/OptionsPopupView$OptionItem;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, v0, Lcom/zui/launcher/views/OptionsPopupView;->k:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zui/launcher/popup/ArrowPopup;->reorderAndShow(I)V

    const p1, 0x7f080325

    invoke-static {p0, v0, p1}, Lcom/zui/launcher/popup/ArrowPopup;->createFrameView(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public static showDefaultOptions(Lcom/zui/launcher/Launcher;FF)V
    .locals 6

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070587

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const/4 v3, 0x2

    if-ltz v2, :cond_1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/2addr p1, v3

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    div-int/2addr p2, v3

    int-to-float p2, p2

    :cond_2
    new-instance v1, Landroid/graphics/RectF;

    sub-float v2, p1, v0

    sub-float v4, p2, v0

    add-float/2addr p1, v0

    add-float/2addr p2, v0

    invoke-direct {v1, v2, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isNightMode(Landroid/content/Context;)Z

    const p2, 0x7f120553

    const v0, 0x7f0802ab

    new-instance v2, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;

    const/4 v4, 0x3

    sget-object v5, Lcom/zui/launcher/views/w;->a:Lcom/zui/launcher/views/w;

    invoke-direct {v2, p2, v0, v4, v5}, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;-><init>(IIILandroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;

    const v0, 0x7f120554

    const v2, 0x7f0802ad

    sget-object v4, Lcom/zui/launcher/views/a;->a:Lcom/zui/launcher/views/a;

    invoke-direct {p2, v0, v2, v3, v4}, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;-><init>(IIILandroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;

    const v0, 0x7f120551

    const v2, 0x7f080288

    const/4 v3, 0x4

    sget-object v4, Lcom/zui/launcher/views/x;->a:Lcom/zui/launcher/views/x;

    invoke-direct {p2, v0, v2, v3, v4}, Lcom/zui/launcher/views/OptionsPopupView$OptionItem;-><init>(IIILandroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v1, p1}, Lcom/zui/launcher/views/OptionsPopupView;->show(Lcom/zui/launcher/Launcher;Landroid/graphics/RectF;Ljava/util/List;)V

    return-void
.end method

.method public static startSettings(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    const/high16 v0, 0x10000000

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.settings.ZuiLauncherSettings"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static startWallpaperPicker(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.zui.wallpapersetting/.activity.AllWallpaperMainActivity"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v2, 0x14008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isWallpaperAllowed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const p0, 0x7f1204ec

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/Workspace;->getWallpaperOffsetForCenterPage()F

    move-result v2

    const-string v3, "com.android.launcher3.WALLPAPER_OFFSET"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->existsStyleWallpapers(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "com.android.launcher3.WALLPAPER_FLAVOR"

    if-nez v2, :cond_1

    const-string v2, "wallpaper_only"

    goto :goto_0

    :cond_1
    const-string v2, "focus_wallpaper"

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x7f12071a

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Lcom/zui/launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getTargetObjectLocation(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/OptionsPopupView;->l:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected getTargetObjectWidth(Landroid/graphics/Rect;)I
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public isOfType(I)Z
    .locals 0

    and-int/lit16 p0, p1, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public logActionCommand(I)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/views/OptionsPopupView;->f(Landroid/view/View;I)Z

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/popup/ArrowPopup;->getPopupContainer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return p1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/views/OptionsPopupView;->f(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method
