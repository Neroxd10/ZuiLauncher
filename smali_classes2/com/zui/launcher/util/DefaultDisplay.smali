.class public Lcom/zui/launcher/util/DefaultDisplay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/DefaultDisplay$DisplayInfoChangeListener;,
        Lcom/zui/launcher/util/DefaultDisplay$Info;
    }
.end annotation


# static fields
.field public static final CHANGE_ALL:I = 0x7

.field public static final CHANGE_FRAME_DELAY:I = 0x4

.field public static final CHANGE_ROTATION:I = 0x2

.field public static final CHANGE_SIZE:I = 0x1

.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/launcher/util/DefaultDisplay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/util/DefaultDisplay$DisplayInfoChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private e:Lcom/zui/launcher/util/DefaultDisplay$Info;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/launcher/util/e;->a:Lcom/zui/launcher/util/e;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/launcher/util/DefaultDisplay;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/zui/launcher/util/DefaultDisplay;->a:Landroid/content/Context;

    new-instance v0, Lcom/zui/launcher/util/DefaultDisplay$Info;

    invoke-direct {v0, p1}, Lcom/zui/launcher/util/DefaultDisplay$Info;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay;->e:Lcom/zui/launcher/util/DefaultDisplay$Info;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultDisplay, mInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/util/DefaultDisplay;->e:Lcom/zui/launcher/util/DefaultDisplay$Info;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDisplay"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay;->e:Lcom/zui/launcher/util/DefaultDisplay$Info;

    iget v0, v0, Lcom/zui/launcher/util/DefaultDisplay$Info;->id:I

    iput v0, p0, Lcom/zui/launcher/util/DefaultDisplay;->b:I

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/zui/launcher/util/d;

    invoke-direct {v1, p0}, Lcom/zui/launcher/util/d;-><init>(Lcom/zui/launcher/util/DefaultDisplay;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay;->d:Landroid/os/Handler;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a(Lcom/zui/launcher/util/DefaultDisplay;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/DefaultDisplay;->c(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/content/Context;)Lcom/zui/launcher/util/DefaultDisplay;
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/DefaultDisplay;

    invoke-direct {v0, p0}, Lcom/zui/launcher/util/DefaultDisplay;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private c(Landroid/os/Message;)Z
    .locals 6

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v1, "b/158017601"

    if-eqz v0, :cond_0

    const-string v0, "onChange."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_2

    sget-boolean v3, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange.mListeners.get(i):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/launcher/util/DefaultDisplay;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/zui/launcher/util/DefaultDisplay;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/util/DefaultDisplay$DisplayInfoChangeListener;

    iget-object v4, p0, Lcom/zui/launcher/util/DefaultDisplay;->e:Lcom/zui/launcher/util/DefaultDisplay$Info;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-interface {v3, v4, v5}, Lcom/zui/launcher/util/DefaultDisplay$DisplayInfoChangeListener;->onDisplayInfoChanged(Lcom/zui/launcher/util/DefaultDisplay$Info;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static getSingleFrameMs(Landroid/content/Context;)I
    .locals 1

    sget-object v0, Lcom/zui/launcher/util/DefaultDisplay;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {p0}, Lcom/zui/launcher/util/DefaultDisplay;->getInfo()Lcom/zui/launcher/util/DefaultDisplay$Info;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->singleFrameMs:I

    return p0
.end method


# virtual methods
.method public addChangeListener(Lcom/zui/launcher/util/DefaultDisplay$DisplayInfoChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/DefaultDisplay;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "DefaultDisplay: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/util/DefaultDisplay;->e:Lcom/zui/launcher/util/DefaultDisplay$Info;

    invoke-virtual {v1}, Lcom/zui/launcher/util/DefaultDisplay$Info;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  listeners include:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/util/DefaultDisplay;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/util/DefaultDisplay;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/util/DefaultDisplay$DisplayInfoChangeListener;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getInfo()Lcom/zui/launcher/util/DefaultDisplay$Info;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/DefaultDisplay;->e:Lcom/zui/launcher/util/DefaultDisplay$Info;

    return-object p0
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 5

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v1, "b/158017601"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayChanged~displayId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/launcher/util/DefaultDisplay;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/zui/launcher/util/DefaultDisplay;->b:I

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/util/DefaultDisplay;->e:Lcom/zui/launcher/util/DefaultDisplay$Info;

    new-instance v0, Lcom/zui/launcher/util/DefaultDisplay$Info;

    iget-object v2, p0, Lcom/zui/launcher/util/DefaultDisplay;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/zui/launcher/util/DefaultDisplay$Info;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-static {v0, p1}, Lcom/zui/launcher/util/DefaultDisplay$Info;->a(Lcom/zui/launcher/util/DefaultDisplay$Info;Lcom/zui/launcher/util/DefaultDisplay$Info;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    sget-boolean v3, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisplayChanged~oldInfo.rotation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", info.rotation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v3, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    iget v4, v0, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    if-eq v3, v4, :cond_4

    or-int/lit8 v2, v2, 0x2

    :cond_4
    iget v3, v0, Lcom/zui/launcher/util/DefaultDisplay$Info;->singleFrameMs:I

    iget p1, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->singleFrameMs:I

    if-eq v3, p1, :cond_5

    or-int/lit8 v2, v2, 0x4

    :cond_5
    if-eqz v2, :cond_7

    iput-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay;->e:Lcom/zui/launcher/util/DefaultDisplay$Info;

    sget-boolean p1, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDisplayChanged~sendEmptyMessage:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p0, p0, Lcom/zui/launcher/util/DefaultDisplay;->d:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public removeChangeListener(Lcom/zui/launcher/util/DefaultDisplay$DisplayInfoChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/DefaultDisplay;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
