.class Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$o;
.super Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o"
.end annotation


# instance fields
.field private a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$f;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$o;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$o;->a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    return-void
.end method

.method public onTaskLaunching(III)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl$o;->a:Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;

    invoke-static {p0}, Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;->f(Lcom/zui/launcher/QuickstepAppTransitionManagerImpl;)Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
