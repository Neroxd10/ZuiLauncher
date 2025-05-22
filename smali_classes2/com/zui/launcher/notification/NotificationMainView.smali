.class public Lcom/zui/launcher/notification/NotificationMainView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field public static final NOTIFICATION_ITEM_INFO:Lcom/zui/launcher/ItemInfo;


# instance fields
.field private a:Lcom/zui/launcher/notification/NotificationInfo;

.field private b:Landroid/view/ViewGroup;

.field private c:I

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private final g:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/notification/NotificationMainView$a;

    const-string v1, "contentTranslation"

    invoke-direct {v0, v1}, Lcom/zui/launcher/notification/NotificationMainView$a;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/zui/launcher/ItemInfo;

    invoke-direct {v0}, Lcom/zui/launcher/ItemInfo;-><init>()V

    sput-object v0, Lcom/zui/launcher/notification/NotificationMainView;->NOTIFICATION_ITEM_INFO:Lcom/zui/launcher/ItemInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/notification/NotificationMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/notification/NotificationMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/zui/launcher/notification/NotificationMainView;->g:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/notification/NotificationMainView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationMainView;->b:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private c(I)V
    .locals 2

    iput p1, p0, Lcom/zui/launcher/notification/NotificationMainView;->c:I

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationMainView;->g:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    iget-object p1, p0, Lcom/zui/launcher/notification/NotificationMainView;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationMainView;->g:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zui/launcher/notification/NotificationMainView;->a:Lcom/zui/launcher/notification/NotificationInfo;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationMainView;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Lcom/zui/launcher/notification/NotificationMainView;->c:I

    invoke-virtual {p1, v1, p0}, Lcom/zui/launcher/notification/NotificationInfo;->getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyNotificationInfo(Lcom/zui/launcher/notification/NotificationInfo;Z)V
    .locals 4

    iput-object p1, p0, Lcom/zui/launcher/notification/NotificationMainView;->a:Lcom/zui/launcher/notification/NotificationInfo;

    invoke-static {}, Lcom/zui/launcher/notification/NotificationListener;->getInstanceIfConnected()Lcom/zui/launcher/notification/NotificationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zui/launcher/notification/NotificationMainView;->a:Lcom/zui/launcher/notification/NotificationInfo;

    iget-object v2, v2, Lcom/zui/launcher/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/service/notification/NotificationListenerService;->setNotificationsShown([Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/notification/NotificationMainView;->a:Lcom/zui/launcher/notification/NotificationInfo;

    iget-object v0, p1, Lcom/zui/launcher/notification/NotificationInfo;->title:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/zui/launcher/notification/NotificationInfo;->text:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/notification/NotificationMainView;->d:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationMainView;->e:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/notification/NotificationMainView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lcom/zui/launcher/notification/NotificationMainView;->d:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/launcher/notification/NotificationMainView;->e:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/notification/NotificationMainView;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationMainView;->a:Lcom/zui/launcher/notification/NotificationInfo;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/zui/launcher/notification/NotificationMainView;->c:I

    invoke-virtual {v0, v1, v3}, Lcom/zui/launcher/notification/NotificationInfo;->getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zui/launcher/notification/NotificationMainView;->a:Lcom/zui/launcher/notification/NotificationInfo;

    iget-object v0, p1, Lcom/zui/launcher/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/notification/NotificationMainView;->setContentTranslation(F)V

    sget-object p1, Lcom/zui/launcher/notification/NotificationMainView;->NOTIFICATION_ITEM_INFO:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationMainView;->b:Landroid/view/ViewGroup;

    sget-object p1, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array p2, v2, [F

    fill-array-data p2, :array_0

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x96

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/notification/NotificationMainView;->c(I)V

    return-void
.end method

.method public canChildBeDismissed()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationMainView;->a:Lcom/zui/launcher/notification/NotificationInfo;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/zui/launcher/notification/NotificationInfo;->dismissable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getNotificationInfo()Lcom/zui/launcher/notification/NotificationInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationMainView;->a:Lcom/zui/launcher/notification/NotificationInfo;

    return-object p0
.end method

.method public onChildDismissed()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getPopupDataProvider()Lcom/zui/launcher/popup/PopupDataProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationMainView;->a:Lcom/zui/launcher/notification/NotificationInfo;

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/popup/PopupDataProvider;->cancelNotification(Ljava/lang/String;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a03c0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/zui/launcher/notification/NotificationMainView;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0a03d7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/notification/NotificationMainView;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationMainView;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0a03b7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/notification/NotificationMainView;->e:Landroid/widget/TextView;

    const v0, 0x7f0a02ca

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/notification/NotificationMainView;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationMainView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/notification/NotificationMainView;->c(I)V

    return-void
.end method

.method public setContentTranslation(F)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationMainView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationMainView;->f:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public updateBackgroundColor(ILandroid/animation/AnimatorSet;)V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/notification/NotificationMainView;->c:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/notification/l;

    invoke-direct {v0, p0}, Lcom/zui/launcher/notification/l;-><init>(Lcom/zui/launcher/notification/NotificationMainView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method
