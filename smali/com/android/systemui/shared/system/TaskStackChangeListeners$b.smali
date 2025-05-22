.class Lcom/android/systemui/shared/system/TaskStackChangeListeners$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/TaskStackChangeListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:I

.field final d:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$b;->a:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$b;->b:I

    iput p3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$b;->c:I

    iput p4, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$b;->d:I

    return-void
.end method
