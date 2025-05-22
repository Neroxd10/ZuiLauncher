.class public Lcom/zui/launcher/graphics/BitmapCreationCheck;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/graphics/BitmapCreationCheck$b;
    }
.end annotation


# static fields
.field public static final ENABLED:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/graphics/BitmapCreationCheck$b;)V
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/graphics/BitmapCreationCheck$b;->b(Lcom/zui/launcher/graphics/BitmapCreationCheck$b;)V

    return-void
.end method

.method public static startTracking(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/graphics/BitmapCreationCheck$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/launcher/graphics/BitmapCreationCheck$b;-><init>(Lcom/zui/launcher/graphics/BitmapCreationCheck$a;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance p0, Lcom/zui/launcher/graphics/b;

    invoke-direct {p0, v0}, Lcom/zui/launcher/graphics/b;-><init>(Lcom/zui/launcher/graphics/BitmapCreationCheck$b;)V

    sput-object p0, Lcom/zui/launcher/icons/GraphicsUtils;->sOnNewBitmapRunnable:Ljava/lang/Runnable;

    return-void
.end method
