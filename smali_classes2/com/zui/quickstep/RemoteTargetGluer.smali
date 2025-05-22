.class public Lcom/zui/quickstep/RemoteTargetGluer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    }
.end annotation


# instance fields
.field private a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

.field private b:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->getRunningSplitTaskIds()[I

    move-result-object v0

    :goto_0
    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/zui/quickstep/RemoteTargetGluer;->a(Landroid/content/Context;I)[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/RemoteTargetGluer;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p2, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length p2, p2

    invoke-direct {p0, p1, p2}, Lcom/zui/quickstep/RemoteTargetGluer;->a(Landroid/content/Context;I)[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/RemoteTargetGluer;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-void
.end method

.method private a(Landroid/content/Context;I)[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 4

    new-array p0, p2, [Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    new-instance v1, Lcom/zui/quickstep/util/TaskViewSimulator;

    invoke-direct {v1, p1}, Lcom/zui/quickstep/util/TaskViewSimulator;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/zui/quickstep/util/TransformParams;

    invoke-direct {v2}, Lcom/zui/quickstep/util/TransformParams;-><init>()V

    new-instance v3, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-direct {v3, v1, v2}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;-><init>(Lcom/zui/quickstep/util/TaskViewSimulator;Lcom/zui/quickstep/util/TransformParams;)V

    aput-object v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private b(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/zui/quickstep/util/RemoteAnimationTargetSet;
    .locals 5
    .param p2    # Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p1, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length p0, p0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sub-int/2addr p0, v1

    new-array p0, p0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v1, p1, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v2, v1

    move v3, v0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v4, v1, v0

    if-ne v4, p2, :cond_1

    goto :goto_2

    :cond_1
    aput-object v4, p0, v3

    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance p2, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    iget-object v0, p1, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->wallpapers:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget p1, p1, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->targetMode:I

    invoke-direct {p2, p0, v0, p1}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    return-object p2
.end method


# virtual methods
.method public assignTargets(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/quickstep/RemoteTargetGluer;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v2, v2, v0

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->a(Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/zui/quickstep/util/TransformParams;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/zui/quickstep/RemoteTargetGluer;->b(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/zui/quickstep/util/TransformParams;->setTargetSet(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)Lcom/zui/quickstep/util/TransformParams;

    iget-object v1, p0, Lcom/zui/quickstep/RemoteTargetGluer;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->b(Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/zui/quickstep/util/TaskViewSimulator;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/zui/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public assignTargetsForSplitScreen(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 1

    sget-object v0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->getRunningSplitTaskIds()[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zui/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;[I)[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object p0

    return-object p0
.end method

.method public assignTargetsForSplitScreen(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;[I)[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 8

    iget-object v0, p0, Lcom/zui/quickstep/RemoteTargetGluer;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object p2, v0, v3

    invoke-static {p2}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->a(Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/zui/quickstep/util/TransformParams;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/quickstep/util/TransformParams;->setTargetSet(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)Lcom/zui/quickstep/util/TransformParams;

    iget-object p1, p1, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length p2, p1

    if-lez p2, :cond_1

    aget-object p1, p1, v3

    iget-object p2, p0, Lcom/zui/quickstep/RemoteTargetGluer;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object p2, p2, v3

    invoke-static {p2}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->b(Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/zui/quickstep/util/TaskViewSimulator;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/zui/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;)V

    goto :goto_0

    :cond_0
    aget v0, p2, v3

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v0

    aget v1, p2, v2

    invoke-virtual {p1, v1}, Lcom/zui/quickstep/util/RemoteAnimationTargetSet;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v1

    new-instance v4, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    iget-object v5, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    aget v7, p2, v3

    aget p2, p2, v2

    invoke-direct {v4, v5, v6, v7, p2}, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iput-object v4, p0, Lcom/zui/quickstep/RemoteTargetGluer;->b:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    iget-object p2, p0, Lcom/zui/quickstep/RemoteTargetGluer;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object p2, p2, v3

    invoke-static {p2}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->a(Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/zui/quickstep/util/TransformParams;

    move-result-object p2

    invoke-direct {p0, p1, v1}, Lcom/zui/quickstep/RemoteTargetGluer;->b(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/zui/quickstep/util/TransformParams;->setTargetSet(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)Lcom/zui/quickstep/util/TransformParams;

    iget-object p2, p0, Lcom/zui/quickstep/RemoteTargetGluer;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object p2, p2, v3

    invoke-static {p2}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->b(Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/zui/quickstep/util/TaskViewSimulator;

    move-result-object p2

    iget-object v3, p0, Lcom/zui/quickstep/RemoteTargetGluer;->b:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    invoke-virtual {p2, v0, v3}, Lcom/zui/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;)V

    iget-object p2, p0, Lcom/zui/quickstep/RemoteTargetGluer;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object p2, p2, v2

    invoke-static {p2}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->a(Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/zui/quickstep/util/TransformParams;

    move-result-object p2

    invoke-direct {p0, p1, v0}, Lcom/zui/quickstep/RemoteTargetGluer;->b(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Lcom/zui/quickstep/util/RemoteAnimationTargetSet;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/zui/quickstep/util/TransformParams;->setTargetSet(Lcom/zui/quickstep/util/RemoteAnimationTargetSet;)Lcom/zui/quickstep/util/TransformParams;

    iget-object p1, p0, Lcom/zui/quickstep/RemoteTargetGluer;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;->b(Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;)Lcom/zui/quickstep/util/TaskViewSimulator;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/quickstep/RemoteTargetGluer;->b:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    invoke-virtual {p1, v1, p2}, Lcom/zui/quickstep/util/TaskViewSimulator;->setPreview(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/zui/quickstep/RemoteTargetGluer;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-object p0
.end method

.method public getRemoteTargetHandles()[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RemoteTargetGluer;->a:[Lcom/zui/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-object p0
.end method

.method public getStagedSplitBounds()Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RemoteTargetGluer;->b:Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitBounds;

    return-object p0
.end method
