.class public Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/util/SplitConfigurationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StagedSplitTaskPosition"
.end annotation


# instance fields
.field public stagePosition:I

.field public stageType:I
    .annotation build Lcom/zui/launcher/util/SplitConfigurationOptions$StageType;
    .end annotation
.end field

.field public taskId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    iput v0, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stagePosition:I

    iput v0, p0, Lcom/zui/launcher/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stageType:I

    return-void
.end method
