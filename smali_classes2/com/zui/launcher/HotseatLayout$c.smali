.class Lcom/zui/launcher/HotseatLayout$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/HotseatLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:I

.field c:I

.field d:I

.field final synthetic e:Lcom/zui/launcher/HotseatLayout;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/HotseatLayout;ILandroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/HotseatLayout$c;->e:Lcom/zui/launcher/HotseatLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/zui/launcher/HotseatLayout$c;->b:I

    iput-object p3, p0, Lcom/zui/launcher/HotseatLayout$c;->a:Landroid/view/View;

    iput p4, p0, Lcom/zui/launcher/HotseatLayout$c;->c:I

    iput p5, p0, Lcom/zui/launcher/HotseatLayout$c;->d:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ReorderAlarmListener dragIndex = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  mode = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/zui/launcher/HotseatLayout;->g0(Lcom/zui/launcher/HotseatLayout;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/zui/launcher/Alarm;)V
    .locals 3

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayout$c;->e:Lcom/zui/launcher/HotseatLayout;

    iget v0, p0, Lcom/zui/launcher/HotseatLayout$c;->c:I

    invoke-static {p1, v0}, Lcom/zui/launcher/HotseatLayout;->h0(Lcom/zui/launcher/HotseatLayout;I)I

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayout$c;->e:Lcom/zui/launcher/HotseatLayout;

    iget v0, p0, Lcom/zui/launcher/HotseatLayout$c;->b:I

    iget-object v1, p0, Lcom/zui/launcher/HotseatLayout$c;->a:Landroid/view/View;

    iget p0, p0, Lcom/zui/launcher/HotseatLayout$c;->d:I

    const/4 v2, -0x1

    invoke-static {p1, v0, v1, p0, v2}, Lcom/zui/launcher/HotseatLayout;->i0(Lcom/zui/launcher/HotseatLayout;ILandroid/view/View;II)V

    return-void
.end method
