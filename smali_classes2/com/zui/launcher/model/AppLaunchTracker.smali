.class public Lcom/zui/launcher/model/AppLaunchTracker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/ResourceBasedOverride;


# static fields
.field public static final CONTAINER_ALL_APPS:Ljava/lang/String;

.field public static final CONTAINER_DEFAULT:Ljava/lang/String;

.field public static final CONTAINER_PREDICTIONS:Ljava/lang/String;

.field public static final CONTAINER_SEARCH:Ljava/lang/String;

.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/launcher/model/AppLaunchTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/model/AppLaunchTracker;->CONTAINER_DEFAULT:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/model/AppLaunchTracker;->CONTAINER_ALL_APPS:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/model/AppLaunchTracker;->CONTAINER_PREDICTIONS:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/model/AppLaunchTracker;->CONTAINER_SEARCH:Ljava/lang/String;

    const-class v0, Lcom/zui/launcher/model/AppLaunchTracker;

    const v1, 0x7f12009f

    invoke-static {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->forOverride(Ljava/lang/Class;I)Lcom/zui/launcher/util/MainThreadInitializedObject;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/model/AppLaunchTracker;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissApp(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onReturnedToHome()V
    .locals 0

    return-void
.end method

.method public onStartApp(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onStartShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
