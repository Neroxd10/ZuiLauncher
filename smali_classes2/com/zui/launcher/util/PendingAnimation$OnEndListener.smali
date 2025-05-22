.class public Lcom/zui/launcher/util/PendingAnimation$OnEndListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/util/PendingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnEndListener"
.end annotation


# instance fields
.field public isSuccess:Z

.field public logAction:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->isSuccess:Z

    iput p2, p0, Lcom/zui/launcher/util/PendingAnimation$OnEndListener;->logAction:I

    return-void
.end method
