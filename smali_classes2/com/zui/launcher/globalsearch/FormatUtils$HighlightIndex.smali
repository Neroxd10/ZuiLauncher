.class public Lcom/zui/launcher/globalsearch/FormatUtils$HighlightIndex;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/globalsearch/FormatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HighlightIndex"
.end annotation


# instance fields
.field public final end:I

.field public final start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/globalsearch/FormatUtils$HighlightIndex;->start:I

    iput p2, p0, Lcom/zui/launcher/globalsearch/FormatUtils$HighlightIndex;->end:I

    return-void
.end method
