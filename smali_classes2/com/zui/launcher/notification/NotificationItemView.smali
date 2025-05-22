.class public Lcom/zui/launcher/notification/NotificationItemView;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final j:Landroid/graphics/Rect;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/zui/launcher/popup/PopupContainerWithArrow;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Landroid/widget/TextView;

.field private final e:Lcom/zui/launcher/notification/NotificationMainView;

.field private final f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/notification/NotificationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/zui/launcher/notification/NotificationItemView;->j:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/popup/PopupContainerWithArrow;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/notification/NotificationItemView;->h:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/notification/NotificationItemView;->i:Ljava/util/List;

    iput-object p1, p0, Lcom/zui/launcher/notification/NotificationItemView;->b:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    iput-object p2, p0, Lcom/zui/launcher/notification/NotificationItemView;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/notification/NotificationItemView;->a:Landroid/content/Context;

    const v0, 0x7f0a0296

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/notification/NotificationItemView;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0255

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/notification/NotificationMainView;

    iput-object v0, p0, Lcom/zui/launcher/notification/NotificationItemView;->e:Lcom/zui/launcher/notification/NotificationMainView;

    const v0, 0x7f0a01bd

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/notification/NotificationItemView;->f:Landroid/view/View;

    iget-object p1, p0, Lcom/zui/launcher/notification/NotificationItemView;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/launcher/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    new-instance v0, Lcom/zui/launcher/notification/NotificationItemView$a;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/notification/NotificationItemView$a;-><init>(Lcom/zui/launcher/notification/NotificationItemView;F)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method


# virtual methods
.method public addGutter()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationItemView;->g:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationItemView;->b:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    const v1, 0x7f0d0105

    iget-object v2, p0, Lcom/zui/launcher/notification/NotificationItemView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/notification/NotificationItemView;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public applyNotificationInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/notification/NotificationInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationItemView;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationItemView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/notification/NotificationInfo;

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationItemView;->e:Lcom/zui/launcher/notification/NotificationMainView;

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/notification/NotificationMainView;->applyNotificationInfo(Lcom/zui/launcher/notification/NotificationInfo;Z)V

    return-void
.end method

.method public inverseGutterMargin()V
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationItemView;->g:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zui/launcher/notification/NotificationItemView;->j:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/launcher/notification/NotificationItemView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/notification/NotificationItemView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/notification/NotificationItemView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/notification/NotificationItemView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lcom/zui/launcher/notification/NotificationItemView;->j:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/zui/launcher/notification/NotificationItemView;->h:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/notification/NotificationItemView;->b:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    iget-boolean p1, p0, Lcom/zui/launcher/notification/NotificationItemView;->h:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationItemView;->e:Lcom/zui/launcher/notification/NotificationMainView;

    invoke-virtual {p0}, Lcom/zui/launcher/notification/NotificationMainView;->getNotificationInfo()Lcom/zui/launcher/notification/NotificationInfo;

    move-result-object p0

    return v0
.end method

.method public removeAllViews()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationItemView;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/zui/launcher/notification/NotificationItemView;->e:Lcom/zui/launcher/notification/NotificationMainView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationItemView;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/zui/launcher/notification/NotificationItemView;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationItemView;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationItemView;->c:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public trimNotifications(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/notification/NotificationItemView;->e:Lcom/zui/launcher/notification/NotificationMainView;

    invoke-virtual {v0}, Lcom/zui/launcher/notification/NotificationMainView;->getNotificationInfo()Lcom/zui/launcher/notification/NotificationInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/zui/launcher/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    iget-object v4, p0, Lcom/zui/launcher/notification/NotificationItemView;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    if-ge v4, p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/notification/NotificationItemView;->i:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/zui/launcher/notification/NotificationInfo;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationItemView;->e:Lcom/zui/launcher/notification/NotificationMainView;

    invoke-virtual {p0, v1, v2}, Lcom/zui/launcher/notification/NotificationMainView;->applyNotificationInfo(Lcom/zui/launcher/notification/NotificationInfo;Z)V

    :cond_2
    return-void
.end method

.method public updateBackgroundColor(ILandroid/animation/AnimatorSet;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationItemView;->e:Lcom/zui/launcher/notification/NotificationMainView;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/notification/NotificationMainView;->updateBackgroundColor(ILandroid/animation/AnimatorSet;)V

    return-void
.end method

.method public updateHeader(I)V
    .locals 2

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    const/4 p1, 0x4

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/notification/NotificationItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/zui/launcher/notification/NotificationItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
