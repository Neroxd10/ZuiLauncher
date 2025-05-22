.class public Lzui/appcompat/widget/ActionMenuPresenter;
.super Lzui/util/ReflectClass;
.source ""


# static fields
.field private static c:Lzui/appcompat/widget/ActionMenuPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzui/appcompat/widget/ActionMenuPresenter;

    invoke-direct {v0}, Lzui/appcompat/widget/ActionMenuPresenter;-><init>()V

    sput-object v0, Lzui/appcompat/widget/ActionMenuPresenter;->c:Lzui/appcompat/widget/ActionMenuPresenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.support.v7.widget.ActionMenuPresenter"

    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setParentContext(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 0

    sget-object p0, Lzui/appcompat/widget/ActionMenuPresenter;->c:Lzui/appcompat/widget/ActionMenuPresenter;

    iput-object p1, p0, Lzui/util/ReflectClass;->mRealObject:Ljava/lang/Object;

    return-void
.end method

.method public updateZuiStyle()V
    .locals 2

    sget-object p0, Lzui/appcompat/widget/ActionMenuPresenter;->c:Lzui/appcompat/widget/ActionMenuPresenter;

    if-eqz p0, :cond_0

    sget v0, Lzui/platform/R$layout;->action_menu_item_layout_zui:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mItemLayoutRes"

    invoke-virtual {p0, v1, v0}, Lzui/util/ReflectClass;->setSupperClassConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
