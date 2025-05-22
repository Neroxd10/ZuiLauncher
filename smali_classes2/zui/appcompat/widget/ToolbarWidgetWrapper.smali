.class public Lzui/appcompat/widget/ToolbarWidgetWrapper;
.super Lzui/util/ReflectClass;
.source ""


# static fields
.field private static e:Lzui/appcompat/widget/ToolbarWidgetWrapper;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lzui/appcompat/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzui/appcompat/widget/ToolbarWidgetWrapper;

    invoke-direct {v0}, Lzui/appcompat/widget/ToolbarWidgetWrapper;-><init>()V

    sput-object v0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->e:Lzui/appcompat/widget/ToolbarWidgetWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.support.v7.widget.ToolbarWidgetWrapper"

    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a()Lzui/appcompat/widget/Toolbar;
    .locals 2

    sget-object v0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->e:Lzui/appcompat/widget/ToolbarWidgetWrapper;

    if-eqz v0, :cond_0

    const-string v1, "mToolbar"

    invoke-virtual {v0, v1}, Lzui/util/ReflectClass;->hasHiddenField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->e:Lzui/appcompat/widget/ToolbarWidgetWrapper;

    invoke-virtual {v0, v1}, Lzui/util/ReflectClass;->getHiddenConstObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lzui/appcompat/widget/Toolbar;

    invoke-direct {v1}, Lzui/appcompat/widget/Toolbar;-><init>()V

    invoke-virtual {v1, v0}, Lzui/appcompat/widget/Toolbar;->setRealObject(Ljava/lang/Object;)V

    iget-object p0, p0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->c:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lzui/appcompat/widget/Toolbar;->setParentContext(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public setParentContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->c:Landroid/content/Context;

    return-void
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 0

    sget-object p0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->e:Lzui/appcompat/widget/ToolbarWidgetWrapper;

    iput-object p1, p0, Lzui/util/ReflectClass;->mRealObject:Ljava/lang/Object;

    return-void
.end method

.method public updateToolbar()V
    .locals 1

    iget-object v0, p0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->d:Lzui/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lzui/appcompat/widget/ToolbarWidgetWrapper;->a()Lzui/appcompat/widget/Toolbar;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->d:Lzui/appcompat/widget/Toolbar;

    :cond_0
    iget-object p0, p0, Lzui/appcompat/widget/ToolbarWidgetWrapper;->d:Lzui/appcompat/widget/Toolbar;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lzui/appcompat/widget/Toolbar;->updateZuiStyle()V

    :cond_1
    return-void
.end method
