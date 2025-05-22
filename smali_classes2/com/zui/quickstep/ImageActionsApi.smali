.class public Lcom/zui/quickstep/ImageActionsApi;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final mBitmapSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field protected final mSystemUiProxy:Lcom/zui/quickstep/SystemUiProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/ImageActionsApi;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/quickstep/ImageActionsApi;->mBitmapSupplier:Ljava/util/function/Supplier;

    sget-object p2, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/SystemUiProxy;

    iput-object p1, p0, Lcom/zui/quickstep/ImageActionsApi;->mSystemUiProxy:Lcom/zui/quickstep/SystemUiProxy;

    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/content/Intent;Z)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/ImageActionsApi;->mBitmapSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "com.zui.launcherImageActionsApi"

    const-string p1, "No snapshot available, not starting share."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/t;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zui/quickstep/t;-><init>(Lcom/zui/quickstep/ImageActionsApi;Landroid/graphics/Rect;Landroid/content/Intent;Z)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(ZLandroid/net/Uri;Landroid/content/Intent;)[Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p0, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p0, "android.intent.extra.STREAM"

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    new-array p0, v0, [Landroid/content/Intent;

    const/4 p1, 0x0

    aput-object p2, p0, p1

    return-object p0
.end method


# virtual methods
.method public synthetic c(Landroid/graphics/Rect;Landroid/content/Intent;Z)V
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/ImageActionsApi;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/quickstep/ImageActionsApi;->mBitmapSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/graphics/Bitmap;

    new-instance v4, Lcom/zui/quickstep/s;

    invoke-direct {v4, p3}, Lcom/zui/quickstep/s;-><init>(Z)V

    const-string v5, "com.zui.launcherImageActionsApi"

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/zui/quickstep/util/ImageActionUtils;->persistBitmapAndStartActivity(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/util/function/BiFunction;Ljava/lang/String;)V

    return-void
.end method

.method public saveScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/ImageActionsApi;->mSystemUiProxy:Lcom/zui/quickstep/SystemUiProxy;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/zui/quickstep/util/ImageActionUtils;->saveScreenshot(Lcom/zui/quickstep/SystemUiProxy;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Insets;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    return-void
.end method

.method public shareAsDataWithExplicitIntent(Landroid/graphics/Rect;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/quickstep/ImageActionsApi;->a(Landroid/graphics/Rect;Landroid/content/Intent;Z)V

    return-void
.end method

.method public shareImage(Landroid/graphics/RectF;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;)V
    .locals 6
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/ImageActionsApi;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zui/quickstep/ImageActionsApi;->mBitmapSupplier:Ljava/util/function/Supplier;

    const-string v5, "com.zui.launcherImageActionsApi"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/zui/quickstep/util/ImageActionUtils;->shareImage(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/RectF;Landroid/content/pm/ShortcutInfo;Landroid/app/prediction/AppTarget;Ljava/lang/String;)V

    return-void
.end method

.method public shareWithExplicitIntent(Landroid/graphics/Rect;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/quickstep/ImageActionsApi;->a(Landroid/graphics/Rect;Landroid/content/Intent;Z)V

    return-void
.end method

.method public startShareActivity(Landroid/graphics/Rect;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/ImageActionsApi;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/quickstep/ImageActionsApi;->mBitmapSupplier:Ljava/util/function/Supplier;

    const/4 v1, 0x0

    const-string v2, "com.zui.launcherImageActionsApi"

    invoke-static {v0, p0, p1, v1, v2}, Lcom/zui/quickstep/util/ImageActionUtils;->startShareActivity(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/graphics/Rect;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
