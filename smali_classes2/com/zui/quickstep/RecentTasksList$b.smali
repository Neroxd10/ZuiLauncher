.class Lcom/zui/quickstep/RecentTasksList$b;
.super Ljava/util/ArrayList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/RecentTasksList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/android/systemui/shared/recents/model/Task;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Z


# direct methods
.method constructor <init>(IZI)V
    .locals 0

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput p1, p0, Lcom/zui/quickstep/RecentTasksList$b;->a:I

    iput-boolean p2, p0, Lcom/zui/quickstep/RecentTasksList$b;->b:Z

    return-void
.end method


# virtual methods
.method a(IZ)Z
    .locals 1

    iget v0, p0, Lcom/zui/quickstep/RecentTasksList$b;->a:I

    if-ne v0, p1, :cond_1

    iget-boolean p0, p0, Lcom/zui/quickstep/RecentTasksList$b;->b:Z

    if-eqz p0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
