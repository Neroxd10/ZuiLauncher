.class public Lcom/zui/launcher/popup/SystemShortcutFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/ResourceBasedOverride;


# static fields
.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/launcher/popup/SystemShortcutFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:[Lcom/zui/launcher/popup/SystemShortcut;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/zui/launcher/popup/SystemShortcutFactory;

    const v1, 0x7f120666

    invoke-static {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->forOverride(Ljava/lang/Class;I)Lcom/zui/launcher/util/MainThreadInitializedObject;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/popup/SystemShortcutFactory;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/zui/launcher/popup/SystemShortcut;

    new-instance v1, Lcom/zui/launcher/popup/SystemShortcut$AppInfo;

    invoke-direct {v1}, Lcom/zui/launcher/popup/SystemShortcut$AppInfo;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/zui/launcher/popup/SystemShortcut$FloatOpen;

    invoke-direct {v1}, Lcom/zui/launcher/popup/SystemShortcut$FloatOpen;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/zui/launcher/popup/SystemShortcut$Install;

    invoke-direct {v1}, Lcom/zui/launcher/popup/SystemShortcut$Install;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/zui/launcher/popup/SystemShortcut$DismissPrediction;

    invoke-direct {v1}, Lcom/zui/launcher/popup/SystemShortcut$DismissPrediction;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/zui/launcher/popup/SystemShortcut$Uninstall;

    invoke-direct {v1}, Lcom/zui/launcher/popup/SystemShortcut$Uninstall;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/zui/launcher/popup/SystemShortcut$RemoveIcon;

    invoke-direct {v1}, Lcom/zui/launcher/popup/SystemShortcut$RemoveIcon;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/zui/launcher/popup/SystemShortcut$EditWidget;

    invoke-direct {v1}, Lcom/zui/launcher/popup/SystemShortcut$EditWidget;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/zui/launcher/popup/SystemShortcut$RemoveWidget;

    invoke-direct {v1}, Lcom/zui/launcher/popup/SystemShortcut$RemoveWidget;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/zui/launcher/popup/SystemShortcutFactory;-><init>([Lcom/zui/launcher/popup/SystemShortcut;)V

    return-void
.end method

.method protected varargs constructor <init>([Lcom/zui/launcher/popup/SystemShortcut;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/SystemShortcutFactory;->a:[Lcom/zui/launcher/popup/SystemShortcut;

    return-void
.end method


# virtual methods
.method public getEnabledShortcuts(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/ItemInfo;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/Launcher;",
            "Lcom/zui/launcher/ItemInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/zui/launcher/popup/SystemShortcut;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/popup/SystemShortcutFactory;->a:[Lcom/zui/launcher/popup/SystemShortcut;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1, p2}, Lcom/zui/launcher/popup/SystemShortcut;->getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/launcher/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
