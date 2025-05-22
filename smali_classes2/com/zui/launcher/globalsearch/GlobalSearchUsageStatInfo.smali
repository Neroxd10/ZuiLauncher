.class public Lcom/zui/launcher/globalsearch/GlobalSearchUsageStatInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NO_ID:I = -0x1


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public countTime:I

.field public countTotal:I

.field public countWeekTime:I

.field public id:J

.field public launcherKey:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public targetUserId:I

.field public title:Ljava/lang/CharSequence;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchUsageStatInfo;->id:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/globalsearch/GlobalSearchUsageStatInfo;->targetUserId:I

    return-void
.end method
