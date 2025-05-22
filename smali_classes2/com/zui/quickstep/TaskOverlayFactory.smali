.class public Lcom/zui/quickstep/TaskOverlayFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/ResourceBasedOverride;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/TaskOverlayFactory$OverlayUICallbacks;,
        Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/quickstep/TaskOverlayFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:[Lcom/zui/quickstep/TaskSystemShortcut;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zui/quickstep/TaskSystemShortcut;

    new-instance v1, Lcom/zui/quickstep/TaskSystemShortcut$AppInfo;

    invoke-direct {v1}, Lcom/zui/quickstep/TaskSystemShortcut$AppInfo;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/zui/quickstep/TaskSystemShortcut$Freeform;

    invoke-direct {v1}, Lcom/zui/quickstep/TaskSystemShortcut$Freeform;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/zui/quickstep/TaskSystemShortcut$SplitScreen;

    invoke-direct {v1}, Lcom/zui/quickstep/TaskSystemShortcut$SplitScreen;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/zui/quickstep/TaskSystemShortcut$LockTask;

    invoke-direct {v1}, Lcom/zui/quickstep/TaskSystemShortcut$LockTask;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;

    invoke-direct {v1}, Lcom/zui/quickstep/TaskSystemShortcut$ExtCast;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/zui/quickstep/TaskOverlayFactory;->a:[Lcom/zui/quickstep/TaskSystemShortcut;

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/quickstep/e1;->a:Lcom/zui/quickstep/e1;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/quickstep/TaskOverlayFactory;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Lcom/zui/quickstep/TaskOverlayFactory;
    .locals 2

    const-class v0, Lcom/zui/quickstep/TaskOverlayFactory;

    const v1, 0x7f12066c

    invoke-static {v0, p0, v1}, Lcom/zui/launcher/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/zui/launcher/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/TaskOverlayFactory;

    return-object p0
.end method


# virtual methods
.method public createOverlay(Lcom/zui/quickstep/views/TaskThumbnailView;)Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;
    .locals 0

    new-instance p0, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-direct {p0, p1}, Lcom/zui/quickstep/TaskOverlayFactory$TaskOverlay;-><init>(Lcom/zui/quickstep/views/TaskThumbnailView;)V

    return-object p0
.end method

.method public getEnabledShortcuts(Lcom/zui/quickstep/views/TaskView;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/quickstep/views/TaskView;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/quickstep/TaskSystemShortcut;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/BaseDraggingActivity;

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/zui/quickstep/TaskOverlayFactory;->a:[Lcom/zui/quickstep/TaskSystemShortcut;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2, v0, p1}, Lcom/zui/quickstep/TaskSystemShortcut;->getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;)Landroid/view/View$OnClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
