.class public Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/RemoteTargetGluer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteTargetHandle"
.end annotation


# instance fields
.field private final a:Lcom/zui/quickstep/util/TaskViewSimulator;

.field private final b:Lcom/zui/quickstep/util/TransformParams;


# direct methods
.method public constructor <init>(Lcom/zui/quickstep/util/TaskViewSimulator;Lcom/zui/quickstep/util/TransformParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->b:Lcom/zui/quickstep/util/TransformParams;

    iput-object p1, p0, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->a:Lcom/zui/quickstep/util/TaskViewSimulator;

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/zui/quickstep/util/TransformParams;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->b:Lcom/zui/quickstep/util/TransformParams;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/zui/quickstep/util/TaskViewSimulator;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->a:Lcom/zui/quickstep/util/TaskViewSimulator;

    return-object p0
.end method


# virtual methods
.method public getTaskViewSimulator()Lcom/zui/quickstep/util/TaskViewSimulator;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->a:Lcom/zui/quickstep/util/TaskViewSimulator;

    return-object p0
.end method

.method public getTransformParams()Lcom/zui/quickstep/util/TransformParams;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->b:Lcom/zui/quickstep/util/TransformParams;

    return-object p0
.end method
